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
                
                Color.black
                    .opacity(0.5)
                    .ignoresSafeArea()
      
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.5)
             
                VStack {
                    if ((homeData) != nil) {
                        
                        HStack {
                            
                            NavigationLink(
                                destination:  HugPreload(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere),
                                label: {
                                    
                                    ZStack {
                                        Image(systemName: "cube")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 55, height: 55)
                                            .foregroundColor(Color.white)
                                            .glow(color: Color.cyan, radius: 3)
                                            .opacity(0.15)
                                        //                        .blinking(duration: 4.0)
                                        //                     Text("CareHearts")
                                        //                         .font(.system(size: 9))
                                        //                         .foregroundColor(Color.white)
                                        //                         .fontWeight(.light)
                                        //                         .opacity(0.9)
                                        //                         .multilineTextAlignment(.center)
                                        
                                    }
                                })
                            
                            Spacer()
                                .frame(width: 10)
                            
                            
                            
                            NavigationLink(
                                destination:  RR32(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
                                label: {
                                    
                                    ZStack {
                                        Image("iconVibes75")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 90, height: 90)
                                            .foregroundColor(Color.white)
                                            .glow(color: Color.white, radius: 1.5)
//                                            .blinking(duration: 4.0)
                                            .opacity(0.8)
                                        
//                                        Text("What's \nUp!")
//                                            .font(.system(size: 11))
//                                            .foregroundColor(ColorManager .grey2)
//                                            .fontWeight(.light)
//                                            .opacity(0.9)
//                                            .multilineTextAlignment(.center)
                                    }
                                })
                            
                            Spacer()
                                .frame(width: 10)
                            
                            ZStack {
                                
                                NavigationLink(
                                    destination:  CH10(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere),
                                    label: {
                                        
                                        ZStack {
                                            Image(systemName: "cube")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 50, height: 50)
                                                .foregroundColor(Color.white)
                                                .glow(color: Color.cyan, radius: 3)
                                                .opacity(0.15)
                                            //                           .blinking(duration: 4.0)
                                            
                                        }
                                    })
                            }
                        }
                        
                        //    ****************************************
                        
                        
                        ZStack {
                            
                            Image("iconStar40")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .foregroundColor(ColorManager .grey3)
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
                                .frame(width: 55, height: 55)
                                .foregroundColor(ColorManager .grey2)
                                .opacity(0.4)
                                .rotationEffect(.degrees(-10))
                                .glow(color: ColorManager .grey2, radius: 3)
                                .shadow(color: Color.blue, radius: 2, x: 0, y: 3)
                                .blinking(duration: 3.0)
                            
                        }
                        
                        
                        
                        
                        //     ************************************************
                        //                        NavigationLink(
                        //                            destination:  RR33(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
                        //                            label: {
                        //
                        //                                ZStack {
                        ////                                    Image("iconFightG")
                        //                                    Image(systemName: "cube")
                        //                                        .resizable()
                        //                                        .scaledToFit()
                        //                                        .frame(width: 50, height: 50)
                        //                                        .foregroundColor(Color.white)
                        //                                        .glow(color: Color.cyan, radius: 3)
                        //                                        .opacity(0.155)
                        ////                                      .blinking(duration: 4.0)
                        //
                        //                                }
                        //
                        //                            })
                        
                        
                        
                        //***************************** Center Heart opeque **********************
                        
                        //************************************ **********************
                        
                        Spacer()
                        
                        ZStack {
                            //
                            //                            Image(systemName: "heart.fill")
                            //                                .resizable()
                            //                                .scaledToFit()
                            //                                .frame(width: 440, height: 410)
                            //                                .foregroundColor(Color.white)
                            //                                .opacity(0.010)
                            //                                .rotationEffect(.degrees(-20))
                            //                                .glow(color: Color.white, radius: 75)
                            //                                .shadow(color: Color.white, radius: 10, x: 0, y: 10)
                            //                                .blinking(duration: 4.0)
                            //
                            //                            VStack {
                            //
                            //
                            //
                            //                                Text("friendships")
                            //                                    .font(.system(size: 70))
                            //                                    .foregroundColor(Color.white)
                            //                                    .fontWeight(.light)
                            //                                    .opacity(0.1)
                            //                                    .multilineTextAlignment(.center)
                            //                                    .rotationEffect(.degrees(-20))
                            //                                    .glow(color: Color.white, radius: 75)
                            //                                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
                            //                                    .blinking(duration: 4.0)
                            //
                            //
                            
                            
                            //                ****************************************************************
                            
                            
                            Spacer()
                                .frame(height: 325)
                            
                            
                            
                        }
                        
                        
                        //          ********************** Bottom Icons *************
                        
                        VStack {
                            
                            
                            ZStack {
                                
                                NavigationLink(
                                    destination:  RR36Info(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
                                    label: {
                                        
                                        Image("iconRocket")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 75, height: 75)
                                            .foregroundColor(ColorManager .purple5)
                                            .glow(color: Color.purple, radius: 2)
                                            .blinking(duration: 3.0)
                                            .opacity(0.95)
                                    })
                            }
                            
                            HStack {
                                
                                ZStack {
                                    
                                    NavigationLink(
                                        destination:  PhotoPopView(user: homeData!.user, friends: homeData!.friends),
                                        label: {
                                            
                                            Image("IconPhotoNew")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                                .rotationEffect(.degrees(-7))
                                                .foregroundColor(ColorManager .purple5)
                                                .glow(color: Color.purple, radius: 2)
                                                .opacity(0.9)
                                                
                                            
                                        })
                                }
                                
                                
                                ZStack {
                                    NavigationLink(
                                        destination:  RR5(user: homeData!.user, friends: homeData!.friends),
                                        label: {
                                            
                                            Image("IconHugNew")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                                .foregroundColor(ColorManager .purple5)
                                                .glow(color: Color.purple, radius: 2)
                                                .opacity(0.9)
                                        })
                                }
                                
                                
                                //******************************************************
                                Spacer()
                                    .frame(width: 40)
                                
                                
                                ZStack {
                                    
                                    NavigationLink(
                                        destination:  SettingsView(user: homeData!.user, friends: homeData!.friends, atmosphere: homeData!.atmosphere),
                                        label: {
                                            
                                            Image("iconSettings")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                                .foregroundColor(ColorManager .purple5)
                                                .glow(color: Color.purple, radius: 2)
                                                .opacity(0.9)
                                        })
                                }
                                
                                
                                Spacer()
                                    .frame(width: 40)
                                
                                //******************************************************
                                
                                ZStack {
                                    
                                    
                                    NavigationLink(
                                        destination:  BestFriendMessages(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres),
                                        label: {
                                            
                                            Image("IconRoomNew")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 45, height: 45)
                                            //                                    .rotationEffect(.degrees(-7))
                                                .foregroundColor(ColorManager .purple5)
                                                .glow(color: Color.purple, radius: 2)
                                                .opacity(0.9)
                                        })
                                }
                                
                                
                                ZStack {
                                    
                                    
                                    NavigationLink(
                                        destination:  RR33(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
                                        label: {
                                            
                                            ZStack {
                                                //                                    Image("iconFightG")
                                                Image("iconFightG")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 50, height: 50)
                                                    .foregroundColor(ColorManager .purple5)
                                                    .glow(color: Color.purple, radius: 2)
                                                    .opacity(0.9)
                                                
                                            }
                                        })
                                    
                                }
                            }
                        }
                        
                        Spacer()
                    }
                }
                    
