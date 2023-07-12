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
                    
                    
                    NavigationLink(
                        destination:  SettingsView(user: user, friends: friends, atmosphere: atmosphere),
                        label: {
                            
                            Image(systemName: "bell")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 35)
                                .opacity(0.5)
                                .foregroundColor(.white)
                        })
                    
                    Spacer ()
                        .frame(width: 60)
                    
                    VStack {
                    
                      
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
                        .frame(height: 10)
                        
                    NavigationLink( destination:  FH9(),
                                    label: {
                        Text("Start Here")
                            .fontWeight(.thin)
                            .frame(width: 120, height: 30)
                            .foregroundColor(ColorManager .grey1)
                            .font(.system(size: 20))
                            .background(ColorManager .pmbc_green)
                            .opacity(0.9)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                }
                    Spacer ()
                    .frame(width: 60)
                    
                    
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
                    .frame(height: 80)

                HStack {
               
                    
                    NavigationLink( destination:  HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                                    label: {
                        Text("Send")
                            .fontWeight(.light)
                            .frame(width: 75, height: 50)
                            .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .background(ColorManager .purple4)
                            .glow(color: ColorManager.purple3, radius: 1)
                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                            .opacity(0.9)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    VStack {
                        
                        NavigationLink( destination: CH10(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                                        label: {
                            Text("Got one")
                                .fontWeight(.thin)
                                .frame(width: 75, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                        Text("< CareHearts >")
                            .fontWeight(.light)
                            .frame(width: 155, height: 60)
                            .foregroundColor(Color.white)
                            .font(.system(size: 22))
                            .background(Color.white)
                            .opacity(0.6)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        NavigationLink( destination: PhotoPopFGPreload(user: user, friend: user, friends: friends, groups: groups),
                                        label: {
                            Text("Fun \nTimes")
                                .fontWeight(.light)
                                .frame(width: 75, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                        
                        
                    }
                    
                    NavigationLink( destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                    label: {
                        Text("Request")
                            .fontWeight(.thin)
                            .frame(width: 75, height: 50)
                            .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .background(ColorManager .purple4)
                            .glow(color: ColorManager.purple3, radius: 1)
                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                            .opacity(0.9)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                }
                Spacer()
                    .frame(height: 30)
                
                HStack {
                    
                    NavigationLink( destination:  PhotoPopView(user: user, friends: friends),
                                    label: {
                        Text("Send")
                            .fontWeight(.thin)
                            .frame(width: 75, height: 50)
                            .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .background(ColorManager .purple4)
                            .glow(color: ColorManager.purple3, radius: 1)
                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                            .opacity(0.9)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                    Text("< PhotoPOP >")
                        .fontWeight(.light)
                        .frame(width: 155, height: 60)
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                        .background(Color.white)
                        .opacity(0.6)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                    NavigationLink( destination: INFOPreloadA(user: user, friends: friends),
                                    label: {
                        Text("Request")
                            .fontWeight(.thin)
                            .frame(width: 75, height: 50)
                            .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .background(ColorManager .purple4)
                            .glow(color: ColorManager.purple3, radius: 1)
                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                            .opacity(0.9)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                }
                VStack {
                    Spacer()
                        .frame(height: 15)
                    
                    HStack {
                        
                        NavigationLink( destination:  JournalsView(friends: friends),
                                        label: {
                            Text("Self")
                                .fontWeight(.thin)
                                .frame(width: 75, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                        
                        Text("< Journal >")
                            .fontWeight(.light)
                            .frame(width: 155, height: 60)
                            .foregroundColor(Color.white)
                            .font(.system(size: 22))
                            .background(Color.white)
                            .opacity(0.6)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        NavigationLink( destination: EmptyView(),
                                        label: {
                            Text("Friends")
                                .fontWeight(.thin)
                                .frame(width: 75, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                    }
                    
                    Spacer()
                        .frame(height: 15)
                    HStack {
                        
                        NavigationLink( destination:  HurtFeelings4(user: user, friends: friends, groups: groups),
                                        label: {
                            Text("Hurt Feeling")
                                .fontWeight(.thin)
                                .frame(width: 75, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                        
                        Text("< Drama >")
                            .fontWeight(.light)
                            .frame(width: 155, height: 60)
                            .foregroundColor(Color.white)
                            .font(.system(size: 22))
                            .background(Color.white)
                            .opacity(0.6)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        NavigationLink( destination: Step4_NuclearOption(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                                        label: {
                            Text("Break-Up")
                                .fontWeight(.thin)
                                .frame(width: 75, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                    }
                    Spacer()
                        .frame(height: 15)
                    
                    HStack {
                        
                        NavigationLink( destination:  FH1(),
                                        label: {
                            Text("Highlight")
                                .fontWeight(.thin)
                                .frame(width: 75, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                        
                        
                        Text("< Friendships >")
                            .fontWeight(.light)
                            .frame(width: 155, height: 60)
                            .foregroundColor(Color.white)
                            .font(.system(size: 22))
                            .background(Color.white)
                            .opacity(0.6)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        NavigationLink( destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                                        label: {
                            Text("Smile \nVault")
                                .fontWeight(.thin)
                                .frame(width: 75, height: 50)
                                .foregroundColor(Color.white)
                                .font(.system(size: 17))
                                .background(ColorManager .purple4)
                                .glow(color: ColorManager.purple3, radius: 1)
                                .shadow(color: .white, radius: 3, x: -4, y: 4)
                                .opacity(0.9)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                      
                    }
                    
                    Spacer()
                        .frame(height: 120)
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


