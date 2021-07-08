//
//  MessageRoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/3/21.
//

import SwiftUI
import Amplify
import Combine


struct MessageRoomView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @ObservedObject var messageDataSource: MessageDataSource
    
    @State var showingImagePicker = false
    @State var showingMediaMenu = false
    @State var stickerPopoverShowing = false
    
    @State var showingPin = false
    @State var inputImage: UIImage?
    @State var offset: CGFloat = 0
    @State var areAdsHidden = true
    @State var currentAdIndex = 0
    @State var currentLink = ""
    @State var currentLikes = 0
    @State var hasLiked = false
    @State var hasClickedLink = false
    @Environment(\.openURL) var openURL
    @State var adButtonsHidden = true
    @State var roomname = ""
    @State var presentingDashboard = false
    @State var showingNotifications = false
    
    var adIDs: [String] = []
    var adNames: [String] = []
    
    let adDataSource = AdDataSource()
    let userDataSource = UserDataSource()
    
    
    var user: User
    var room: Room
    var lastRead: Int?
    
    var timer = Timer.publish(every: 3000, on: .main, in: .common).autoconnect()
    
    @State private var adButtonOffset: Float = 0
    
    
    init(room: Room) {
        let id = Amplify.Auth.getCurrentUser()?.username ?? "Failed getting id"
        self.user = UserDataSource().getUser(id: id)
        self.messageDataSource  = MessageDataSource(room: room)
        self.room = room
        
        let adDoc = adDataSource.getAdDocuemnt()
        let ids = adDoc.documents ?? []
        self.adIDs = ids
        for id in ids {
            self.adNames.append(adDataSource.getAd(id: id).videoName)
        }
        print("Count of ids: \(adIDs.count), count of names: \(adNames.count)")
        
        
        if room.blueMode == true {
            
            if room.members[0] == Amplify.Auth.getCurrentUser()!.username {
                RoomDataSource().updateRoomTime(room: room, isMember1: true)
                lastRead = room.lastSeenByMember2
            } else {
                RoomDataSource().updateRoomTime(room: room, isMember1: false)
                lastRead = room.lastSeenByMember1
            }
        }
        
        
    }
    
    @State var currentBody: String = ""
    
    var body: some View {
        
        ZStack{
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .onReceive(timer) { time in
                    print("Showing an ad")
                    showAd()
                }
            
            AdPlayerView(name: "EnrichHER")
                .ignoresSafeArea()
                .isHidden(areAdsHidden)
            
            AdPlayerView(name: "purpleChat")
                .ignoresSafeArea()
                .isHidden(!areAdsHidden)
            
            VStack {
                HStack { //header
                    Text("< Back")
                        .foregroundColor(.white)
                        .onTapGesture {
                            sessionManager.showRooms()
                        }
                        .padding()
                                        
                    ZStack {
                        if roomname == "" {
                            Text(room.name)
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                        } else {
                            Text(roomname)
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                        }
                        
                        TextField("", text: $roomname) { changed in
                            print("Editing...")
                        } onCommit: {
                            print("Uploading new name...")
                            RoomDataSource().updateRoomName(room: room, name: roomname)
                        }
                        .foregroundColor(.clear)
                        .background(Color(.clear))
                        .frame(width:200)
                    }
                    .padding()
                    
                    Button(action: {
                        showingNotifications = true
                    }) {
                        Image("whiteBell")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                    .padding()

                    Button(action: {
                        showingPin = true
                        var rooms = user.hiddenRooms ?? []
                        if rooms.contains(room.id) == false {
                            rooms.append(room.id)
                        }
                        var updatedUser = user
                        updatedUser.hiddenRooms = rooms
                        UserDataSource().updateUser(user: updatedUser)
                    }) {
                        Image("whiteLock")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                    }
                    .padding()
                }
                
                ScrollView { //messages
                    LazyVStack {
                        let rooms: [String] = user.hiddenRooms ?? []
                        if rooms.contains(room.id) == false {
                            ForEach(messageDataSource.room.messages, id: \.id) { message in
                                ChatBubble(msg: message, messageDS: messageDataSource)
                                    .padding()
                                
                                //                                Spacer()
                                //                                    .frame(height: 20)
                            }
                        }
                    }
                    .padding()
                }
                .padding()
                .offset(y: -self.offset)
                .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                            .onEnded({ value in
                                if room.blueMode {
                                    if value.translation.width < -10 || value.translation.width > 10{
                                        // horizontal
                                        print("Swipe horizontal")
                                        withAnimation {
                                            presentingDashboard = true
                                        }
                                    }
                                }
                            }))
                
                
                
                Spacer().frame(height: 30)
                VStack {
                    if lastRead != nil {
                        HStack {
                            Image("whiteEye")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                            
                            Text(String(lastRead!))
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                            
                            Spacer()
                        }
                    }
                    
                    
                    HStack { //footer
                        Button(action: {
                            showingImagePicker = true
                        }) {
                            Image("camera")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                        Button(action: {
                            stickerPopoverShowing = true
                        }) {
                            Image("stickerWhite")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                        TextField("Message...", text: $currentBody)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(maxWidth: 270)
                            .background(Color(#colorLiteral(red: 0.4884749055, green: 0.2207083404, blue: 0.971470058, alpha: 0.3971501029)))
                            .cornerRadius(15)
                            .padding(10)
                        
                        Button(action: {
                            let message = Message(id: messageDataSource.randomString(length: 20), senderName: user.firstName, senderID: user.id, body: currentBody, creationDate: Int(NSDate().timeIntervalSince1970))
                            
                            currentBody = ""
                            
                            messageDataSource.sendMessage(message: message)
                        }) {
                            Image("arrow")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                    }
                    .padding()
                    .offset(y: -self.offset)
                    .animation(.spring())
                    .onAppear {
                        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (noti) in
                            let value = noti.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
                            let height = value.height
                            self.offset = height/4
                        }
                        
                        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (noti) in
                            self.offset = 0
                        }
                    }
                    .popover(isPresented: $stickerPopoverShowing) {
                        StickerPopover(messageDataSource: messageDataSource, showSheet: $stickerPopoverShowing, user: user).environmentObject(sessionManager)
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
            NavigationLink(destination: PinView(roomID: room.id), isActive: $showingPin) { EmptyView() }
            
            if adButtonsHidden == false {
                VStack { // Advertisement Buttons
                    ZStack {
                        Color(#colorLiteral(red: 0.8541358113, green: 0.2422761917, blue: 0.5319774747, alpha: 1))
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Image("whiteHeart")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                            .foregroundColor(.white)
                            .onTapGesture {
                                hasLiked = true
                            }
                        
                        Text("\(currentLikes)")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                    
                    Spacer().frame(height: 10)
                    
                    ZStack {
                        Color(#colorLiteral(red: 0.8541358113, green: 0.2422761917, blue: 0.5319774747, alpha: 1))
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Image("whiteLink")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                            .foregroundColor(.white)
                            .onTapGesture {
                                hasClickedLink = true
                                doneWithAd()
                                openURL(URL(string: currentLink)!)
                            }
                    }
                    
                    Spacer().frame(height: 10)
                    
                    ZStack {
                        Color(#colorLiteral(red: 0.8541358113, green: 0.2422761917, blue: 0.5319774747, alpha: 1))
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Image("whiteX")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .scaledToFit()
                            .foregroundColor(.white)
                            .onTapGesture {
                                doneWithAd()
                            }
                    }
                }
                .offset(x: -165)
                .transition(.move(edge: .leading))
            }
            
            if presentingDashboard {
                BlueModeUserDashboard()
                    .transition(.scale)
                    .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                                .onEnded({ value in
                                    if room.blueMode {
                                        if value.translation.width < -10 || value.translation.width > 10 {
                                            // horizontal
                                            print("Swipe horizontal")
                                            withAnimation {
                                                presentingDashboard = false
                                            }
                                        }
                                    }
                                }))
            }
            
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
            .isHidden(!showingNotifications)
        }
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
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
        areAdsHidden = false
        let ad = adDataSource.getAd(id: adIDs[currentAdIndex])
        let seconds = ad.duration
        currentLikes = ad.likes
        currentLink = ad.adLink
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // After ad is fully shown once
            areAdsHidden = true
            withAnimation {
                adButtonsHidden = false
            }
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
        adButtonsHidden = true
        if currentAdIndex < adIDs.count - 1 {
            currentAdIndex += 1
        }
        hasClickedLink = false
        hasLiked = false
    }
    
    
}

