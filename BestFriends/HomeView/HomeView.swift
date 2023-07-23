//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    //        let user: User
    //        let friends: [User]
    //        let atmosphere: Atmosphere
    //
    @State private var homeData: HomeData?
    @State private var groups: [Group] = []
    @State private var planets: [Planet] = []
    
    @State private var inviteClicked = false
    //    @State private var focusPlanet = false
    @State private var showNewRoomNameDialog = false
    
    @State private var newGroupMembers: [String] = []
    
    @State private var chatGroupsView = ChatGroupsView(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: "", chatBackground: ""), groups: [])
    
    @State private var presentingPhotoPop = false
    @State private var presentingIANs = false
    
    @State private var movingPlanets = false
    
    let reloadingTimer = Timer.publish(every: 30, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView {
            
            
            ZStack {
                Color .black
                    .ignoresSafeArea()
                    .onAppear {
                        if RestApi.instance.needLogin {
                            sessionManager.showLogin()
                        } else {
                            getHomeData()
                        }
                    }
                    .onShake {
                        presentingPhotoPop = true
                    }
                    .fullScreenCover(isPresented: $presentingPhotoPop, content: ShakePhotoPopView.init)
                    .onReceive(reloadingTimer) { time in
                        getHomeData()
                    }
                
                if (homeData != nil) {
                    NavigationLink(destination: NotificationsView(user: homeData!.user, friends: homeData!.friends), isActive: $presentingIANs) { EmptyView() }

                }
                
                // Stars animation...
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.99)
                
           
                
                VStack {
                    if ((homeData) != nil) {
                        
                        Spacer()
//                            .frame(width: 10)
                       
                        HStack {
                            
//                            Spacer()
//                                .frame(width: 15)
                            
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 43, height: 43)
                                .foregroundColor(Color.red)
                               .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.5)
                                .onTapGesture {
                                    print("Clicked notification bell")
                                    presentingIANs.toggle()
                                }

                            NavigationLink(destination: SaySomethingNice6(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, groups: homeData!.groups, friendAtmospheres: homeData!.friendAtmospheres), isActive: $inviteClicked
                            ) { EmptyView() }

                            
                            Spacer()
                                .frame(width: 120)

                          
                                
                                VStack {
                                 
                                    NavigationLink(
                                        destination:  PhotoPopView(user: homeData!.user, friends: homeData!.friends),
                                        label: {
                                            
                                            Image(systemName: "camera")
                                              
                                               .resizable()
                                                .scaledToFit()
                                                .frame(width: 43, height: 43)
                                                .glow(color: ColorManager.purple4, radius: 2)
                                                .opacity(0.6)

                                            
                                        })
                                }
                            
                 
                         
                        }

                    }
                    
                   Spacer()

                }
                

                
                if homeData != nil {
                    FriendPlanetsView(planets: $planets, selectedPlanets: $newGroupMembers, inviteClicked: $inviteClicked)
                }
                
                if homeData != nil {
                    EmptyView()
                        .alert(isPresented: $showNewRoomNameDialog,
                               TextAlert(title: "Create New Room",
                                         message: "Input the desired name for the new chat room") { name in
                            if let text = name {
                                // Text was accepted
                                print("Got name: ", text)
                                createGroup(name: text)
                            } else {
                                // The dialog was cancelled
                            }
                        })
                        .frame(width: 0, height: 0)
                    
                    ZStack {
                        
                        NavigationLink(destination: MyRoomView(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups), label: {
                            PlanetView(planet: homeData!.atmosphere.planet, mood: homeData!.atmosphere.mood)
                                .scaledToFit()
                                .frame(width: 110, height: 110)
                                .glow(color: glowColor(mood: homeData!.atmosphere.mood), radius: 11)
                                .opacity(0.3)
                                .padding()
                            
                        })
                            Text("Tap")
                                .fontWeight(.bold)
                                .frame(width: 40, height: 30)
//                                .foregroundColor(Color.white)
                                .font(.system(size: 15))
                                .background(Color.green)
                            //                               .opacity(0.7)
                                .cornerRadius(10)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                            
//                        })
                    }
                        
                }
                
                if newGroupMembers.count > 0 {
                    VStack {
                        Spacer()
                        
                        Button(action: {
                            chatButtonTapped()
                        }, label: {
                            Text("create new chat room")
                                .fontWeight(.light)
                                .frame(width: 250, height: 30)
                                .foregroundColor(.white)
                                .background(ColorManager .purple3)
                                .cornerRadius(10)
                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                .opacity(0.5)
                        })
                        
                        Spacer()
                            .frame(height: 100)
                    }
                }
                
                if homeData?.groups != nil && homeData?.user != nil {
                    ChatGroupsView(user: homeData!.user, groups: groups)
                        .environmentObject(sessionManager)
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(ColorManager.purple5)
        
    }
    
    private func getHomeData() {
        RestApi.instance.getHomeData().then{ data in
            print("Got HomeData: ", data)
            homeData = data
            RestApi.instance.setStatusToOnline(id: data.user.id)
            RestApi.instance.registerAPNToken()
            groups = homeData!.groups.sorted(by: { $0.createdOn > $1.createdOn })
            
            
            createPlanets()
            //            print("Got groups: ", data.groups.count)
            //            chatGroupsView = ChatGroupsView(groups: data.groups)
        }.catch { err in
            print("Got error")
            print(err)
        }
        
    }
    
    // Create plantes and populate the planets array
    private func createPlanets() {
        planets = []
        let friends: [User] = homeData?.friends ?? []
        let atmosperes: [Atmosphere] = homeData?.friendAtmospheres ?? []
        
        for friend in friends {
            for atmosphere in atmosperes {
                if friend.atmosphere == atmosphere.id {
                    // Found the friend - atmosphere pair
                    let planet = Planet(user: friend, atmosphere: atmosphere)
                    planets.append(planet)
                    
                }
            }
        }
    }
    
    // Get glow color for main planet
    private func glowColor(mood: Int) -> Color {
        switch mood {
        case 0:
            return Color(.systemBlue)
        case 1:
            return Color(.systemBlue)
        case 2:
            return Color(.systemBlue)
        case 3:
            return Color(.systemBlue)
        case 4:
            return Color(.systemGreen)
        case 5:
            return Color(.orange)
        case 6:
            return Color(.systemYellow)
        case 7:
            return Color(.systemYellow)
        case 8:
            return Color(.systemYellow)
        case 9:
            return Color(.systemYellow)
        default:
            return ColorManager.pmbc_blue
            
        }
    }
    
    
    
    private func chatButtonTapped() {
        if newGroupMembers.count > 0 {
            for newId in newGroupMembers {
                for f in homeData!.friends {
                    if f.id == newId {
                        //MARK: Sending push notification to friend "f"
                        RestApi.instance.sendPushNotification(title: "Group chat", body: homeData!.user.firstName + " " +  String(homeData!.user.lastName.first!) + "needs to talk", APNToken: f.APNToken )
                    }
                }
            }
            
            newGroupMembers.append(homeData!.user.id)
            for group in homeData!.groups {
                if group.members.containsSameElements(as: newGroupMembers) {
                    sessionManager.showChat(user: homeData!.user, group: group)
                    return
                }
            }
            showNewRoomNameDialog = true
        }
    }
    
    private func createGroup(name: String) {
        RestApi.instance.createGroup(name: name, members: newGroupMembers).then { response in
            print("Create Group response: ", response)
            sessionManager.showChat(user: homeData!.user, group: response)
        }
    }
    
    private func friendSentPlaylist(friend: User) {
        let arr = [friend.id, homeData!.user.id]
        for group in homeData!.groups {
            if group.members.containsSameElements(as: arr) {
                sessionManager.showChat(user: homeData!.user, group: group)
            }
            
            
            
        }
    }
    
}


