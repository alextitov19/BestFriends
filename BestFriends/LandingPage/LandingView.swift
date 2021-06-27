//
//  SessionView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI
import Amplify
import AVKit
import CoreImage.CIFilterBuiltins
import Firebase



struct LandingView: View {
    
    @State private var showingSheet = false
    @State private var showingActionSheet = false
    @State private var myQRCode: UIImage = UIImage()
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var friendIDs: [String] = []
    @State private var friendIDsToInvite: [String] = []
    @State private var friendNamesToInvite: [String] = []
    @State private var stars: [Star] = []
    @State private var starButtons: [UIButton] = []
    @State private var titleText = ""
    @State private var invitedChatRooms: [InvitedRoom] = []
    
    
    @State private var isShakingCoolPresented = false
    @State private var isAdViewPresented = false
    @State private var isReviewPopupShowing = false //change to true to show popup
    
    
    //    @State private var inviteMode = false
    
    @State private var selectedFriends = []
    
    @State var idsToInvite: [String] = []
    
    var userDataSource = UserDataSource()
    
    let firebaseDataSource = FirebaseDataSource()
    
    
    var myID: String
    
    @EnvironmentObject var sessionManager: SessionManager
    
    private func reloadData() {
        print("Reloading...")
        getFriends()
        userDataSource.setOnlineStatus(isOnline: true)
        let possibleRooms = userDataSource.getCurrentUser().invitedRooms ?? []
        invitedChatRooms = []
        if possibleRooms.count > 0 {
            for i in 0..<possibleRooms.count {
                if possibleRooms[i].timer == nil {
                    invitedChatRooms.append(possibleRooms[i])
                    print("Added")
                }
            }
        }
        
        Messaging.messaging().token { token, error in
            if let error = error {
                print("Error fetching FCM registration token: \(error)")
            } else if let token = token {
                print("FCM registration token: \(token)")
                let user = UserDataSource().getCurrentUser()
                if user.id != " " {
                    PushNotificationManager(userID: user.id).updateFirestorePushTokenIfNeeded()
                }
            }
        }
    }
    
    //    let user: AuthUser
    
    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            PlayerView()
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            
            VStack {
                Text(titleText)
                    .foregroundColor(.white)
                    .font(.title)
                
                HStack {
                    Spacer()
                    
                    Button(action: { inviteClicked() }) {
                        Image("newMessageWhite")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    
                    Spacer()
                        .frame(width: 50)
                }
                
                Spacer()
                    .frame(height: 10)
                
                ForEach(stars, id: \.id) { star in
                    VStack {
                        
                        HStack {
                            
                            Spacer()
                                .frame(width: 100)
                            
                            Button(action: {
                                if friendIDsToInvite.contains(star.id) {
                                    friendIDsToInvite.remove(at: friendIDsToInvite.firstIndex(of: star.id)!)
                                    friendNamesToInvite.remove(at: friendNamesToInvite.firstIndex(of: star.name)!)
                                } else {
                                    friendIDsToInvite.append(star.id)
                                    friendNamesToInvite.append(star.name)
                                }
                            }) { star }
                        }
                        
                        Spacer()
                            .frame(height: 20)
                    }
                }
                
                Spacer()
                
                HStack {
                    
                    
                    Button(action: {
                        //Display invite menu
                        self.showingActionSheet = true
                        
                    }) {
                        Image("inviteWhite")
                            .resizable()
                            .frame(width: 40, height: 40)
                        
                    }
                    .actionSheet(isPresented: $showingActionSheet) {
                        ActionSheet(title: Text("Add Friends"), message: Text("Add up to '5' friends via QR code. Add friends that you trust, confide in and that really care about you - and your happiness."), buttons: [
                            .default(Text("My QR Code")) { showMyQR() },
                            .default(Text("Photo Library")) { self.showingImagePicker = true },
                            .cancel()
                        ])
                    }
                    .sheet(isPresented: $showingSheet) {
                        QRCodeView(image: myQRCode)
                    }
                    .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                        ImagePicker(image: self.$inputImage)
                    }                            .padding(10)
                    
                    
                    
                    Image("messageIconWhite")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showRooms()
                        }
                        .padding(10)
                    
                    //
                    Image("whiteSmiley")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showSmileNotes()
                        }
                        .padding(10)
                    
