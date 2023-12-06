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
//            let friends: [User]
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
    
    @State private var cancelledChatRoom = false
    
//    @StateObject var model = Model.loadData
    
    @State private var scale = 1.0
    
    
    //**************************
        @State var animate: Bool = false
        let animation: Animation = Animation.linear(duration:3.0).repeatForever(autoreverses: false)
    //**************************
    
    
    
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
                        .opacity(0.2)
                        .ignoresSafeArea()
                    
                    AdPlayerView(name: "sky2")
                        .ignoresSafeArea()
                        .blendMode(.screen)
                        .opacity(0.9)
                    
                    
//                    AdPlayerView(name: "sendHearts1")
//                        .ignoresSafeArea()
//                        .blendMode(.screen)
//                        .opacity(0.35)
                    
           
             
                VStack {
                    if ((homeData) != nil) {
                        
                        //  ************************************************
                        //  ************************************************
                        
                        Spacer()
                            .frame(height: 20)
                        
                    
                HStack {
                        
                            ZStack {
                                
                                Image(systemName: "bell")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(Color.cyan)
                                //                                    .blinking(duration: 2.0)
//                                    .glow(color: ColorManager.purple4, radius: 3)
                                    .opacity(0.5)
                                    .onTapGesture {
                                        print("Clicked notification bell")
                                        presentingIANs.toggle()
                                    }
                                
                                NavigationLink(destination: SaySomethingNice6(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, groups: homeData!.groups, friendAtmospheres: homeData!.friendAtmospheres), isActive: $inviteClicked
                                ) { EmptyView() }
                                
                                
                                Image(systemName: "bell")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 27, height: 27)
                                    .foregroundColor(Color.white)
                                    .opacity(0.125)
//                                    .rotationEffect(.degrees(-10))
                                    .glow(color: Color.white, radius: 1)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 3)
                                    .blinking(duration: 2.0)
                                 
                            }
         
                            Spacer()
                                .frame(width: 270)

                            NavigationLink(
                                destination:  SettingsView(user: homeData!.user, friends: homeData!.friends, atmosphere: homeData!.atmosphere),
                                label: {
                                    
                                    Image("iconSettings")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 27, height: 27)
                                        .foregroundColor(ColorManager .purple5)
                                        .glow(color: Color.purple, radius: 2)
                                        .opacity(0.9)
                                })
                            
                        }
                        
    //  ************************************************
                //  ************************************************
                        
                        HStack {
                            
                            NavigationLink(
                                destination:  HugPreload(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere, friendAtmospheres: homeData!.friendAtmospheres),
                                label: {
                                    
                                    ZStack {
                                        Image(systemName: "circle.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(Color.cyan)
                                            .opacity(0.95)
                                  
                                        
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(Color.purple)
                                            .glow(color: Color.white, radius: 0.3)
                                            .shadow(color: .white, radius: 1, x: 3, y: -0.5)
                                            .opacity(0.95)
                                    }
                                })
                            
                            Spacer()
                                .frame(width: 20)
               
                            NavigationLink(
                                destination:  RR32(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
                                label: {
                                    
                                    ZStack {
                                        Image("iconVibes75")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 55, height: 55)
                                            .foregroundColor(ColorManager .purple4)
                                            .glow(color: ColorManager .grey1, radius: 3)
//                                            .blinking(duration: 4.0)
                                            .opacity(0.8)
                                        

                                    }
                                })
                            
                            Spacer()
                                .frame(width: 20)
                            
                            ZStack {
                                
                                NavigationLink(
                                    destination:  RR56(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere, friendAtmospheres: homeData!.friendAtmospheres),
                                    label: {
                                        
                                        ZStack {
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 35, height: 35)
                                                .foregroundColor(ColorManager .purple3)
                                                .opacity(0.95)

                                            Image(systemName: "heart.fill")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(Color.orange)
                                                .glow(color: Color.white, radius: 0.3)
                                                .shadow(color: .white, radius: 1, x: 3, y: -0.5)
                                                .opacity(0.95)
                                            

                                        }
                                    })
                          
                            }
                        }
                        
    
//    ***************************************** Now at bottom of page right *****
//                        VStack {
//
//                            HStack {
//
//
//
//                                    NavigationLink(
//                                        destination:  PhotoPopView(user: homeData!.user, friends: homeData!.friends),
//                                        label: {
//
//                                            Image("IconPhotoNew")
//                                                .resizable()
//                                                .scaledToFit()
//                                                .frame(width: 35, height: 35)
//                                                .rotationEffect(.degrees(-7))
//                                                .foregroundColor(ColorManager .purple5)
//                                                .glow(color: Color.purple, radius: 2)
//                                                .opacity(0.9)
//
//
//                                        })
//
//                                    NavigationLink(
//                                        destination:  RR33(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
//                                        label: {
//
//
//
//                                                Image("IconFightNew")
//                                                    .resizable()
//                                                    .scaledToFit()
//                                                    .frame(width: 40, height: 40)
//                                                    .foregroundColor(Color.white)
//                                                    .opacity(0.95)
//
//                                        })
//
//
//                                NavigationLink(
//                                    destination:  BestFriendMessages(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres),
//                                    label: {
//
//                                            Image("IconRoomNew")
//                                                .resizable()
//                                                .scaledToFit()
//                                                .frame(width: 40, height: 40)
//                                                .foregroundColor(Color.white)
//                                                .opacity(0.95)
//
//                                    })
//                                }
//                            }
                        
                        
                        
