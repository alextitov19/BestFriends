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
    
    @State private var planets: [Planet] = []
    
    @State private var selectedPlanet: Planet?
    
    @State private var focusPlanet = false
    
    @State private var newGroupMembers: [String] = []
    
    @State private var chatGroupsView = ChatGroupsView(groups: [])
    
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
                                    selectedPlanet = planets[0]
                                })
                        }
                        
                        if planets.count > 1 && !focusPlanet {
                            Spacer()
                                .frame(width: 80)
                            
                            planets[1]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[1].user.id)
                                    selectedPlanet = planets[1]
                                })
                        }
                    }
                    // Main planet
                    if homeData != nil {
                        ZStack {
                            // Main planet
                            if !focusPlanet {
                                PlanetView(planet: homeData?.atmosphere.planet ?? 0, mood: homeData?.atmosphere.mood ?? 0)
                                    .scaledToFit()
                                    .frame(width: 125, height: 125)
                                    .onTapGesture(perform: mainPlanetTapped)
                                    .glow(color: glowColor(), radius: 20)
                                    .padding()
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
                                    selectedPlanet = planets[2]

                                })
                        }
                        
                        if planets.count > 3 && !focusPlanet {
                            Spacer()
                                .frame(width: 80)
                            
                            planets[3]
                                .onTapGesture(perform: { friendPlanetTapped(id: planets[3].user.id)
                                    selectedPlanet = planets[3]

                                })
                        }
                    }
                    
                    // Bottom planet
                    if planets.count > 4 && !focusPlanet {
                        planets[4]
                            .onTapGesture(perform: { friendPlanetTapped(id: planets[4].user.id)
                                selectedPlanet = planets[4]
                            })
//                            .padding()
                    }
                    
                    if newGroupMembers.count > 0 && !focusPlanet {
                        Button(action: {
                            createGroup()
                        }, label: {
                            Text("Chat Invite")
                                .frame(width: 130, height: 40)
                                .foregroundColor(.white)
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                        })
                    }
                    
                    if selectedPlanet != nil {
                        NavigationLink(destination: AtmosphereMain2(user: homeData!.user, atmosphere: homeData!.atmosphere, friends: homeData!.friends),
                                        label: {
                            Text("Atmosphere")
                                .frame(width: 130, height: 40)
                                .foregroundColor(.white)
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                        })
//                        .padding()
                        
                        NavigationLink(destination: Friend1VaultPractice(user: homeData!.friends[0], friend: homeData!.user, friendAtmosphere: homeData!.atmosphere),
                                        label: {
                            Text("FriendVault")
                                .frame(width: 130, height: 40)
                                .foregroundColor(.white)
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                        })
                    
                    }
                    if newGroupMembers.count > 0 && !focusPlanet {
                        Button(action: {
                            createGroup()
                        }, label: {
                            Text("Fix BlueMode")
                                .frame(width: 130, height: 40)
                                .foregroundColor(.white)
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                        })
                    }
                    
                    
                    
                    
                }
                
                if homeData?.groups != nil {
                    ChatGroupsView(groups: homeData?.groups ?? [])
                        .environmentObject(sessionManager)
                }
            }
        }
    }
    
    private func getHomeData() {
        RestApi.instance.getHomeData().then{ data in
            print("Got HomeData: ", data)
            homeData = data
            RestApi.instance.registerAPNToken()
            
            

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
    private func glowColor() -> Color {
        switch homeData?.atmosphere.mood ?? 0 {
        case 0:
            return ColorManager.pmbc_blue
        case 1:
            return ColorManager.pmbc_green
        case 2:
            return ColorManager.pmbc_pink
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
    
    private func createGroup() {
        // Append self to group, create group
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
            RestApi.instance.createGroup(members: newGroupMembers).then {response in
                print("Create Group response: ", response)
            }
        }
    }
    
}
