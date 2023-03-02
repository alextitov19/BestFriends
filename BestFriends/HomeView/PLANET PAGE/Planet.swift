//
//  Planet.swift
//  BestFriends
//
//  Created by Alex Titov on 3/31/22.
//

import SwiftUI

struct Planet: View {
    
    let user: User
    let atmosphere: Atmosphere
    
    @State private var online = false
    
    var body: some View {
        VStack {
            if online {
                PlanetView(planet: atmosphere.planet, mood: atmosphere.mood)
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .glow(color: glowColor())
                    .onAppear(perform: {print("Mood: ", atmosphere.mood)})
                
                
                Text(user.firstName + " " + String(user.lastName.first!))
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
            } else {
                PlanetView(planet: atmosphere.planet, mood: atmosphere.mood)
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .onAppear(perform: {print("Mood: ", atmosphere.mood)})
                
                
                Text(user.firstName + " " + String(user.lastName.first!))
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
            }
        }
        .onAppear(perform: loadData)
    }
    
    private func glowColor() -> Color {
        switch atmosphere.mood {
        case 0:
            return ColorManager.pmbc_blue
        case 1:
            return ColorManager.pmbc_blue
        case 2:
            return ColorManager.pmbc_blue
        case 3:
            return ColorManager.pmbc_blue
        case 4:
            return ColorManager.pmbc_green
        case 5:
            return ColorManager.orange3
        case 6:
            return Color.yellow
        case 7:
            return Color.yellow
        case 8:
            return Color.yellow
        case 9:
            return Color.yellow
        default:
            return ColorManager.pmbc_blue
        }
    }
    
    private func loadData() {
        RestApi.instance.getUserOnlineStatus(id: user.id).then({ response in
            online = response
        })
    }
}

struct PlanetView: View {
    let planet: Int
    let mood: Int
    
    var body: some View {
        Image("planet_\(planet)")
            .resizable()
    }
}

struct PlanetActionsView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var showingAlert = false
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    var body: some View {
        
        VStack {
            
            HStack {
                Image("home-alt2")
                    .frame(width: 50, height: 25)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .background(Color .black)
                    .cornerRadius(15)
                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                    .opacity(0.70)
                
                NavigationLink(
                    destination: StartHere1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                    label: {
                       
                        Image("settings icon")
                            .frame(width: 50, height: 25)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .background(Color .black)
                          .cornerRadius(15)
                          .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                          .opacity(0.70)
                    })
                
                
            }
            
//            NavigationLink(
//                destination: InfoWhyLoveFB(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                label: {
//                    Text("Start Here")
//                    //                    Image("Start Here")
//                        .frame(width: 120, height: 25)
//
//                        .foregroundColor(.green)
//                        .font(.system(size: 23))
//                        .background(Color .black)
//                        .cornerRadius(15)
//                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                        .opacity(0.70)
//                })
//
                
                
                
            Spacer()
                .frame(height: 20)
                
                
                
            HStack {
                
                
                HStack {
                    
                    
                    VStack {
                        
//                        PickMediator(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups
                       
                      
                        
                        NavigationLink(destination: AtmosphereInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .white, radius: 3, x: 4, y: 4)
                                    .glow(color: ColorManager.purple4, radius: 7)
                                    .opacity(0.80)

                                VStack {
                                    Image("NiceIconNew2")
                  
                                }
                            }
                            
                        })
                        
                        Spacer()
                            .frame(height: 35)
                        

                       
                        
                        NavigationLink(destination: MyRoomInfo(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .white, radius: 3, x: 4, y: -4)
                                    .glow(color: ColorManager.purple4, radius: 7)
                                    .opacity(0.80)
                                
                                VStack {
                                
                                    Image("IconRoomNew")
                                }
                            }
                            
                            
                        }
                        )}
                    
                    
                    
