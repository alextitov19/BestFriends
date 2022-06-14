//
//  LoginView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var homeData: HomeData?
    @State private var groups: [Group] = []
    @State private var planets: [Planet] = []
    
    @State private var selectedPlanet: Planet?
    
    @State private var focusPlanet = false
    @State private var showNewRoomNameDialog = false
    
    @State private var newGroupMembers: [String] = []
    
    @State private var chatGroupsView = ChatGroupsView(user: User(id: "", firstName: "", lastName: "", atmosphere: ""), groups: [])
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background Image...
                Image("blueBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .onAppear {
                        getHomeData()
                    }
                
                // Stars animation...
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .onTapGesture(perform: backgroundTapped)
                
                VStack {
                    // Top 2 planets
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
                                .frame(width: 80)
                            
                            planets[1]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[1].user.id)
                                    if (selectedPlanet != nil) && selectedPlanet!.user.id == planets[1].user.id {
                                        selectedPlanet = nil
                                    } else {
                                        selectedPlanet = planets[1]
                                    }
                                })
                        }
                    }
                    // Main planet
                    if homeData != nil {
                        EmptyView()
                            .alert(isPresented: $showNewRoomNameDialog,
                                   TextAlert(title: "Create New Room",
                                             message: "Input the desired name for the new chat room",
                                             keyboardType: .numberPad) { name in
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
                                    .frame(width: 125, height: 125)
                                    .onTapGesture(perform: mainPlanetTapped)
                                    .glow(color: glowColor(mood: homeData!.atmosphere.mood), radius: 20)
                                    .padding()
                                    .onAppear(perform: {print("Atm mood: ", homeData!.atmosphere.mood)})
                                
                            }
                            
                            // Tapped on the main planet
                            if focusPlanet {
                                PlanetActionsView(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends, friendAtmospheres: homeData!.friendAtmospheres)
                                    .environmentObject(sessionManager)
                            }
                            
                            
                        }
                    }
                    // Middle 2 planets
                    HStack {
                        if planets.count > 2 && !focusPlanet {
                            planets[2]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[2].user.id)
                                    if (selectedPlanet != nil) && selectedPlanet!.user.id == planets[2].user.id {
                                        selectedPlanet = nil
                                    } else {
                                        selectedPlanet = planets[2]
                                    }
                                    
                                })
                        }
                        
                        if planets.count > 3 && !focusPlanet {
                            Spacer()
                                .frame(width: 80)
                            
                            planets[3]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[3].user.id)
                                    if (selectedPlanet != nil) && selectedPlanet!.user.id == planets[3].user.id {
                                        selectedPlanet = nil
                                    } else {
                                        selectedPlanet = planets[3]
                                    }
                                    
                                })
                        }
                    }
                    
                    // Bottom planet
                    if planets.count > 4 && !focusPlanet {
                        planets[4]
                            .onTapGesture(perform: { friendPlanetTapped(id: planets[4].user.id)
                                if (selectedPlanet != nil) && selectedPlanet!.user.id == planets[4].user.id {
                                    selectedPlanet = nil
                                } else {
                                    selectedPlanet = planets[4]
                                }
                            })
                        //                            .padding()
                    }
                    
                    if newGroupMembers.count > 0 && !focusPlanet {
                        Button(action: {
                            chatButtonTapped()
                        }, label: {
                            Text("Chat")
                                .fontWeight(.regular)
                                .frame(width: 100, height: 30)
                                .foregroundColor(.white)
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                        })
                        
                    }
                    
                    //                    Text("received push notification to")
                    
                    Spacer()
                        .frame(height: 25)
                    
                    //                    MARK: Connect to Chat Now page
                    
                    if selectedPlanet != nil {
                        if homeData!.groups.count > 0 {
                            NavigationLink(destination: UrgentChatInvite(user: homeData!.user, owner: homeData!.user, group: homeData!.groups[0]),
                                           label: {
                                Text("Urgent Chat Invite")
                                    .fontWeight(.thin)
                                    .frame(width: 190, height: 25)
                                    .foregroundColor(.white)
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .opacity(0.8)
                            })
                        }
                        
                        
                        NavigationLink(destination: Friend1VaultPractice(user: homeData!.user, friend: selectedPlanet!.user, groups: homeData!.groups, friendAtmosphere: homeData!.atmosphere),
                                       label: {
                            Text("Friend Changed Mood")
                                .fontWeight(.thin)
                                .frame(width: 190, height: 25)
                                .foregroundColor(.white)
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .opacity(0.8)
                                .onAppear(perform: {print("Selected: ", selectedPlanet!.user)})
                        })
                        NavigationLink(destination: WhoFighting(),
                                       label: {
                            Text("ALERT - FriendGroup")
                                .fontWeight(.thin)
                                .frame(width: 190, height: 25)
                                .foregroundColor(.white)
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .opacity(0.8)
                        })
                        
                        NavigationLink(destination: VirtualHug(),
                                       label: {
                            Text("HUG")
                                .fontWeight(.thin)
                                .frame(width: 190, height: 25)
                                .foregroundColor(.white)
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .opacity(0.8)
                        })
                        
                        
//                        MARK: Want to send this to the new [BestFriendsPlaylists] page
//                        NavigationLink(destination: EmptyView(),
//                                        label: {
//                             Text("Friend Sent PlayList")
//                                 .fontWeight(.thin)
//                                 .frame(width: 190, height: 25)
//                                 .foregroundColor(.white)
//                                 .background(ColorManager.purple3)
//                                 .cornerRadius(15)
//                                 .opacity(0.8)
//                         })
//                         
                        
                        
                        
                        
                        
                    }
                    
                }
                
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
        }
    }
    
    private func getHomeData() {
        RestApi.instance.getHomeData().then{ data in
            print("Got HomeData: ", data)
            homeData = data
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
            return Color(.systemCyan)
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
                        RestApi.instance.sendPushNotification(title: "Group chat", body: homeData!.user.firstName + " " +  String(homeData!.user.lastName.first!) + " needs to talk", APNToken: f.APNToken ?? "")
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
    
}