                    //
                    Image("settingsiconwhite")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showSettings()
                        }
                        .padding(10)
                    
                    
                    Button("Sign Out", action: {sessionManager.signOut()})
                        .padding(10)
                    
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
            VStack {
                Button(action: {
                    isReviewPopupShowing = false
                }) {
                    Text("X")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .frame(alignment: .leading)
                
                ReviewPopup()
                    .padding(20)
            }
            .isHidden(!isReviewPopupShowing)
            
            ForEach(invitedChatRooms, id: \.self.roomID) { invitedRoom in
                NotificationPreLoad(roomID: invitedRoom.roomID)
            }
            
            
        }
        .fullScreenCover(isPresented: $isShakingCoolPresented, content: ShakingCoolFullScreenView.init)
        .fullScreenCover(isPresented: $isAdViewPresented, content: AdViewFullScreen.init)
        .onAppear(perform: reloadData)
        .onShake {
            isAdViewPresented = true
        }
    }
    
    // MARK: QR Code
    
    private func showMyQR() {
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        var QRCode: UIImage?
        
        guard let userID = Amplify.Auth.getCurrentUser()?.username else { return }
        
        let data = Data(userID.utf8)
        filter.setValue(data, forKey: "inputMessage")
        
        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                QRCode = UIImage(cgImage: cgimg)
                myQRCode = QRCode!
            }
        }
        
        showingSheet.toggle()
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        print("Got the image")
        displayQRString(image: inputImage)
        
    }
    
    
    
    func detectQRCode(_ image: UIImage?) -> [CIFeature]? {
        if let image = image, let ciImage = CIImage.init(image: image){
            var options: [String: Any]
            let context = CIContext()
            options = [CIDetectorAccuracy: CIDetectorAccuracyHigh]
            let qrDetector = CIDetector(ofType: CIDetectorTypeQRCode, context: context, options: options)
            if ciImage.properties.keys.contains((kCGImagePropertyOrientation as String)){
                options = [CIDetectorImageOrientation: ciImage.properties[(kCGImagePropertyOrientation as String)] ?? 1]
            } else {
                options = [CIDetectorImageOrientation: 1]
            }
            let features = qrDetector?.features(in: ciImage, options: options)
            return features
            
        }
        return nil
    }
    
    private func displayQRString(image: UIImage) {
        print("Got into display")
        if let features = detectQRCode(image), !features.isEmpty{
            print("Got into if")
            for case let row as CIQRCodeFeature in features{
                guard let uid = row.messageString as String? else { return }
                print("Preparing to send to: ", uid)
                addFriend(id: uid)
            }
        }
    }
    
    //MARK: End of QR Code
    
    private func addFriend(id: String) {
        let user = userDataSource.getUser(id: id)
        print("got the user")
        UserDataSource().addFriend(user: user)
        print("done adding friends")
        getFriends()
    }
    
    
    
    private func getFriends() {
        let user = userDataSource.getUser(id: myID)
        guard let friends = user.friends else { return }
        friendIDs = friends
        displayStars()
    }
    
    private func displayStars() {
        print("Friend count: ", friendIDs.count)
        
        for friendID in friendIDs {
            let user = userDataSource.getUser(id: friendID)
            guard let initial = user.lastName.first else { return }
            var name = user.firstName + " "
            name.append(initial)
            var star = Star(id: user.id, name: name)
            print("Successfully added a star for user: ", user.id)
            stars.append(star)
            
            
        }
    }
    
    
    private func inviteClicked() {
        for index in 0..<stars.count {
            stars[index].image = Image(uiImage: UIImage(named: "starWhite")!)
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            inviteSelectedFriends()
        }
        //        let sender = PushNotificationSender()
        //        sender.sendPushNotification(to: "eUQ_bhgw9E12qeZTEvPs4J:APA91bF7Ctromn1OjgNFpjHUSmpbB3f_bQy3D_x6o7KLISJyYmPqy-7ET6TcSYU6LH2zVMDjkiz3_xMWXdIzQHpUETLNd_Ds4HHwSdxPCvAMj8YvJl_5eGQEob0Z10HLO0rQIG60NUW9", title: "Notification title", body: "Notification body")
    }
    
    private func inviteSelectedFriends() {
        if friendIDsToInvite != [] {
            var name = ""
            for id in friendIDsToInvite {
                name.append(userDataSource.getUser(id: id).firstName)
            }
            print("Inviting selected friends: ", friendIDsToInvite)
            let room = Room(name: name, creatorID: myID, members: friendIDsToInvite, blueMode: false)
            print("RoomID: ", room.id)
            RoomDataSource().createRoom(room: room)
            userDataSource.addRoom(userID: myID, roomID: room.id)
            var body = "Chat with: "
            for id in friendIDsToInvite {
                let user = userDataSource.getUser(id: id)
                body.append(user.firstName)
                body.append(", ")
            }
            body.removeLast()
            body.removeLast()
            
            for id in friendIDsToInvite {
                userDataSource.addRoom(userID: id, roomID: room.id)
                //                let token = userDataSource.getUser(id: id).deviceFCMToken
                //                PushNotificationSender().sendPushNotification(token: token, title: "\(userDataSource.getCurrentUser().firstName) invited you to chat", body: body)
            }
        }
    }
    
    
    
}
















struct LandingView_Previews : PreviewProvider {
    static var previews: some View {
        LandingView(myID: " ")
            .environmentObject(SessionManager())
    }
}