//******************************************************  //******************************************************
                
                

                
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
                        
//                        NavigationLink(destination: MyRoomView(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups), label: {
//                            PlanetView(planet: homeData!.atmosphere.planet, mood: homeData!.atmosphere.mood)
//                                .scaledToFit()
//                                .frame(width: 120, height: 120)
//                                .glow(color: glowColor(mood: homeData!.atmosphere.mood), radius: 11)
//                                .opacity(0.3)
//                                .padding()
                            

                            NavigationLink(destination: FH2(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups), label: {
                                PlanetView(planet: homeData!.atmosphere.planet, mood: homeData!.atmosphere.mood)
                                    .scaledToFit()
                                    .frame(width: 120, height: 120)
                                    .glow(color: glowColor(mood: homeData!.atmosphere.mood), radius: 11)
                                    .opacity(0.3)
                                    .padding()

                        })
                        
                        

//******************************* CENTER PLANET NAVIGATION *************************
                        
                        NavigationLink(
                            destination:   RR36Info(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
                            label: {

                                Image(systemName: "")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 120)
                                    .opacity(0.9)
                                    .foregroundColor(.white)
                                    .opacity(0.35)
                                    .blinking(duration: 2.0)
                            })
                       
                    }
                }
                
                
                if newGroupMembers.count > 0 {
                    VStack {
                        Spacer()
                        
                        Button(action: {
                            chatButtonTapped()
                        }, label: {
                            
                            ZStack {
                                
                                Image("iconChat5")
                                    .opacity(0.8)
                                    .frame(width: 120, height: 120)

                                }
                            
                        })
                        
                        Spacer()
                            .frame(height: 557)
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
            return Color(.systemOrange)
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


