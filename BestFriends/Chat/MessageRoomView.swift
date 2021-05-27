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
    
    @ObservedObject var messageDataSource: MessageDataSource
    @State var showingImagePicker = false
    @State var showingPin = false
    @State var inputImage: UIImage?
    @State var offset: CGFloat = 0
    @State var areAdsHidden = true
    
    var adIDs: [String] = []
    var adNames: [String] = []
    
    let adDataSource = AdDataSource()

    
    var user: User
    var room: Room
    
    var timer = Timer.publish(every: 30, on: .main, in: .common).autoconnect()

    

    
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
            
            AdPlayerView(name: "first")
                .ignoresSafeArea()
                .isHidden(areAdsHidden)
            
            VStack {
                HStack { //header
                    Spacer()

                    Button(action: {
                        
                    }) {
                        Text("< Back")
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Text(room.name)
                            .font(.system(size: 30).bold())
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
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
                    
                    Spacer()
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

                
                
                Spacer().frame(height: 30)
                
                HStack { //footer
                    Spacer().frame(width: 30)
                    
                    Button(action: {
                        showingImagePicker = true
                    }) {
                        Image("camera")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding()
                    
                    Spacer().frame(width: 30)
                    
                    TextField("", text: $currentBody)
                        .background(Color(#colorLiteral(red: 0.4884749055, green: 0.2207083404, blue: 0.971470058, alpha: 0.3971501029)))
                        .frame(width: 210, height: 30)
                        .cornerRadius(15)
                        .padding()
                    
                    Spacer()
                        .frame(width: 30)
                    
                    Button(action: {
                        
                        let message = Message(id: messageDataSource.randomString(length: 20), senderName: user.firstName, senderID: user.id, body: currentBody, creationDate: Int(NSDate().timeIntervalSince1970))
                        
                        messageDataSource.sendMessage(message: message)
                    }) {
                        Image("arrow")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding()
                    
                    Spacer().frame(width: 30)
                }
                .offset(y: -self.offset)
                .animation(.spring())
                .onAppear {
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { (noti) in
                        let value = noti.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
                        let height = value.height
                        self.offset = height/2.3
                    }
                    
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { (noti) in
                        self.offset = 0
                    }
                }
                
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
            NavigationLink(destination: PinView(roomID: room.id), isActive: $showingPin) { EmptyView() }
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
        let seconds = 5.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            // After ad is fully shown once
            areAdsHidden = true
        }
        
    }
    
    
}
