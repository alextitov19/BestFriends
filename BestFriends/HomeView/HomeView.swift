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
    
//    @StateObject var model = Model.loadData
    
    @State private var scale = 1.0
    
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
                    NavigationLink(destination: NotificationsView(user: homeData!.user, friend: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere), isActive: $presentingIANs) { EmptyView() }

                }
                
//            user: user, friend: user, friends: friends, groups: groups)
                
                // Stars animation...
                AdPlayerView(name: "background_9")
                    .ignoresSafeArea()
                    .blendMode(.screen)
//                    .opacity(0.99)
                
           
                
                
                
                
                VStack {
                    if ((homeData) != nil) {
                    
                        
//          ********************************************** Carehearts *************
                        
                        HStack {
                            
                            
                            
                            
//                            NavigationLink(
//                                destination:  SettingsView(user: homeData!.user, friends: homeData!.friends, atmosphere: homeData!.atmosphere),
//                                label: {
//
//                                    Image(systemName: "heart")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 35, height: 35)
//                                        .foregroundColor(Color.white)
//                                    .glow(color: ColorManager.purple4, radius: 3)
//                                        .opacity(0.9)
//                                })
                            
                            
                            Spacer()
                                .frame(width: 25)
                            
                            ZStack {
//                                Image(systemName: "heart")
                                Image("planet_6")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 75, height: 75)
                                    .foregroundColor(Color.pink)
                                    .glow(color: ColorManager.purple4, radius: 20)
                                    .rotationEffect(.degrees(-7))
                                    .blinking(duration: 3.0)
                                
                                
                                NavigationLink(
                                    destination:  HugPreload(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere),
                                    label: {
                                        
                                        ZStack {
                                            Image(systemName: "heart.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                                .foregroundColor(Color.white)
                                                .glow(color: ColorManager.purple4, radius: 3)
                                                .opacity(0.7)
                                                .blinking(duration: 3.0)
                                            
                                            Text("+")
                                                .fontWeight(.medium)
                                                .frame(width: 90, height: 90)
                                                .foregroundColor(Color.black)
                                                .font(.system(size: 30))
                                                .multilineTextAlignment(.center)
                                                .opacity(1.0)
                                                .blinking(duration: 3.0)
                                                .opacity(0.6)
                                        }
                                        
                                        
                                        
                                    })
                                
                            }
                            
                            Spacer()
                                .frame(width: 20)
                            
                            ZStack {
                                Image("planet_2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 95, height: 95)
                                    .foregroundColor(Color.orange)
                                    .glow(color: ColorManager.purple4, radius: 20)
//                                    .blinking(duration: 5.0)
                                
                                
                                
                                NavigationLink(
                                    destination:  AtmosphereMain2(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
                                    label: {
                                        
                                        ZStack {
                                            Image(systemName: "triangle.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                                .foregroundColor(Color.white)
//                                                .glow(color: ColorManager.purple4, radius: 3)
                                                .opacity(0.8)
                                                .blinking(duration: 3.0)
                                            
                                            Text("vibe")
                                                .fontWeight(.medium)
                                                .frame(width: 90, height: 90)
                                                .foregroundColor(Color.black)
                                                .font(.system(size: 15))
                                                .multilineTextAlignment(.center)
                                                .opacity(1.0)
                                                .blinking(duration: 3.0)
                                                .opacity(0.6)
                                        }
                                    })
                            }
                            
                            Spacer()
                                .frame(width: 10)
                            
                            ZStack {
                                Image("planet_6")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 75, height: 75)
                                    .foregroundColor(Color.pink)
                                    .rotationEffect(.degrees(7))
                                    .glow(color: ColorManager.purple4, radius: 20)
                                    .blinking(duration: 3.0)
                                
                                
                                
                                NavigationLink(
                                    destination:  CH10(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere),
                                    label: {
                                        
                                        ZStack {
                                            Image(systemName: "heart.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                                .foregroundColor(Color.white)
                                                .glow(color: ColorManager.purple4, radius: 3)
                                                .opacity(0.7)
                                                .blinking(duration: 3.0)
                                            
                                            Text("-")
                                                .fontWeight(.medium)
                                                .frame(width: 90, height: 90)
                                                .foregroundColor(Color.black)
                                                .font(.system(size: 30))
                                                .multilineTextAlignment(.center)
                                                .opacity(1.0)
                                                .blinking(duration: 3.0)
                                                .opacity(0.6)
                                        }
                                    })
                                
                            }
                            
                            Spacer()
                                .frame(width: 25)

                                
                            }
                            
                        ZStack {
                                               
                            Image("planet_3")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                                .foregroundColor(Color.pink)
                                .rotationEffect(.degrees(7))
                                .glow(color: ColorManager.purple4, radius: 20)
                                .blinking(duration: 3.0)
                                     
                                                
                                                
                            NavigationLink( destination:  BestFriendMessages(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres),
                                        label: {
                                    Text("nice \nmessages")
                                    .fontWeight(.medium)
                                    .frame(width: 80, height: 80)
                                  .foregroundColor(Color.white)
                                    .font(.system(size: 12))
//                                    .background(ColorManager .grey4)
                                    .multilineTextAlignment(.center)
                                    .opacity(1.0)
                                    .cornerRadius(50)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 1)
                                    .blinking(duration: 3.0)
                                    .opacity(0.6)
                                    
                                                    
                                                })
                                            }
                        
                        
                        
                        
//************************************ Bottom Icons **********************
                        
                        Spacer()

                       
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 250)
                            .foregroundColor(ColorManager .purple3)
                            .opacity(0.15)
                            .glow(color: Color.white, radius: 75)
                            .blinking(duration: 4.0)
                        
                        Spacer()
                            .frame(height: 0)
                        
                        ZStack {
                            
                            Image(systemName: "")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .foregroundColor(Color.red)
                            //                                    .blinking(duration: 2.0)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.5)
                                .onTapGesture {
                                    print("Clicked notification bell")
                                    presentingIANs.toggle()
                                }
                            
                            NavigationLink(destination: SaySomethingNice6(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, groups: homeData!.groups, friendAtmospheres: homeData!.friendAtmospheres), isActive: $inviteClicked
                            ) { EmptyView() }
                            
                            
                            Image(systemName: "star")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.white)
                                .opacity(0.4)
                                .glow(color: Color.white, radius: 5)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 5)
                                .blinking(duration: 0.5)
                            
                        }
                      
                        HStack {
                  
//                            ZStack {
//                                            Image(systemName: "cube")
//                                                .resizable()
//                                                .scaledToFit()
//                                                .frame(width: 70, height: 70)
//                                                .foregroundColor(Color.green)
//                                                .rotationEffect(.degrees(180))
//                                                .opacity(0.6)
//                                                .blinking(duration: 2.0)
//                                                .glow(color: ColorManager.purple4, radius: 20)
//
//
////         *****************************************************************
//                                            NavigationLink(
//                                                destination:  RR23(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
//                                                label: {
//
//                                                    Text("Beta")
//                                                        .fontWeight(.regular)
//                                                        .frame(width: 60, height: 60)
//                                                        .foregroundColor(Color.white)
//                                                        .font(.system(size: 15))
//                                                        .blinking(duration: 2.0)
//
//
//                                                })
//                                        }
//
//
//          ********************************************* PhotoPOP links *************
                     
                            Spacer()
                                .frame(width: 35)
                            
                            
                            
                    ZStack {
                                    Image(systemName: "circle")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 78, height: 78)
                                        .foregroundColor(Color.orange)
                                        .glow(color: ColorManager.purple4, radius: 20)

                                    
                                    
                                    NavigationLink(
                                        destination:  PhotoPopView(user: homeData!.user, friends: homeData!.friends),
                                        label: {
                                          
                                                    Image(systemName: "camera")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 35, height: 35)
//                                                        .rotationEffect(.degrees(-7))
                                                        .foregroundColor(ColorManager .purple3)
                                                        .glow(color: ColorManager.purple4, radius: 2)
                                                        .opacity(0.6)
                                                    
                                         
                                              
//                                                .blinking(duration: 2.0)
                                    })
                                }
                            
                            Spacer()
                                .frame(width: 20)
                            
                            
                            
                    ZStack {
                                    Image(systemName: "circle")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 78, height: 78)
                                        .foregroundColor(Color.orange)
                                        .glow(color: ColorManager.purple4, radius: 20)

                                    
                                    
                                    NavigationLink(
                                        destination:  RR5(user: homeData!.user, friends: homeData!.friends),
                                        label: {
                                            
                                            Text("?")
                                                .fontWeight(.regular)
                                                .frame(width: 70, height: 70)
                                                .foregroundColor(ColorManager .purple3)
                                                .font(.system(size: 20))
                                              
//                                                .blinking(duration: 2.0)
                                    })
                                }
                            

                            
                            
                            
    //          ********************************************** Carehearts *************
                      
  
                            
                            Spacer()
                                .frame(width: 20)
