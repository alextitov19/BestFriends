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
import PhotosUI



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
    @State private var notificationsShowing = false
    @State private var loadingShowing = false
    @State private var isAtMaxScale = false
    @State private var thereAlreadyisARoom = false
    @State private var existingRoomId = ""
    @State private var cantAddMoreFriends = false
    @State private var startPos : CGPoint = .zero
    @State private var isSwipping = true
    @State var showingChatRooms = false
    
    
    private var rooms: [Room]
    
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    
    private let randomOffsets : [CGFloat] = [CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140)]
    //    @State private var inviteMode = false
    
    private let starTimings = [1.0, 2.0, 4.0, 4.5, 5.0]
    
    @State private var selectedFriends = []
    
    @State var idsToInvite: [String] = []
    
    var userDataSource = UserDataSource()
    
    let firebaseDataSource = FirebaseDataSource()
    
    @EnvironmentObject var sessionManager: SessionManager
    
    init() {
        if userDataSource.doesMyUserExist() {
            let foo = userDataSource.getCurrentUser()
            self.USS = UserSubscriptionService(user: foo)
            self.rooms = []
            
            USS.createSubscription()
            
            for id in USS.user.rooms {
                self.rooms.append(RoomDataSource().getRoom(id: id))
            }
            
        } else {
            fatalError()
        }
    }
    
    private func reloadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            
            print("Reloading...")
            getFriends()
            userDataSource.setOnlineStatus(isOnline: true)
            let possibleRooms = USS.user.invitedRooms
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
            
            if USS.user.friends.count > 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + starTimings[USS.user.friends.count - 1] + 1.0) { inviteClicked() }
                DispatchQueue.main.asyncAfter(deadline: .now() + 12.0) { inviteClicked() }
            }
        }
    }
    
    //    let user: AuthUser
    
    var body: some View {
        ZStack {
            Image("HomeBackground3")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .gesture(DragGesture()
                            .onChanged { gesture in
                                if self.isSwipping {
                                    self.startPos = gesture.location
                                    self.isSwipping.toggle()
                                }
                            }
                            .onEnded { gesture in
                                let xDist =  abs(gesture.location.x - self.startPos.x)
                                let yDist =  abs(gesture.location.y - self.startPos.y)
                                if self.startPos.x > gesture.location.x && yDist < xDist {
                                    //Swipe left recognized
                                    print("Swipe left")
                                    withAnimation {
                                        showingChatRooms.toggle()
                                    }
                                }
                                self.isSwipping.toggle()
                            }
                )
            
            VStack {
                ForEach(stars.indices, id: \.self) { index in
                    Button(action: {
                        print("tap")
                        if membersOfNewRoom.contains(stars[index].id) {
                            membersOfNewRoom.remove(at: membersOfNewRoom.firstIndex(of: stars[index].id)!)
                            stars[index].image = Image(uiImage: UIImage(named: "starPurple")!)
                            print("Color change 1")
                            stars[index].isSpinning = false
                            stars[index].hidingName = false
                        } else {
                            membersOfNewRoom.append(stars[index].id)
                            stars[index].image = Image(uiImage: UIImage(named: "starBlue")!)
                            print("Color change 2")
                            stars[index].isSpinning = true
                            stars[index].hidingName = true
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
                        if USS.user.friends.count < 5 {
                            self.showingActionSheet = true
                        } else {
                            cantAddMoreFriends = true
                        }
                    }) {
                        Image("addFriend")
                            .resizable()
                            .frame(width: 135, height: 135)
                            .scaledToFill()
                            .scaleEffect(isAtMaxScale ? 0.3 : 1.1)
                            .padding(10)
                            .onAppear {
                                if USS.user.friends.count < 1 {
                                    withAnimation(self.animation, {
                                        self.isAtMaxScale.toggle()
                                    })
                                }
                            }
                            .sheet(isPresented: $showingSheet) {
                                QRCodeView(image: myQRCode)
                            }
                            .sheet(isPresented: $showingAddFriendInstructions) {
                                AddFriendSteps()
                            }
                            .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                                ImagePicker(image: self.$inputImage, sourceType: .photoLibrary)
                            }
                    }
                    .actionSheet(isPresented: $showingActionSheet) {
                        ActionSheet(title: Text("Add up to 5 Friends with secret QR codes"), message: Text("There's a couple extra steps - but we keep trolls and unwanted DMs & images out. There's NO user search - strangers can't find you, EVER!"), buttons: [
                           
                            .default(Text("How to Add Friends")) { self.showingAddFriendInstructions = true },
                            
                            .default(Text("Get my QR code")) { showMyQR() },
                            .default(Text("My Gallery")) {
                                let photos = PHPhotoLibrary.authorizationStatus()
                                if photos == .notDetermined {
                                    PHPhotoLibrary.requestAuthorization({status in
                                        if status == .authorized{
                                            self.showingImagePicker = true
                                            
                                        } else {}
                                    })
                                } else {
                                    self.showingImagePicker = true
                                }
                            },
                            
                                .default(Text("When finished - swipe 'Left' to enter Chat")) { self.showingAddFriendInstructions = true },
                            
                            
                            .cancel()
                        ])
                    }
                    .padding(10)
                    
                    Spacer()
                }
            }
            
            if membersOfNewRoom.count > 0 {
                Button(action: {
                    
                    if membersOfNewRoom != [] {
                        withAnimation {
                            invitingFriends = false
                            for index in 0..<stars.count {
                                stars[index].image = Image(uiImage: UIImage(named: "starPurple")!)
                                stars[index].hidingName = true
                            }
                            membersOfNewRoom.append(USS.user.id)
                            
                            membersOfNewRoom = membersOfNewRoom.uniqued()
                            
                            let roomid = userDataSource.checkIfRoomExists(memberids: membersOfNewRoom)
                            if roomid.count > 0 {
                                existingRoomId = roomid
                                thereAlreadyisARoom = true
                            } else {
                                loadingShowing = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    inviteNewRoom()
                                }
                            }
                            
                        }
                    } else {
                        withAnimation {
                            invitingFriends = false
                        }
                        for index in 0..<stars.count {
                            stars[index].image = Image(uiImage: UIImage(named: "starPurple")!)
                            stars[index].hidingName = true
                        }
                    }
                    
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
                .transition(.scale)
            }
            
            
            
            VStack {
                if USS.user.pendingNotifications.count > 0 && notificationsShowing == true {
                    ForEach(USS.user.pendingNotifications.reversed(), id: \.self) { foo in
                        Text(foo)
                            .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            .font(.system(size: 17, weight: .regular))
                            .padding()
                    }
                }
            }
            .background(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
            .cornerRadius(30)
            .transition(.scale)
            
            if thereAlreadyisARoom {
                VStack {
                    Text("There already is a chat room with all the friends you've selected. Do you want to use that one or make a new chat room?")
                        .foregroundColor(.white)
                        .font(.system(size: 22, weight: .thin))
                        .multilineTextAlignment(.center)
                        .padding(30)
                    
                    HStack {
                        Button(action: {
                            loadingShowing = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                inviteNewRoom()
                            }
                        }) {
                            Text("Make new")
                                .frame(width: 150, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 20))
                                .background(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        .padding(20)
                        
                        Button(action: {
                            loadingShowing = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                inviteOldRoom(roomid: existingRoomId)
                            }
                        }) {
                            Text("Use existing")
                                .frame(width: 150, height: 50, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 20))
                                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        .padding(20)
                    }
                }
            }
            
            if cantAddMoreFriends {
                Text("You can't add more than 5 friends")
                    .font(.title)
                    .foregroundColor(.red)
            }
            
            if loadingShowing == true {
                ZStack {
                    Color(#colorLiteral(red: 0.6986119747, green: 0.2623180151, blue: 1, alpha: 1))
                        .ignoresSafeArea()
                    
                    Image("FatGuy")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .scaledToFill()
                        .offset(y: -100)
                    
                    Text("Loading...")
                        .frame(width: 200, height: 40, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 30, weight: .ultraLight))
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 75)
                                .stroke(Color.white, lineWidth: 1)
                        )
                        .offset(y: 100)
                    
                }
            }
            if showingChatRooms {
                ChatRoomsView(showingChatRooms: $showingChatRooms, user: USS.user, rooms: rooms)
                    .animation(.easeInOut(duration: 2.0))
                    .transition(.move(edge: .trailing))
            }
        }
        .fullScreenCover(isPresented: $isShakingCoolPresented, content: ShakingCoolFullScreenView.init)
        .onAppear(perform: reloadData)
        .onShake {
            AnalyticsDataSource().recordPhoneGotShakenEvent()
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
        if let features = detectQRCode(image), !features.isEmpty {
            print("Got into if")
            for case let row as CIQRCodeFeature in features {
                guard let uid = row.messageString as String? else { return }
                print("Preparing to send to: ", uid)
                addFriend(id: uid)
                DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
                    sessionManager.reloadToPage(page: "home")
                }
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
        var friends = USS.user.friends
        friends.shuffle()
        friendIDs = friends
        displayStars()
    }
    
    private func displayStars() {
        print("Friend count: ", friendIDs.count)
        
        for index in friendIDs.indices {
            DispatchQueue.main.asyncAfter(deadline: .now() + starTimings[index]) {
                
                let user = userDataSource.getUser(id: friendIDs[index])
                guard let initial = user.lastName.first else { return }
                var name = user.firstName + " "
                name.append(initial)
                let star = Star(id: user.id, name: name)
                print("Successfully added a star for user: ", user.id)
                stars.append(star)
            }
        }
    }
    
    private func inviteClicked() {
        withAnimation {
            invitingFriends = true
        }
        for index in 0..<stars.count {
            stars[index].hidingName = false
        }
    }
    
    private func inviteNewRoom() {
        if membersOfNewRoom != [] {
            membersOfNewRoom = membersOfNewRoom.uniqued()
            var name = ""
            for id in membersOfNewRoom {
                let user = userDataSource.getUser(id: id)
                name.append(user.firstName + ", ")
            }
            name.removeLast()
            name.removeLast()
            
            print("Members of chat room: ", membersOfNewRoom)
            
            let room = Room(name: name, creatorID: USS.user.id, members: membersOfNewRoom, timeUpdated: Int(Date().timeIntervalSince1970))
            print("RoomID: ", room.id)
            RoomDataSource().createRoom(room: room)
            userDataSource.addRoom(room: room)
            let messageBody = "Members: " + room.name
            for id in membersOfNewRoom {
                let user = userDataSource.getUser(id: id)
                if user.notificationsLP == true && user.id != USS.user.id {
                    let token = user.deviceFCMToken
                    PushNotificationSender().sendPushNotification(token: token, title: "\(USS.user.firstName) needs to talk!", body: messageBody)
                }
            }
            membersOfNewRoom = []
            sessionManager.chat(room: room)
        }
    }
    
    private func inviteOldRoom(roomid: String) {
        if membersOfNewRoom != [] {
            membersOfNewRoom = membersOfNewRoom.uniqued()
            let room = RoomDataSource().getRoom(id: roomid)
            let messageBody = "Members: " + room.name
            for id in membersOfNewRoom {
                let user = userDataSource.getUser(id: id)
                if user.notificationsLP == true && user.id != USS.user.id {
                    let token = user.deviceFCMToken
                    PushNotificationSender().sendPushNotification(token: token, title: "\(USS.user.firstName) needs to talk!", body: messageBody)
                }
            }
            membersOfNewRoom = []
            sessionManager.chat(room: room)
        }
    }
}


