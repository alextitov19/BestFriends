//
//  MessageRoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/3/21.
//

import SwiftUI
import PhotosUI
import Amplify
import Combine


struct ChatView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @ObservedObject var messageDataSource: MessageDataSource
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var inputImage: UIImage?
    @State private var showingImagePicker = false
    
    @State var stickerPopoverShowing = false
    
    @ObservedObject var textBindingManager = TextBindingManager(limit: 4)
    
    @State var offset: CGFloat = 0
    @State var adButtonsOffset: CGFloat = -270
    @State private var isShakingCoolPresented = false
    
    @State var areAdsHidden = true
    @State var currentAdIndex = 0
    @State var currentLink = ""
    @State var currentLikes = 0
    @State var hasLiked = false
    @State var hasClickedLink = false
    @Environment(\.openURL) var openURL
    //    @State var adButtonsHidden = true
    //    @State var roomname = ""
    //    @State var presentingDashboard = false
    @State var showingNotifications = false
    @State private var notificationsShowing = false
    @State private var isAtMaxScale = false
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)
    @ObservedObject var USS: UserSubscriptionService
    
    
    @State private var newPinPopupShowing = false
    @State private var areNotificationsShown = false
    
    var adIDs: [String] = []
    
    let adDataSource = AdDataSource()
    let userDataSource = UserDataSource()
    let backgroundImage: Image?
    let index: Int
    var user: User
    var room: Room
    var lastRead: Int?
    var timer = Timer.publish(every: 60, on: .main, in: .common).autoconnect()
    private let initialTime = Date()
    
    @State private var adButtonOffset: Float = 0
    
    
    init(room: Room) {
        print("Did init")
        let foo = UserDataSource().getCurrentUser()
        self.user = foo
        self.USS = UserSubscriptionService(user: foo)
        self.messageDataSource = MessageDataSource(room: room)
        self.room = room
        
        
        index = user.background
        if index == -1 {
            self.backgroundImage = Image(uiImage: ImageDataSource().downloadImage(key: user.backgroundImageLink!, rotating: true, tall: true))
        } else {
            self.backgroundImage = nil
        }
        
        
        
        
        
        let adDoc = adDataSource.getAdDocuemnt()
        let ids = adDoc.documents!
        for id in ids {
            self.adIDs.append(id!)
        }
        print("Ad ids: \(adIDs)")
        
        
        USS.createSubscription()
        messageDataSource.createSubscription()
        
    }
    
    private func checkHidden() {
        if user.hiddenRooms.contains(room.id) {
            sessionManager.showPin(room: room)
        }
    }
    
    @State var currentBody: String = ""
    
    
    
    //MARK: Body
    var body: some View {
        
        ZStack{
            //            Image("purpleBackground")
            //                .resizable()
            //                .scaledToFill()
            //                .ignoresSafeArea()
            
            //            Color(.blue)
            //                .ignoresSafeArea()
            
            
            
            switch index {
            case -1:
                GeometryReader { geo in
                    backgroundImage!
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: geo.size.height + 100)
                        .offset(y: -50)
                }
                
            case 0:
                AdPlayerView(name: "FieldFlowers")
                    .ignoresSafeArea()
            case 1:
                AdPlayerView(name: "blueRoad")
                    .ignoresSafeArea()
            case 2:
                AdPlayerView(name: "bull")
                    .ignoresSafeArea()
            case 3:
                AdPlayerView(name: "Skateboard")
                    .ignoresSafeArea()
            default:
                AdPlayerView(name: "FieldFlowers")
                    .ignoresSafeArea()
            }
            
            
            if areAdsHidden == false {
                AdPlayerView(name: self.adIDs[currentAdIndex])
                    .ignoresSafeArea()
            }
            
            VStack {
                HStack { //header
                    Text("< Back")
                        .foregroundColor(.white)
                        .onReceive(timer) { time in
                            print("Showing an ad")
                            showAd()
                        }
                        .onAppear {
                            checkHidden()
                        }
                        .onTapGesture {
                            sessionManager.home()
                        }
                        .onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)) { _ in
                            print("Screenshot taken")
                            sendScreenCaptureNotification(video: false)
                            
                        }
                        .onReceive(NotificationCenter.default.publisher(for: UIScreen.capturedDidChangeNotification)) { _ in
                            print("Screen recording")
                            sendScreenCaptureNotification(video: true)
                        }
                    
                    
                    //                    ZStack {
                    //                        if roomname == "" {
                    //                            Text(room.name)
                    //                                .font(.system(size: 40))
                    //                                .foregroundColor(.white)
                    //                        } else {
                    //                            Text(roomname)
                    //                                .font(.system(size: 40))
                    //                                .foregroundColor(.white)
                    //                        }
                    //
                    //                        TextField("", text: $roomname) { changed in
                    //                            print("Editing...")
                    //                        } onCommit: {
                    //                            print("Uploading new name...")
                    //                            RoomDataSource().updateRoomName(room: room, name: roomname)
                    //                        }
                    //                        .foregroundColor(.clear)
                    //                        .background(Color(.clear))
                    //                        .frame(width:200)
                    //                    }
                    //                    .padding()
                    
                    //                    Text(room.name)
                    //                        .font(.system(size: 16, weight: .light))
                    //                        .frame(width: 200)
                    //                        .multilineTextAlignment(.center)
                    //                        .foregroundColor(.white)
                    
                    Spacer()
                        .frame(width: 200)
                    
                    Image("bell")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .scaleEffect(isAtMaxScale ? 0.5 : 1)
                        .onTapGesture {
                            areNotificationsShown.toggle()
                        }
                        .sheet(isPresented: $areNotificationsShown, content: {
                            NotificationsView()
                        })
                    
                    Button(action: {
                        hideChat()
                    }) {
                        Image("lock-alt")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                }
                
                ScrollViewReader { value in
                    ScrollView(showsIndicators: false) {
                        LazyVStack {
                            ForEach(messageDataSource.room.messages, id: \.id) { message in
                                ChatBubble(msg: message, messageDS: messageDataSource, myuser: user, colorIndex: user.background)
                                    .id(message.id)
                            }
                        }
                        .onAppear {
                            value.scrollTo(messageDataSource.room.messages.last?.id, anchor: .bottom)
                        }
                        .onChange(of: messageDataSource.room.messages.count) { _ in
                            value.scrollTo(messageDataSource.room.messages.last?.id, anchor: .bottom)
                        }
                    }
                }
                //                .padding()
                //                .offset(y: -self.offset)
                //                                .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                //                                            .onEnded({ value in
                //                                                if room.blueMode {
                //                                                    if value.translation.width < -10 || value.translation.width > 10{
                //                                                        // horizontal
                //                                                        print("Swipe horizontal")
                //                                                        withAnimation {
                //                                                            presentingDashboard = true
                //                                                        }
                //                                                    }
                //                                                }
                //                                            }))
                
                
                
                Spacer().frame(height: 30)
                VStack {
                    //                                        if lastRead != nil {
                    //                                            HStack {
                    //                                                Image("whiteEye")
                    //                                                    .resizable()
                    //                                                    .frame(width: 40, height: 40)
                    //                                                    .scaledToFill()
                    //
                    //                                                Text(String(lastRead!))
                    //                                                    .foregroundColor(.white)
                    //                                                    .font(.system(size: 16))
                    //
                    //                                                Spacer()
                    //                                            }
                    //                                        }
                    
                    
                    HStack { //footer
                        Menu {
                            Button {
                                self.sourceType = .camera
                                let cam = AVCaptureDevice.authorizationStatus(for: .video)
                                if cam == .notDetermined {
                                AVCaptureDevice.requestAccess(for: AVMediaType.video) { response in
                                        if response {
                                            //access granted
                                            self.sourceType = .camera
                                            showingImagePicker = true
                                        } else {}
                                    }
                                } else {
                                    showingImagePicker = true
                                }
                                
        
                            } label: {
                                Text("Camera")

                            }
                            
                            Button {
                                self.sourceType = .photoLibrary
                                let photos = PHPhotoLibrary.authorizationStatus()
                                if photos == .notDetermined {
                                    PHPhotoLibrary.requestAuthorization({status in
                                        if status == .authorized{
                                            showingImagePicker = true
                                        } else {}
                                    })
                                } else {
                                    self.sourceType = .photoLibrary
                                    showingImagePicker = true
                                }
                                
        
                            } label: {
                                Text("Photo Gallery")

                            }
                            
                            Button {
                                stickerPopoverShowing = true
                            } label: {
                                Text("Stickers")
                            }
                            
                        } label: {
                            Image("camera")
                                .resizable()
                                .frame(width: 40, height: 40)
                        }
                        
                        ZStack {
                                                TextEditor(text: $currentBody)
                                .cornerRadius(10)
//                                                RoundedRectangle(cornerRadius: 10)
//                                                    .stroke()
//                                                    .foregroundColor(.gray)
                                            }.frame(height: 50)
                        
                        
//                        TextField("Message...", text: $currentBody)
//                            .textFieldStyle(RoundedBorderTextFieldStyle())
//                            .background(Color(#colorLiteral(red: 0.4884749055, green: 0.2207083404, blue: 0.971470058, alpha: 0.3971501029)))
//                            .cornerRadius(15)
//                            .padding(5)
                        
                        Button(action: {
                            if !currentBody.trimmingCharacters(in: .whitespaces).isEmpty {
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                                
                                // string contains non-whitespace characters
                                let message = Message(id: Helper().randomString(length: 20), senderName: "\(user.firstName) \(user.lastName.first!)", senderID: user.id, body: currentBody, creationDate: Int(NSDate().timeIntervalSince1970), hasBeenLiked: false, hasBeenThumb: false)
                                messageDataSource.sendMessage(message: message)
                                currentBody = ""
                            }
                            
                        }) {
                            Image("arrow")
                                .resizable()
                                .frame(width: 40, height: 40)
                        }
                        
                    }
                    .padding()
                    .offset(y: -self.offset)
                    .animation(.spring())
                    //                    .onAppear {
                    //                        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (noti) in
                    //                            let value = noti.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
                    //                            let height = value.height
                    //                            self.offset = height/4
                    //                        }
                    //
                    //                        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (noti) in
                    //                            self.offset = 0
                    //                        }
                    //                    }
                    .popover(isPresented: $stickerPopoverShowing) {
                        StickerPopover(messageDataSource: messageDataSource, showSheet: $stickerPopoverShowing, user: user).environmentObject(sessionManager)
                    }
                }
            }
            
            //            if adButtonsHidden == false {
            VStack { // Advertisement Buttons
                ZStack {
                    Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
                        .frame(width: 60, height: 60)
                        .cornerRadius(30)
                    
                    Image("whiteHeart")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                        .foregroundColor(.white)
                        .onTapGesture {
                            hasLiked.toggle()
                            if hasLiked {
                                currentLikes += 1
                            } else {
                                currentLikes -= 1
                            }
                        }
                    
                    Text("\(currentLikes)")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                }
                
                Spacer().frame(height: 10)
                
                ZStack {
                    Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
                        .frame(width: 60, height: 60)
                        .cornerRadius(30)
                    
                    Image("whiteLink")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFit()
                        .onTapGesture {
                            hasClickedLink = true
                            openURL(URL(string: currentLink)!)
                        }
                }
                
                Spacer().frame(height: 10)
                
                Text("Sample Ad")
                    .foregroundColor(.white)
            }
            .offset(x: adButtonsOffset)
            .transition(.move(edge: .leading))
            
            if showingNotifications {
                VStack {
                    Text("Send chat member a \npush notification")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 18, weight: .light))
                        .foregroundColor(.white)
                        .padding()
                    
                    ForEach(room.members, id: \.self) { id in
                        if id != user.id {
                            let name = userDataSource.getUser(id: id).firstName + " " + userDataSource.getUser(id: id).lastName
                            Button(name, action: {
                                //send push notifiction
                                showingNotifications = false
                            })
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                        }
                    }
                }
                .background(Color(#colorLiteral(red: 0.4978310466, green: 0.2762668133, blue: 1, alpha: 1)))
                .cornerRadius(20)
            }
            
            if newPinPopupShowing {
                VStack {
                    Text("Set up 4 digit pin to Restore Your Chat Messages!")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.white)
                        .padding(20)
                    
                    TextField("New pin", text: $textBindingManager.text)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .background(Color.clear)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .multilineTextAlignment(.center)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Button(action: {
                        if textBindingManager.text.count == 4 {
                            var newuser = USS.user
                            newuser.secretPin = textBindingManager.text
                            userDataSource.updateUser(user: newuser)
                            newPinPopupShowing = false
                        }
                    }) {
                        Text("CONFIRM")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(20)
                            .padding(.horizontal, 40)
                        
                    }
                    .padding(.vertical, 20)
                }
                .background(Color(#colorLiteral(red: 0.4790705442, green: 0.3037698865, blue: 0.836648941, alpha: 0.7836921892)))
                .cornerRadius(20)
                .padding(.horizontal, 40)
                
            }
            
            if notificationsShowing == true {
                VStack {
                    ForEach(USS.user.notifications.reversed(), id: \.self) { foo in
                        Text(foo)
                            .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            .font(.system(size: 17, weight: .regular))
                            .padding()
                    }
                }
                .background(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                .cornerRadius(10)
            }
        }
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage, sourceType: sourceType)
        }
        .fullScreenCover(isPresented: $isShakingCoolPresented, content: ShakingCoolFullScreenView.init)
        .onShake {
            AnalyticsDataSource().recordPhoneGotShakenEvent()
            isShakingCoolPresented = true
        }
        
        
    }
    
    private func hideChat() {
        if USS.user.secretPin == "noPin" {
            newPinPopupShowing = true
        } else {
            var rooms = USS.user.hiddenRooms
            if rooms.contains(room.id) == false {
                rooms.append(room.id)
                var updatedUser = USS.user
                updatedUser.hiddenRooms = rooms
                UserDataSource().updateUser(user: updatedUser)
                sessionManager.showPin(room: room)
            }
        }
    }
    
    private func loadImage() {
        showingImagePicker = false
        guard let inputImage = inputImage else { return }
        print("Got the image")
        messageDataSource.uploadImage(image: inputImage)
    }
    
    private func showAd() {
        print("Showing ad")
        currentAdIndex = Int.random(in: 1..<adIDs.count)
        areAdsHidden = false
        let ad = adDataSource.getAd(id: adIDs[currentAdIndex])
        let seconds = ad.duration
        currentLikes = ad.likes
        currentLink = ad.adLink
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // After ad is fully shown once
            areAdsHidden = true
            withAnimation {
                adButtonsOffset = -165
                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                    withAnimation {
                        doneWithAd()
                        adButtonsOffset = -270
                    }
                }
            }
        }
        
    }
    
    private func sendScreenCaptureNotification(video: Bool) {
        var recipients = room.members
        let body = video ? "\(user.firstName) screen recorded chat!" : "\(user.firstName) screenshotted chat!"
        print("Body: ", body)
        if let index = recipients.firstIndex(of: user.id) {
            recipients.remove(at: index)
        }
        for recipient in recipients {
            let foo = userDataSource.getUser(id: recipient)
            PushNotificationSender().sendPushNotification(token: foo.deviceFCMToken, title: "Watch out!", body: body)
        }
    }
    
    private func doneWithAd() {
        var ad = adDataSource.getAd(id: adIDs[currentAdIndex])
        var user = userDataSource.getCurrentUser()
        user.tokens += 1
        ad.views += 1
        if hasLiked {
            ad.likes += 1
        }
        if hasClickedLink {
            ad.clicks += 1
            user.tokens += 3
        }
        adDataSource.updateAd(ad: ad)
        userDataSource.updateUser(user: user)
        hasClickedLink = false
        hasLiked = false
    }
    
    
}

