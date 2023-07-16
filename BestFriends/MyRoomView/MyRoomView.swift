//
//  MyRoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/8/23.
//

import SwiftUI

struct MyRoomView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    var body: some View {
        ZStack {
            
            
            Color.black
                .ignoresSafeArea()
            
            AdPlayerView(name: "Galaxy2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.9)
            
     
            VStack {
                HStack {
                    
                    
//                    NavigationLink(
//                        destination:  SettingsView(user: user, friends: friends, atmosphere: atmosphere),
//                        label: {
//
//                            Image(systemName: "bell")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 35, height: 35)
//                                .opacity(0.5)
//                                .foregroundColor(.white)
//                        })
                    
                    NavigationLink(
                        destination:  FH10(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            
                            Image(systemName: "info.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 35)
                                .opacity(0.5)
                                .foregroundColor(.white)
                        })
                    
                    Spacer ()
                        .frame(width: 30)
                    
                    VStack {
                    
                      
                        
                    NavigationLink( destination:  FH2(),
                                    label: {
                        Text("Start Here")
                            .fontWeight(.light)
                            .frame(width: 120, height: 30)
                            .foregroundColor(ColorManager .grey1)
                            .font(.system(size: 25))
                            .background(Color.green)
//                            .opacity(0.7)
                            .cornerRadius(10)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                    })
                     
                        
                 
                    
                }
                    Spacer ()
                    .frame(width: 30)
                    
                    
                        NavigationLink(
                            destination:  SettingsView(user: user, friends: friends, atmosphere: atmosphere),
                            label: {
                                
                                Image(systemName: "gear")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 35, height: 35)
                                    .opacity(0.5)
                                    .foregroundColor(.white)
                            })
                      
                 
                    }
                    
                    
                    
                  
                   
                
                
                Spacer()
                    .frame(height: 50)

                NavigationLink( destination:  PhotoPopView(user: user, friends: friends),
                                label: {
                    Text("PhotoPOP")
                        .fontWeight(.light)
                        .frame(width: 100, height: 40)
                        .foregroundColor(Color.white)
                        .font(.system(size: 17))
                        .background(ColorManager .purple4)
                        .glow(color: ColorManager.purple3, radius: 1)
                        .shadow(color: .white, radius: 3, x: -4, y: 4)
                        .opacity(0.9)
                        .cornerRadius(15)
                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                })
                
                Spacer()
                    .frame(height: 20)
                
                HStack {
               
                
                    
                    NavigationLink( destination:  HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                                    label: {
                        Text("Send")
                            .fontWeight(.light)
                            .frame(width: 85, height: 40)
                            .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .background(ColorManager .purple4)
                            .glow(color: ColorManager.purple3, radius: 1)
                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                            .opacity(0.9)
                            .cornerRadius(15)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                    })
                    
                    VStack {
                        
                        NavigationLink( destination: CH10(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                                        label: {
                            Text("Received")
                                .fontWeight(.light)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        })
                        
                        Text("CareHearts")
                            .fontWeight(.light)
                            .frame(width: 155, height: 40)
                            .foregroundColor(Color.white)
                            .font(.system(size: 22))
                            .background(Color.white)
                            .opacity(0.6)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        NavigationLink( destination: CH3(),
                                        label: {
                            Text("Customize")
                                .fontWeight(.light)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        })
    
                    }
                    
                    NavigationLink( destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                    label: {
                        Text("Request")
                            .fontWeight(.light)
                            .frame(width: 85, height: 40)
                            .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .background(ColorManager .purple4)
                            .glow(color: ColorManager.purple3, radius: 1)
                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                            .opacity(0.9)
                            .cornerRadius(15)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                    })
                    
                }
                Spacer()
                    .frame(height: 17)
                
//                HStack {
//
//                    NavigationLink( destination:  PhotoPopView(user: user, friends: friends),
//                                    label: {
//                        Text("Send")
//                            .fontWeight(.light)
//                            .frame(width: 85, height: 40)
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 17))
//                            .background(ColorManager .purple4)
//                            .glow(color: ColorManager.purple3, radius: 1)
//                            .shadow(color: .white, radius: 3, x: -4, y: 4)
//                            .opacity(0.9)
//                            .cornerRadius(15)
//                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                    })
//
//
//                    Text("PhotoPOP")
//                        .fontWeight(.light)
//                        .frame(width: 155, height: 40)
//                        .foregroundColor(Color.white)
//                        .font(.system(size: 22))
//                        .background(Color.white)
//                        .opacity(0.6)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//                    NavigationLink( destination:  CH5(user: user, friends: friends),
//                                    label: {
//                        Text("How to...")
//                            .fontWeight(.light)
//                            .frame(width: 85, height: 40)
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 17))
//                            .background(ColorManager .purple4)
//                            .glow(color: ColorManager.purple3, radius: 1)
//                            .shadow(color: .white, radius: 3, x: -4, y: 4)
//                            .opacity(0.9)
//                            .cornerRadius(15)
//                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                    })
//
//                }
//
                VStack {
                    Spacer()
                        .frame(height: 60)
                    
                    HStack {
                        
                        NavigationLink( destination: INFOPreloadA(user: user, friends: friends),
                                        label: {
                            Text("Where \nare you?")
                                .fontWeight(.light)
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        })
                        
                        HStack {
                            
                            VStack {
                                
                                NavigationLink( destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                                                label: {
                                    Text("SmileVault")
                                        .fontWeight(.light)
                                        .frame(width: 100, height: 40)
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 17))
                                        .background(ColorManager .purple4)
                                        .glow(color: ColorManager.purple3, radius: 1)
                                        .shadow(color: .white, radius: 3, x: -4, y: 4)
                                        .opacity(0.9)
                                        .cornerRadius(15)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                })
                                
                                Text("Friendships")
                                    .fontWeight(.light)
                                    .frame(width: 120, height: 40)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 22))
                                    .background(Color.white)
                                    .opacity(0.6)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                                NavigationLink( destination:  FH1(),
                                                label: {
                                    Text("Highlights")
                                        .fontWeight(.light)
                                        .frame(width: 100, height: 40)
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 17))
                                        .background(ColorManager .purple4)
                                        .glow(color: ColorManager.purple3, radius: 1)
                                        .shadow(color: .white, radius: 3, x: -4, y: 4)
                                        .opacity(0.9)
                                        .cornerRadius(15)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                })
                            }
                            
                        }
                        
                        
                        NavigationLink( destination: PhotoPopFGPreload(user: user, friend: user, friends: friends, groups: groups),
                                        label: {
                            Text("Friendship \nCoupons")
                                .fontWeight(.light)
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        })
                        
                    }
                    
                    Spacer()
                        .frame(height: 75)
                    
                    HStack {
                        
                        NavigationLink( destination:  JournalsView(friends: friends),
                                        label: {
                            Text("Self")
                                .fontWeight(.light)
                                .frame(width: 80, height: 40)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        })
                        
                        
                        Text("Journal")
                            .fontWeight(.light)
                            .frame(width: 155, height: 40)
                            .foregroundColor(Color.white)
                            .font(.system(size: 22))
                            .background(Color.white)
                            .opacity(0.6)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        NavigationLink( destination: CH1(),
                                        label: {
                            Text("Friends")
                                .fontWeight(.light)
                                .frame(width: 80, height: 40)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        })
                        
                    }
                    
                    Spacer()
                        .frame(height: 17)
                    HStack {
                        
                        NavigationLink( destination:  HurtFeelings4(user: user, friends: friends, groups: groups),
                                        label: {
                            Text("Feelings")
                                .fontWeight(.light)
                                .frame(width: 80, height: 40)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        })
                        
                        
                        Text("Friend Drama")
                            .fontWeight(.light)
                            .frame(width: 155, height: 40)
                            .foregroundColor(Color.white)
                            .font(.system(size: 22))
                            .background(Color.white)
                            .opacity(0.6)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        NavigationLink( destination: Step4_NuclearOption(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                                        label: {
                            Text("Break-Up")
                                .fontWeight(.light)
                                .frame(width: 80, height: 40)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        })
                        
                    }
                   
                    
                    Spacer()
                        .frame(height: 50)
                }
            }
         
            }
        }
    }
    
    
    
    
    
    
    
    private struct MyRoomRowView: View {
        let title, imageName: String
        let backgroundColor, foregroundColor: CGColor
        
        var body: some View {
            ZStack {
                Color(cgColor: backgroundColor)
                
                HStack{
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFit()
                        .foregroundColor(Color(cgColor: foregroundColor))
                    
                    
                    
                    Spacer().frame(width: 20)
                    
                    Text(title)
                        .font(.system(size: 24, weight: .light))
                        .foregroundColor(Color(cgColor: foregroundColor))
                }
            }
            .frame(width: 310, height: 60)
            .opacity(0.6)
            .cornerRadius(15)
            .padding()
        }
    }


