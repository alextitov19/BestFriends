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
    @State private var notificationsShowing = false
    @State private var loadingShowing = false
    
    private let randomOffsets : [CGFloat] = [CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140), CGFloat.random(in: -140..<140)]
    //    @State private var inviteMode = false
    
    private let starTimings = [1.0, 2.0, 4.0, 4.5, 5.0]
    
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
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            
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
            
            if USS.user.friends != nil {
                DispatchQueue.main.asyncAfter(deadline: .now() + starTimings[USS.user.friends!.count - 1] + 0.5) { inviteClicked() }
            DispatchQueue.main.asyncAfter(deadline: .now() + 12.0) { inviteClicked() }
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
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Spacer()
                            .frame(width: 500)
                        
                        Button(action: {
                            //Display invite menu
                            self.showingActionSheet = true
                            
                        }) {
                            Image("person-add icon")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .sheet(isPresented: $showingSheet) {
                                    QRCodeView(image: myQRCode)
                                }
                            
                        }
                        .actionSheet(isPresented: $showingActionSheet) {
                            ActionSheet(title: Text("Add Friends"), message: Text("Add up to '5' friends via QR codes."), buttons: [
                                .default(Text("Get my QR code")) { showMyQR() },
                                .default(Text("My Gallery")) { self.showingImagePicker = true },
                                // Rob added a third option in the Add Friends popup on Landing page
                                .default(Text("How to Add Friends")) { self.showingAddFriendInstructions = true },
                                //
                                .cancel()
                            ])
                        }
                        .padding(0)
                        
                        Image("chat icon")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .onTapGesture {
                                loadingShowing = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    sessionManager.showRooms()
                                }
                            }
                            .padding(5)
                            .sheet(isPresented: $showingAddFriendInstructions) {
                                AddFriendSteps()
                            }
                        
                        Image("happy-face icon")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .onTapGesture {
                                loadingShowing = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    sessionManager.showSmileNotes()
                                }
                            }
                            .padding(5)
                            .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                                ImagePicker(image: self.$inputImage)
                            }
                        
                        Image("whitePhone")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .onTapGesture {
                                loadingShowing = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    sessionManager.showShakingCool()
                                }
                            }
                            .padding(5)
                        
                        Image("settings icon")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .onTapGesture {
                                loadingShowing = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    sessionManager.showSettings()
                                }
                            }
                            .padding(5)
                        
                        Image("horn")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .onTapGesture {
                                sessionManager.showSettings()
                            }
                            .padding(5)
                        
                        Image("bell")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .onTapGesture {
                                withAnimation {
                                    notificationsShowing.toggle()
                                    if notificationsShowing == false {
                                        var user = USS.user
                                        user.pendingNotifications = []
                                        userDataSource.updateUser(user: user)
                                    }
                                }
                            }
                        
                        Spacer()
                            .frame(width: 100)
                        
                    }
                }
            }
            
            if membersOfNewRoom.count > 0 {
                Button(action: {
                    if membersOfNewRoom != [] {
                        withAnimation {
                            loadingShowing = true
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
                .offset(y: 330)
                .transition(.scale)
            }
            
            if loadingShowing == true {
                ZStack {
                    Color(#colorLiteral(red: 0.6986119747, green: 0.2623180151, blue: 1, alpha: 1))
                        .ignoresSafeArea()
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                invitingFriends = false
                                for index in 0..<stars.count {
                                    stars[index].image = Image(uiImage: UIImage(named: "starPurple")!)
                                    stars[index].hidingName = true
                                }
                                inviteSelectedFriends()
                            }
                        }
                    
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
            
            VStack {
                if USS.user.pendingNotifications != nil && notificationsShowing == true {
                    ForEach(USS.user.pendingNotifications!.reversed(), id: \.self) { foo in
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
            
            if USS.user.needIntro {
                IntroPopups()
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