//
//                            NavigationLink(
//                                destination:  FH10(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
//                                label: {
//
//                                    Image(systemName: "info.circle")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 35, height: 35)
//                                        .foregroundColor(ColorManager .purple2)
////                                       .glow(color: ColorManager.purple4, radius: 3)
//                                        .opacity(0.5)
//                                })
                            
                            
                            Spacer()
                                .frame(width: 20)
                            
//                            ZStack {
//
//                                Image(systemName: "circle")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 60, height: 60)
//                                    .foregroundColor(Color .green)
//                                    .glow(color: ColorManager.purple4, radius: 20)
////                                    .blinking(duration: 2.0)
//
//
//                                NavigationLink( destination:  Step4_NuclearOption(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere, friendAtmospheres: homeData!.friendAtmospheres),
//                                                label: {
//                                    Text("Fix \nFight")
//                                        .fontWeight(.medium)
//                                        .frame(width: 60, height: 60)
//                                        .foregroundColor(Color.white)
//                                        .font(.system(size: 10))
//                                        .blinking(duration: 4.0)
//
//
//
//
//
//                                })
//
//
//                            }
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
                                .frame(width: 120, height: 120)
                                .glow(color: glowColor(mood: homeData!.atmosphere.mood), radius: 11)
                                .opacity(0.3)
                                .padding()
                            
                        })
                            Text("more...")
                            .fontWeight(.medium)