//                    ************************************************
                    

                    
                    VStack {
                        
                        
                      
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        
                        NavigationLink(destination:  AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .white, radius: 3, x: 0, y: 4)
                                    .glow(color: ColorManager.purple4, radius: 7)
                                    .opacity(0.80)
                               
                                VStack {
                                    ZStack {
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .foregroundColor(ColorManager .grey3)
                                            .frame(width: 90, height: 70)
                                           
                                        
                                            .opacity(0.95)
                                        
//                                        INFOPreload2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups
                                        
                                       
                                        
                                        NavigationLink(destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                                            label: {
                                                VStack {
                                                    Text("START")
                                                        .fontWeight(.light)
                                                        .frame(width: 60, height: 40)
                                                        .foregroundColor(ColorManager .grey1)
                                                        .font(.system(size: 20))
                                                        .background(ColorManager .grey3)
                                                        .cornerRadius(10)
                                                    
//                                                    Text("Here")
//                                                        .fontWeight(.light)
//                                                        .frame(width: 60, height: 37)
//                                                        .foregroundColor(Color .green)
//                                                        .font(.system(size: 18))
//                                                        .background(ColorManager .purple1)
//                                                        .cornerRadius(10)
//
                                                    
                                                }
                                            })
                                    }
                                    
//
////                                    Image("iconStar 1")
//                                    NavigationLink(
//                                        destination: InfoWhyLoveFB(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                                        label: {
//
//                                            Text("Start \nHere")
//                                            //                    Image("Start Here")
//                                                .frame(width: 60, height: 60)
//
//                                                .foregroundColor(Color .green)
//                                                .font(.system(size: 23))
//                                                .background(ColorManager .purple5)
//                                                .cornerRadius(15)
//                                                .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                                .opacity(0.70)
//                                        })

                                }
                            }
                        })
                    
                        
                        
                        Spacer()
                            .frame(height: 25)
                        
                        
                        //
                        //                    MARK: First setup
                        
//                        NavigationLink(destination: InfoWhyLoveFB(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                       
                        NavigationLink(destination: BuiltForTeens(user: user, atmosphere: atmosphere, friends: friends, groups: groups),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 140, height: 140)
                                    .foregroundColor(ColorManager.purple2)
                                    .shadow(color: .white, radius: 17, x: 0, y: 0)
                                    .shadow(color: .white, radius: 20, x: 0, y: 0)
                                    .glow(color: ColorManager.purple4, radius: 3)
                                    .opacity(0.5)
                                
                    VStack {
                                
                              
                   
                        Text("my")
                            .foregroundColor(.white)
                            .font(.system(size: 19, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)

//                        Spacer()
//                            .frame(height: 5)

                        
                                    Text("Friends")
                                        .foregroundColor(.white)
                                        .font(.system(size: 30, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        .opacity(0.50)
                       
                        Spacer()
                            .frame(height: 13)
//                        
//                                    Text("with BFF")
//                                        .foregroundColor(Color .white)
//                                        .italic()
//                                        .font(.system(size: 15, weight: .light))
//                                       .shadow(color: .black, radius: 1, x: 0, y: 1)
//                                        .opacity(0.90)

                        
                        
                                }
                            }
                        })
                        
                        
                        Spacer()
                            .frame(height: 25)
                        
                   
                        
                        NavigationLink(destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups),
                                       label: {
                            
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .white, radius: 3, x: 0, y: -4)
                                    .glow(color: ColorManager.purple4, radius: 7)
                                    .opacity(0.80)
                             
//                                    .frame(width: 110, height: 110)
//                                    .foregroundColor(ColorManager.purple4)
//
//                                    .shadow(color: .white, radius: 2, x: 4, y: 0)
//                                    .glow(color: ColorManager.purple4, radius: 0)
//                                    .opacity(0.2)
                                
                                VStack {
                                    
                                    
                                        Image("IconHugNew")
                                   
                                    

                                    
                                }
                            }
                        })
                    }
                    
                    
                    VStack {
                        
                        
                        NavigationLink(destination: PhotoPopView(user: user, friends: friends),
                                       label: {
                            ZStack {
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .white, radius: 3, x: -4, y: 4)
                                    .glow(color: ColorManager.purple4, radius: 7)
                                    .opacity(0.8)
                                
                                VStack {

                                    Image("IconPhotoNew")
                        
 
                                }
                            }

                        })
                        
                    
                        
                        Spacer()
                            .frame(height: 35)
                        
                        
                        //                    NavigationLink(destination: EmptyView(),
                        
                        NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups),
                                       
                                       
                                       //                                                  NavigationLink(destination: HorizonsPreload1(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres),
                                       label: {
                            
                            ZStack {
                                Circle()
                                //
                                
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .white, radius: 3, x: -4, y: -4)
                                    .glow(color: ColorManager.purple4, radius: 7)
                                    .opacity(0.80)
                                
                                VStack {
                                    
                                        Image("IconFightNew")
                                    

                                }
                            }
                        })
                       
                    
                            
                            
                        
                        
                    }
             
                }
                
            }
            
        }
        
    }
    
}
