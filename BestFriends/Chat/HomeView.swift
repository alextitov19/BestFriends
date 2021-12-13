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
    
    // Main components...
    private var user: User
    var userDataSource = UserDataSource()
    @State private var rooms: [Room] = []
    var roomDataSource = RoomDataSource()
    @EnvironmentObject var sessionManager: SessionManager
    
    // Adding a friend...
    @State private var showingSheet = false
    @State private var showingActionSheet = false
    @State private var myQRCode: UIImage = UIImage()
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    
    // Inviting to a room
    @State private var membersOfNewRoom: [String] = []
    @State private var stars: [Star] = []
    @State private var invitingFriends = false
    @State var idsToInvite: [String] = []
    @State private var selectedFriends = []
    
    // Other popovers...
    @State private var isShakingCoolPresented = false
    @State private var showingAddFriendInstructions = false
    @State private var loadingShowing = false
    //    @State private var thereAlreadyisARoom = false
    //    @State private var existingRoomId = ""
    
    // For swiping up/down and scrolling the BlurView
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    
    init() {
        self.user = userDataSource.getCurrentUser()
    }
    
    private func reloadData() {
        DispatchQueue.global(qos: .userInitiated).async() {
            
            print("Reloading...")
            rooms = RoomDataSource().getRooms()
            let possibleRooms = user.invitedRooms
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
                    if user.id != " " {
                        PushNotificationManager(userID: user.id).updateFirestorePushTokenIfNeeded()
                    }
                }
            }
            
            if user.friends.count > 0 {
                displayStars()
                DispatchQueue.global(qos: .userInitiated).asyncAfter(deadline: .now() + 1.0) { inviteClicked() }
                DispatchQueue.global(qos: .userInitiated).asyncAfter(deadline: .now() + 12.0) { inviteClicked() }
            }
        }
    }
    
    var body: some View {
        
        ZStack {
            
            // Background Image...
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            // Stars animation...
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            // MARK: Stars and star logic...
            VStack {
                HStack {
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
                        .padding()
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
                                membersOfNewRoom.append(user.id)
                                
                                membersOfNewRoom = membersOfNewRoom.uniqued()
                                
                                let roomid = userDataSource.checkIfRoomExists(memberids: membersOfNewRoom)
                                if roomid != nil {
                                    inviteOldRoom(roomid: roomid!)
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
                    .transition(.scale)
                }
                
                Spacer()
            }
            
            // MARK: Scrollable view that shows chat rooms...
            
            // For getting height for Drag Gesture...
            GeometryReader { proxy -> AnyView in
                
                let height = proxy.frame(in: .global).height
                let width = proxy.frame(in: .global).width
                
                return AnyView(
                    
                    ZStack {
                        
                        BlurView(style: .systemThinMaterialDark)
                            .clipShape(CustomCorner(corners: [.topLeft, .topRight], radius: 30))
                        
                        VStack(alignment: .center) {
                            
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 60, height: 4)
                                .padding(.top)
                            
                            //MARK: ScrollView content...
                            
                            ForEach(rooms.indices, id: \.self) { index in
                                
                                RoomRow(room: rooms[index])
                                    .onTapGesture {
                                        sessionManager.chat(room: rooms[index])
                                    }
                                    .padding(.horizontal, 15)
                                    .padding(.top, 15)
                                
                                CustomDivider(color: Color.white)
                                    .padding(.horizontal, 30)
                            }
                        }
                        .frame(maxHeight: .infinity, alignment: .top)
                        
                        // Action buttons...
                        HStack(alignment: .center) {
                            
                            // Invite button...
                            if user.friends.count < 5 {
                                
                                Button(action: {
                                    //Display invite menu
                                    showingActionSheet = true
                                    
                                }) {
                                    Image("inviteWhite")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .scaledToFill()
                                        .sheet(isPresented: $showingSheet) {
                                            QRCodeView(image: myQRCode)
                                        }
                                        .sheet(isPresented: $showingAddFriendInstructions) {
                                            HowToAddFriends()
                                        }
                                        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                                            ImagePicker(image: self.$inputImage, sourceType: .photoLibrary)
                                        }
                                }
                                .actionSheet(isPresented: $showingActionSheet) {
                                    ActionSheet(title: Text("Add up to 5 Friends with secret QR codes"), buttons: [
                                        
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
                                        .cancel()
                                    ])
                                }
                            } else {
                                Spacer()
                                    .frame(width: 40, height: 0)
                            }
                            
                            Button(action: {
                                sessionManager.showHideouts()
                            }) {
                                Text("Personal")
                                    .frame(width: 200, height: 50)
                                    .foregroundColor(.white)
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple7)
                                    .cornerRadius(20)
                            }
                            .padding(.horizontal)
                            
                            Image("settings icon")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                                .onTapGesture {
                                    sessionManager.showSettings()
                                }
                        }
                        .offset(y: -height * 0.55)
                        
                        
                    }
                        .frame(width: width - 70)
                        .padding(.horizontal, 35)
                        .offset(y: height - 100)
                        .offset(y: -offset > 0 ? -offset <= (height - 100) ? offset : -(height - 100) : 0)
                        .gesture(DragGesture().updating($gestureOffset, body: {
                            value, out, _ in
                            
                            out = value.translation.height
                            onDragChange()
                        }).onEnded({ value in
                            
                            let maxHeight = height - 150
                            withAnimation {
                                
                                // Loginc conditions for moving states...
                                // Up, Down, or Mid...
                                if -offset > 100 && -offset < maxHeight * 0.6 {
                                    // Mid...
                                    offset = -(maxHeight / 3)
                                }
                                else if -offset > maxHeight * 0.6 {
                                    // Up...
                                    offset = -maxHeight
                                }
                                else  if -offset > 50 {
                                    // Down...
                                    offset = 0
                                }
                            }
                            
                            // Storing last offset so the gesture can continue from last position...
                            lastOffset = offset
                        }))
                )
            }
            .ignoresSafeArea()
            
            // MARK: Content shows when loading into a chat room
            if loadingShowing == true {
                ZStack {
                    Image("purpleBackground")
                        .resizable()
                        .scaledToFill()
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
        
        let userID = user.id
        
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
    }
    
    
    private func displayStars() {
        DispatchQueue.global(qos: .userInitiated).async() {
            for id in user.friends {
                
                let friend = userDataSource.getUser(id: id)
                guard let initial = friend.lastName.first else { return }
                var name = friend.firstName + " "
                name.append(initial)
                let star = Star(id: friend.id, name: name)
                print("Successfully added a star for user: ", friend.id)
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
            
            let room = Room(name: name, creatorID: user.id, members: membersOfNewRoom, timeUpdated: Int(Date().timeIntervalSince1970))
            print("RoomID: ", room.id)
            RoomDataSource().createRoom(room: room)
            userDataSource.addRoom(room: room)
            let messageBody = "Members: " + room.name
            for id in membersOfNewRoom {
                let user = userDataSource.getUser(id: id)
                if user.notificationsLP == true && user.id != user.id {
                    let token = user.deviceFCMToken
                    PushNotificationSender().sendPushNotification(token: token, title: "\(user.firstName) needs to talk!", body: messageBody)
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
                if user.notificationsLP == true && user.id != user.id {
                    let token = user.deviceFCMToken
                    PushNotificationSender().sendPushNotification(token: token, title: "\(user.firstName) needs to talk!", body: messageBody)
                }
            }
            membersOfNewRoom = []
            sessionManager.chat(room: room)
        }
    }
    
    // Called whenever Drag Gesture updates (when dragged)...
    private func onDragChange() {
        DispatchQueue.main.async {
            self.offset = lastOffset + gestureOffset
        }
    }
}