//                            .frame(width: 100, height: 100)
                          .foregroundColor(Color.white)
                            .font(.system(size: 15))
//                            .background(ColorManager .grey3)
//                            .multilineTextAlignment(.center)
//                            .opacity(1.0)
//                            .cornerRadius(50)
//                            .shadow(color: Color.white, radius: 2, x: 0, y: 1)
                            .blinking(duration: 2.0)
                            .opacity(0.6)
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
                            .frame(height: 600)
                    }
                }
                
                if homeData?.groups != nil && homeData?.user != nil {
                    ChatGroupsView(user: homeData!.user, groups: groups)
                        .environmentObject(sessionManager)
                        .offset(y: -3)
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
            return Color(.systemRed)
        case 1:
            return Color(.systemCyan)
        case 2:
            return Color(.systemCyan)
        case 3:
            return Color(.systemCyan)
        case 4:
            return Color(.systemGreen)
        case 5:
            return Color(.orange)
        case 6:
            return Color(.systemYellow)
        case 7:
            return Color(.systemGreen)
        case 8:
            return Color(.systemRed)
        case 9:
            return Color(.systemRed)
       
        default:
            return Color(.systemGray3)
            
//            return ColorManager.pmbc_blue
            
        }
    }
    
    
    
    private func chatButtonTapped() {
        if newGroupMembers.count > 0 {
            for newId in newGroupMembers {
                for f in homeData!.friends {
                    if f.id == newId {
                        //MARK: Sending push notification to friend "f"
                        RestApi.instance.sendPushNotification(title: "BestFriends", body: homeData!.user.firstName + " " +  String(homeData!.user.lastName.first!) + "wants to talk in Chat", APNToken: f.APNToken )
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


