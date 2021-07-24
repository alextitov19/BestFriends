//
//  RoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/25/21.
//

import SwiftUI
import Amplify


struct RoomsView: View {
    
    @ObservedObject var dataSource = RoomDataSource()
    @ObservedObject var USS: UserSubscriptionService
    var userDataSource = UserDataSource()
    
    @State private var showingActionSheet = false
    @State private var loadingShowing = false
    @State private var notificationsShowing = false
    @State private var isAtMaxScale = false
    private let animation = Animation.easeInOut(duration: 1).repeatForever(autoreverses: true)

    @EnvironmentObject var sessionManager: SessionManager
    
    
    init() {let foo = userDataSource.getCurrentUser()
        self.USS = UserSubscriptionService(user: foo)
        USS.createSubscription()
        
        dataSource.getRooms()
        print("Rooms: ", dataSource.rooms)
    }
    
    var body: some View {
        ZStack {
//            Image("SignUpPinBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
//            PlayerView()
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            VStack {
                Spacer().frame(height: 20)
                
                Text("Chat Rooms")
                    .font(.system(size: 40).bold())
                    .foregroundColor(.white)
                    .padding()
                
                HStack {
                    Spacer().frame(width: 20)
                    
                    ScrollView(showsIndicators: false) {
                        LazyVStack {
                            ForEach(dataSource.rooms) { room in
                                if room.creatorID == UserDataSource().getCurrentUser().id {
                                    RoomRow(room: room)
                                        .onTapGesture {
                                            loadingShowing = true
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                                sessionManager.chat(room: room)
                                            }
                                        }
                                        .onLongPressGesture(minimumDuration: 1) { showingActionSheet = true }
                                        .actionSheet(isPresented: $showingActionSheet) {
                                            ActionSheet(title: Text("Manage Chat Room"), message: Text("Conversation dried up? You can leave the chat room. Since you made it, you can also delete the chat room."), buttons: [
                                                .default(Text("Leave")) {
                                                    dataSource.leaveChatRoom(room: room)
                                                    sessionManager.reloadToPage(page: "rooms")
                                                },
                                                .default(Text("Delete")) {
                                                    dataSource.deleteChatRoom(room: room)
                                                    sessionManager.reloadToPage(page: "rooms")
                                                },
                                                .cancel()
                                            ])
                                        }
                                        .frame(width: 375)
                                        .scaledToFit()
                                        .padding()
                                    
                                } else {
                                    RoomRow(room: room)
                                        .onTapGesture {
                                            loadingShowing = true
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                                sessionManager.chat(room: room)
                                            }
                                        }
                                        .onLongPressGesture(minimumDuration: 1) { showingActionSheet = true }
                                        .actionSheet(isPresented: $showingActionSheet) {
                                            ActionSheet(title: Text("Manage Chat Room"), message: Text("Conversation dried up? You can leave the chat room."), buttons: [
                                                .default(Text("Leave")) {
                                                    dataSource.leaveChatRoom(room: room)
                                                    sessionManager.reloadToPage(page: "rooms")
                                                },
                                                .cancel()
                                            ])
                                        }
                                        .frame(width: 300)
                                        .scaledToFit()
                                        .padding()
                                }
                            }
                        }
                    }
                    Spacer().frame(width: 20)
                }
                
                
                HStack {
                    Image("home-alt2")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                        .onTapGesture {
                            sessionManager.getCurrentAuthUser()
                        }
                        .padding(5)
                    
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
                        .scaleEffect(isAtMaxScale ? 1 : 0.5)
                        .onAppear {
                            if USS.user.pendingNotifications != nil {
                                withAnimation(self.animation, {
                                    self.isAtMaxScale.toggle()
                                })
                            }
                        }
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
                }
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
        }
    }
}

struct RoomsView_Previews : PreviewProvider {
    static var previews: some View {
        RoomsView()
    }
}
