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
    
    @State private var selectedPlanet: Planet?
    
    @State private var focusPlanet = false
    @State private var showNewRoomNameDialog = false
    
    @State private var newGroupMembers: [String] = []
    
    @State private var chatGroupsView = ChatGroupsView(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: "", chatBackground: ""), groups: [])
    
    @State private var presentingPhotoPop = false
    var body: some View {
        NavigationView {
            
            
            ZStack {
                
                           Image("purpleBackground")
                                .resizable()
                                .ignoresSafeArea()
                                .scaledToFill()
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
                
                // Stars animation...
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                //                    .scaledToFill()
                    .blendMode(.screen)
                    .onTapGesture(perform: backgroundTapped)
                
      
                
                
                
            
                    VStack {
//                        Text("got notification - tap friend's planet")
//                            .font(.system(size: 15))
//                            .italic()
////                            .foregroundColor(ColorManager .grey2)
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
//                 
//                        
//                            .frame(width: 290, height: 30)
//                            .foregroundColor(.white)
//                            .font(.system(size: 20))
//                            .background(Color .black)
//                          .cornerRadius(15)
//                          .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                          .opacity(0.70)
//                    
//                        Spacer()
//                            .frame(height: 50)
                    HStack {
                        
                        if planets.count > 0 && !focusPlanet {
                            planets[0]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[0].user.id)
                                    if (selectedPlanet != nil) && selectedPlanet!.user.id == planets[0].user.id {
                                        selectedPlanet = nil
                                    } else {
                                        selectedPlanet = planets[0]
                                    }
                                })
                        }
                        
                        if planets.count > 1 && !focusPlanet {
                            Spacer()
                                .frame(width: 35)
                            //                                .frame(width: 40, height: 40)
                            //                                .offset(x: showItems ? 75 : 0, y: showItems ? 125: 0)
                            
                            planets[1]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[1].user.id)
                                    if (selectedPlanet != nil) && selectedPlanet!.user.id == planets[1].user.id {
                                        selectedPlanet = nil
                                    } else {
                                        selectedPlanet = planets[1]
                                    }
                                })
                        }
                        if planets.count > 2 && !focusPlanet {
                            Spacer()
                                .frame(width: 35)
                            planets[2]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[2].user.id)
                                    if (selectedPlanet != nil) && selectedPlanet!.user.id == planets[2].user.id {
                                        selectedPlanet = nil
                                    } else {
                                        selectedPlanet = planets[2]
                                    }
                                    
                                })
                        }
                    }
                    // Main planet
                    
                    
                    
                    
                    // Bottom 3 planets
                    HStack {
                        
                        
                        if planets.count > 3 && !focusPlanet {
                            
                            
                            planets[3]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[3].user.id)
                                    if (selectedPlanet != nil) && selectedPlanet!.user.id == planets[3].user.id {
                                        selectedPlanet = nil
                                    } else {
                                        selectedPlanet = planets[3]
                                    }
                                    
                                })
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
                                // Main planet
                                if !focusPlanet {
                                    PlanetView(planet: homeData!.atmosphere.planet, mood: homeData!.atmosphere.mood)
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .onTapGesture(perform: mainPlanetTapped)
                                        .glow(color: glowColor(mood: homeData!.atmosphere.mood), radius: 20)
                                        .padding()
                                        .onAppear(perform: {print("Atm mood: ", homeData!.atmosphere.mood)})
                                    
                                }
                                
                                // Tapped on the main planet
                                if focusPlanet {
                                    PlanetActionsView(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups)
                                        .environmentObject(sessionManager)
                                }
                                
                                
                            }
                        }
                        
                        //                        if planets.count > 4 && !focusPlanet {
                        
                        
                        // Old 3rd Bottom planet
                        if planets.count > 4 && !focusPlanet {
                            planets[4]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[4].user.id)
                                    if (selectedPlanet != nil) && selectedPlanet!.user.id == planets[4].user.id {
                                        selectedPlanet = nil
                                    } else {
                                        selectedPlanet = planets[4]
                                    }
                                })
                            
                            
                            
                        }
                        
                        
                        
                        //                                                   .padding(50)
                    }
                    
                    if newGroupMembers.count > 0 && !focusPlanet {
                        Button(action: {
                            chatButtonTapped()
                        }, label: {
                            Text("Create Chat Rooms")
                                .fontWeight(.light)
                                .frame(width: 180, height: 30)
                                .foregroundColor(.white)
                                .background(ColorManager.purple3)
                                .cornerRadius(10)
                                .opacity(0.8)
                        })
                        
                    }
             
                    
                    Spacer()
                        .frame(height: 0)
               
                    
                    if selectedPlanet != nil {
                        if homeData!.groups.count > 0 {
                            NavigationLink(destination: UrgentChatInvite(user: homeData!.user, owner: homeData!.user, group: homeData!.groups[0]),
                                           label: {
                                Text("Song 4 Playlist - coming soon")
                                    .fontWeight(.light)
                                    .frame(width: 0, height: 0)
                                    .foregroundColor(.white)
                                    .background(ColorManager.purple3)
                                    .cornerRadius(10)
                                    .opacity(0.7)
                            })
                        }
                        
                   
                        
                        Spacer()
                            .frame(height: 20)
                        
                        
                        HStack {
                            
                            VStack {
                                
                                NavigationLink(destination: Friend1VaultPractice(user: homeData!.user, friend: selectedPlanet!.user, friends: homeData!.friends, groups: homeData!.groups, friendAtmosphere: selectedPlanet!.atmosphere),                                        label: {
                                    Text("Alert - Friend's 'Vibe' changed")
                                        .fontWeight(.light)
                                        .frame(width: 255, height: 30)
                                        .foregroundColor(ColorManager .grey1)
                                        .background(ColorManager.red)
                                        .cornerRadius(10)
                                        .opacity(0.7)
                                })
                                
                                Spacer()
                                    .frame(height: 15)
                                
                                
                                NavigationLink(destination: SaySomethingNice7(user: homeData!.user, friend: selectedPlanet!.user, friends: homeData!.friends, groups: homeData!.groups, friendAtmosphere: selectedPlanet!.atmosphere),
                                               label: {
                                    Text("Friend sent 'Nice' message")
                                        .fontWeight(.light)
                                        .frame(width: 255, height: 30)
                                        .foregroundColor(.white)
                                        .background(ColorManager .purple3)
                                        .cornerRadius(10)
                                        .opacity(0.7)
                                })
                            }
                        }
                        
                   
                        Spacer()
                            .frame(height: 15)
                        
                        HStack {
                            NavigationLink(destination: VirtualHug(),
                                           label: {
                                Text("Awe, you've got a HUG")
                                    .fontWeight(.light)
                                    .frame(width: 255, height: 30)
                                    .foregroundColor(.white)
                                    .background(ColorManager .purple3)
                                    .cornerRadius(10)
                                    .opacity(0.7)
                            })
  
                        }
                        Spacer().frame(height:15)
                        
                        
                        HStack {
//                            NavigationLink(destination: Friend1VaultPractice(user: homeData!.user, friend: selectedPlanet!.user, friends: homeData!.friends, groups: homeData!.groups, friendAtmosphere: selectedPlanet!.atmosphere),                                        label: {
//                                Text("Alert - Friend's 'Vibe' changed")
//                                    .fontWeight(.regular)
//                                    .frame(width: 255, height: 30)
//                                    .foregroundColor(.white)
//                                    .background(ColorManager.red)
//                                    .cornerRadius(10)
//                                    .opacity(0.7)
//                            })
//
                         
                            
//                            NavigationLink(destination: SendSongPush(user: homeData!.user, friends: homeData!.friends),
//                                           label: {
//                                Text("New Song")
//                                    .fontWeight(.light)
//                                    .frame(width: 120, height: 30)
//                                    .foregroundColor(.white)
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .opacity(0.4)
//                            })

//
//                            NavigationLink(destination: DreamVaultView(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
//                                           label: {
//                                Text("Dream Story")
//                                    .fontWeight(.light)
//                                    .frame(width: 0, height: 0)
//                                    .foregroundColor(.white)
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .opacity(0.4)
//                            })
                        }

                        VStack {
                          
//
//                            NavigationLink(destination: WhoFighting(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups),
//                                           label: {
//                                Text("Let's try to 'Fix-this-mess'")
//                                    .fontWeight(.regular)
//                                    .frame(width: 255, height: 30)
//                                    .foregroundColor(.white)
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(10)
//                                    .opacity(0.7)
//                            })
                            
                            
                            
//                            DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups
                            
                            
                            NavigationLink(destination: DreamVaultView(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres, groups: homeData!.groups),
                                           label: {
                                Text("Dreams we dare but whisper")
                                    .fontWeight(.light)
                                    .frame(width: 255, height: 30)
                                    .foregroundColor(.white)
                                    .background(ColorManager.purple3)
                                    .cornerRadius(10)
                                    .opacity(0.7)
                            })
                            
                            Spacer()
                                .frame(height: 15)

                                Text("Hide Dropdown, tap friend's planet")
                                    .fontWeight(.light)
                                    .frame(width: 310, height: 30)
                                    .foregroundColor(.white)
                                    .background(ColorManager.purple3)
                                    .cornerRadius(10)
                                    .opacity(0.7)
                            
                            
                            
                        }
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 150)
                        
                    }
                    
                }
                Spacer()
                if homeData?.groups != nil && homeData?.user != nil {
                    ChatGroupsView(user: homeData!.user, groups: groups)
                        .environmentObject(sessionManager)
                    
                    //  MARK: When toggle between Home view and Planet the [Atmosphere] and [FiendValult] buttons show up on Plant view and do not go away on Home view when the fiend's planet is tapped.
                    //     MARK: Can not get the BlueMode to link to BlueMode page
                    
                    //                    if selectedPlanet != nil {
                    //                        AtmosphereMain2(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends)
                    //
                }

            }
        }.navigationViewStyle(StackNavigationViewStyle())
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
    
    // Preform when main planet is tapped
    private func mainPlanetTapped() {
        if !focusPlanet {
            withAnimation {
                focusPlanet = true
            }
        }
    }
    
    // Preform when background (stars) is tapped
    private func backgroundTapped() {
        if focusPlanet {
            withAnimation {
                focusPlanet = false
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
    
    private func friendPlanetTapped(id: String) {
        // Add/remove friend to group memebrs
        if newGroupMembers.contains(id) {
            newGroupMembers.remove(at: newGroupMembers.firstIndex(of: id) ?? 0)
        } else {
            newGroupMembers.append(id)
        }
        print(newGroupMembers.count)
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
            
            
//            Spacer()
//                .frame(height: 100)
            
        }
    }
    
}