//    ****************************************
                        
                    
                        Spacer()
                        
                        ZStack {
                     
                            
                            Spacer()
                                .frame(height: 400)
                          
                        }
                        
                   
    VStack {
                           
        HStack {
            
            
            Text("")
                .fontWeight(.light)
                .font(.system(size: 10))
                .cornerRadius(7)
                .opacity(0.6)
                .glow(color: ColorManager .grey4, radius: 3)
                .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
                .blinking(duration: 4.0)
            
            
            
            
            
            
            Spacer()
                .frame(width: 50)
//
//            ZStack {
//                //            ******************** RR36Info(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups)
//
//                NavigationLink(
//                    destination:  RR4(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
//                    label: {
//                        ZStack {
//
//                            //*********************************************** Motion
//                            GeometryReader { geo in
//                                HStack(spacing: 300) {
//
//                                    ZStack {
//
//                                        //    ********************************************
//                                        Image("FatGuy200")
//                                            .aspectRatio(contentMode: .fit)
//                                            .blinking(duration: 4.0)
//
//                                        Text("demo")
//                                            .fontWeight(.regular)
//                                            .frame(width: 55, height: 30)
//                                            .foregroundColor(Color.black)
//                                            .font(.system(size: 17))
//                                            .background(ColorManager .purple1)
//                                            .cornerRadius(7)
//                                            .rotationEffect(.degrees(-25))
//                                            .opacity(0.8)
//                                        //                                            .glow(color: ColorManager .grey4, radius: 3)
//                                            .shadow(color: ColorManager .purple3, radius: 2, x: 0, y: 3)
//                                            .blinking(duration: 4.0)
//
//                                        //**********************************************************
//
//                                    }
//
//                                    Image("")
//                                        .aspectRatio(contentMode: .fit)
//                                        .frame(width: geo.size.width, alignment: .leading)
//
//
//
//                                }
//                                .frame(width: geo.size.width, height: geo.size.height,
//                                       alignment: animate ? .trailing : .leading)
//                            }
//                            .ignoresSafeArea()
//                            .onAppear {
//                                withAnimation(animation) {
//                                    animate.toggle()
//                                }
//
//                                //*********************************************** Motion
//
//
//
//                            }
//                        }
//                    }
//                )}
            
            VStack {
//                NavigationLink(
//                    destination:  PhotoPopView(user: homeData!.user, friends: homeData!.friends),
//                    label: {
//
//                        Image("IconPhotoNew")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 35, height: 35)
//                            .rotationEffect(.degrees(-7))
//                            .foregroundColor(ColorManager .purple5)
//                            .glow(color: Color.purple, radius: 2)
//                            .opacity(0.9)
//
//
//                    })
                
                
//                NavigationLink(
//                    destination:  RR33(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
//                    label: {
//
//
//
//                        Image("IconFightNew")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 40, height: 40)
//                            .foregroundColor(Color.white)
//                            .opacity(0.95)
//
//                    })
                
            }
        }
                            
//   *************************************************** Old photopop and settings ***
               
        
    
        
        
        
        
//******************************************************
                                
                                ZStack {

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
                                cancelledChatRoom = true
                            }
                        })
                        .frame(width: 0, height: 0)
                    
                    ZStack {
                        

                            NavigationLink(destination: EmptyView(), label: {
                                PlanetView(planet: homeData!.atmosphere.planet, mood: homeData!.atmosphere.mood)
                                    .scaledToFit()
                                    .frame(width: 130, height: 130)
                                    .glow(color: glowColor(mood: homeData!.atmosphere.mood), radius: 20)
                                    .opacity(0.9)
                                    .padding()

                        })
                        
                        Text("tap")
                            .font(.system(size: 60))
                            .foregroundColor(Color.white)
                            .fontWeight(.regular)
                            .opacity(0.99)
                            .multilineTextAlignment(.center)
                            .blinking(duration: 2.0)

                        
                        
//****** CENTER PLANET****************** CENTER PLANET*****************
                        
//******************************* CENTER PLANET****************** CENTER PLANET**********
                        
                        NavigationLink(
                            destination:   RR18(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
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
                            cancelledChatRoom = false
                            chatButtonTapped()
                        }, label: {
                            
                            ZStack {
                                
                                if !cancelledChatRoom {
                                    Image("iconChat5")
                                        .opacity(0.8)
                                        .frame(width: 120, height: 120)
                                    
                                    
                                    Text("tap")
                                        .font(.system(size: 40))
                                        .foregroundColor(ColorManager .grey2)
                                        .fontWeight(.thin)
                                        .opacity(0.7)
                                        .multilineTextAlignment(.center)
//                                        .blinking(duration: 2.0)
                                    
                                    
                                }

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
            return Color(.systemOrange)
        case 7:
            return Color(.systemGreen)
        case 8:
            return Color(.systemPurple)
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
                        RestApi.instance.sendPushNotification(title: "BestFriends", body: homeData!.user.firstName + " " +  String(homeData!.user.lastName.first!) + "  Would like to talk in Chat", APNToken: f.APNToken )
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


                
