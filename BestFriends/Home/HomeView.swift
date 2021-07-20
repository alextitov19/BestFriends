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



struct HomeView: View {
    
    @ObservedObject var USS: UserSubscriptionService
    
    @State private var showingSheet = false
    @State private var showingActionSheet = false
    @State private var myQRCode: UIImage = UIImage()
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var friendIDs: [String] = []
    @State private var membersOfNewRoom: [String] = []
    @State private var stars: [Star] = []
    @State private var invitingFriends = false
    @State private var isShakingCoolPresented = false
    @State private var isThreeDotsPresented = false
    @State private var showingAddFriendInstructions = false
    
    private let randomOffsets : [CGFloat] = [CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140)]
    //    @State private var inviteMode = false
    
    @State private var selectedFriends = []
    
    @State var idsToInvite: [String] = []
    
    var userDataSource = UserDataSource()
    
    let firebaseDataSource = FirebaseDataSource()
    
    @EnvironmentObject var sessionManager: SessionManager
    
    init() {
        let foo = userDataSource.getCurrentUser()
        self.USS = UserSubscriptionService(user: foo)
        USS.createSubscription()
    }
    
    private func reloadData() {
        print("Reloading...")
        getFriends()
        userDataSource.setOnlineStatus(isOnline: true)
        let possibleRooms = USS.user.invitedRooms ?? []
        if possibleRooms.count > 0 {
            for i in 0..<possibleRooms.count {
                if possibleRooms[i].timer == nil {
                    sessionManager.userHasBeenInvitedToChat(invitedRoomId: possibleRooms[i].roomID)
                }
            }
        }
        
        Messaging.messaging().token { token, error in
            if let error = error {
                print("Error fetching FCM registration token: \(error)")
            } else if let token = token {
                print("FCM registration token: \(token)")
                if USS.user.id != " " {
                    PushNotificationManager(userID: USS.user.id).updateFirestorePushTokenIfNeeded()
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
                ForEach(stars.indices, id: \.self) { index in
                    Button(action: {
                        print("tap")
                        if invitingFriends {
                            if membersOfNewRoom.contains(stars[index].id) {
                                membersOfNewRoom.remove(at: membersOfNewRoom.firstIndex(of: stars[index].id)!)
                                stars[index].image = Image(uiImage: UIImage(named: "starBlue")!)
                                print("Color change 1")
                                stars[index].isSpinning = false
                            } else {
                                membersOfNewRoom.append(stars[index].id)
                                stars[index].image = Image(uiImage: UIImage(named: "starGreen")!)
                                print("Color change 2")
                                stars[index].isSpinning = true
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
                        ActionSheet(title: Text("Add Friends"), message: Text("Add up to '5' friends via QR codes."), buttons: [
                            .default(Text("Get my QR code")) { showMyQR() },
                            .default(Text("My Gallery")) { self.showingImagePicker = true },
                            // Rob added a third option in the Add Friends popup on Landing page
                            .default(Text("Add Friend Instructions")) { self.showingAddFriendInstructions = true },
                            //
                            .cancel()
                        ])
                    }
                    .padding(25)
                    
                    Image("chat icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.showRooms()
                        }
                        .padding(8)
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
                        .padding(8)
                    
                    Button(action: { inviteClicked() }) {
                        Image("chat-add icon")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    
                    .sheet(isPresented: $showingSheet) {
                        QRCodeView(image: myQRCode)
                    }
                    .padding(25)
                    
                }
                .ignoresSafeArea()
                .offset(y: 35)
            }
            
            if invitingFriends == true {
                Button(action: {
                    invitingFriends = false
                    for index in 0..<stars.count {
                        stars[index].image = Image(uiImage: UIImage(named: "starPurple")!)
                        stars[index].hidingName = true
                    }
                    inviteSelectedFriends()
                }) {
                    Text("Invite")
                        .frame(width: 150, height: 40, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30, weight: .ultraLight))
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 75)
                                .stroke(Color.white, lineWidth: 1)
                        )
                }
                .offset(y: 300)
                .transition(.move(edge: .bottom))
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
        
        let userID = USS.user.id
        
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
    
    private func loadImage() {
        guard let inputImage = inputImage else { return }
        print("Got the image")
        displayQRString(image: inputImage)
        
    }
    
    
    
    private func detectQRCode(_ image: UIImage?) -> [CIFeature]? {
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
                sleep(2)
                sessionManager.reloadToPage(page: "home")
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
        guard var friends = USS.user.friends else { return }
        friends.shuffle()
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
            let star = Star(id: user.id, name: name)
            print("Successfully added a star for user: ", user.id)
            stars.append(star)
        }
    }
    
    private func inviteClicked() {
        withAnimation {
            invitingFriends = true
        }
        for index in 0..<stars.count {
            stars[index].image = Image(uiImage: UIImage(named: "starBlue")!)
            stars[index].hidingName = false
        }
    }
    
    private func inviteSelectedFriends() {
        if membersOfNewRoom != [] {
            membersOfNewRoom.append(USS.user.id)
            var name = ""
            for id in membersOfNewRoom {
                let user = userDataSource.getUser(id: id)
                name.append(user.firstName + ", ")
            }
            name.removeLast()
            name.removeLast()
            
            print("Members of chat room: ", membersOfNewRoom)
            
            let room = Room(name: name, creatorID: USS.user.id, members: membersOfNewRoom, blueMode: false)
            print("RoomID: ", room.id)
            RoomDataSource().createRoom(room: room)
            userDataSource.addRoom(room: room)
            let messageBody = "Members: " + room.name
            for id in membersOfNewRoom {
                let user = userDataSource.getUser(id: id)
                if user.notificationsLP == true {
                    let token = user.deviceFCMToken
                    PushNotificationSender().sendPushNotification(token: token, title: "\(USS.user.firstName) needs to talk!", body: messageBody)
                }
            }
            membersOfNewRoom = []
            sleep(3)
            sessionManager.chat(room: room)
        }
    }
}


