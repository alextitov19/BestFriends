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
    
    @State private var invitingFriends = false
    @State private var isShakingCoolPresented = false
    @State private var showingAddFriendInstructions = false
    @State private var isAdViewPresented = false
    @State private var isReviewPopupShowing = false //change to true to show popup
    
    private let randomOffsets : [CGFloat] = [CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140)]
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
                        Image("chat-add icon")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    
                    Spacer()
                        .frame(width: 50)
                }
                
                Spacer()
                    .frame(height: 10)
                
                ForEach(stars.indices, id: \.self) { index in
                    Button(action: {
                        print("tap")
                        if invitingFriends {
                            if friendIDsToInvite.contains(stars[index].id) {
                                friendIDsToInvite.remove(at: friendIDsToInvite.firstIndex(of: stars[index].id)!)
                                friendNamesToInvite.remove(at: friendNamesToInvite.firstIndex(of: stars[index].name)!)
                                stars[index].image = Image(uiImage: UIImage(named: "starBlue")!)
                                print("Color change 1")
                            } else {
                                friendIDsToInvite.append(stars[index].id)
                                friendNamesToInvite.append(stars[index].name)
                                stars[index].image = Image(uiImage: UIImage(named: "starGreen")!)
                                print("Color change 2")
                            }
                        }
                    }) {
                        stars[index]
                    }
                    .offset(x: randomOffsets[index])
                    .padding(20)
                }
                
                Spacer()
                
                HStack {
                    
                    
                    Button(action: {
                        //Display invite menu
                        self.showingActionSheet = true
                        
                    }) {
                        Image("person-add icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                    }
                    .actionSheet(isPresented: $showingActionSheet) {
                        ActionSheet(title: Text("Add Friends"), message: Text("Add up to '5' friends via QR codes. You MUST upgrade your OS on your iPhone to 14.5 or higher for QR codes to work."), buttons: [
                            .default(Text("Get my QR code")) { showMyQR() },
                            .default(Text("My Gallery")) { self.showingImagePicker = true },
                            // Rob added a third option in the Add Friends popup on Landing page
                            .default(Text("Add Friend Instructions")) { self.showingAddFriendInstructions = true },
                            //
                            .cancel()
                        ])
                    }                          .padding(10)
                    
                    
                    
                    Image("chat icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showRooms()
                        }
                        .padding(10)
                        .sheet(isPresented: $showingAddFriendInstructions) {
                            AddFriendSteps()
                        }
                    
                    Image("happy-face icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showSmileNotes()
                        }
                        .padding(10)
                        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                            ImagePicker(image: self.$inputImage)
                        }
                    
                    Image("settings icon")
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
            .sheet(isPresented: $showingSheet) {
                QRCodeView(image: myQRCode)
            }
            .isHidden(!isReviewPopupShowing)
            
            ForEach(invitedChatRooms, id: \.self.roomID) { invitedRoom in
                NotificationPreLoad(roomID: invitedRoom.roomID)
            }
            
            
        }
        .fullScreenCover(isPresented: $isShakingCoolPresented, content: ShakingCoolFullScreenView.init)
        .onAppear(perform: reloadData)
        .onShake {
            isShakingCoolPresented = true
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
        invitingFriends = true
        for index in 0..<stars.count {
            stars[index].image = Image(uiImage: UIImage(named: "starBlue")!)
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            invitingFriends = false
            for index in 0..<stars.count {
                stars[index].image = Image(uiImage: UIImage(named: "starPurple")!)
                
            }
            inviteSelectedFriends()
        }
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
            var body = "with: "
            for id in friendIDsToInvite {
                let user = userDataSource.getUser(id: id)
                body.append(user.firstName)
                body.append(", ")
            }
            body.removeLast()
            body.removeLast()
            
            for id in friendIDsToInvite {
                userDataSource.addRoom(userID: id, roomID: room.id)
                let token = userDataSource.getUser(id: id).deviceFCMToken
                PushNotificationSender().sendPushNotification(token: token, title: "\(userDataSource.getCurrentUser().firstName) needs to talk. Please let them know When can you talk on BestFriends", body: body)
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


