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
            ColorManager.purple7
//                .opacity(0.6)
                .ignoresSafeArea()
                
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            AdPlayerView(name: "dramaLights")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.3)
            
            VStack {
                HStack {
                    VStack {
                        ZStack {
                            
                            NavigationLink(destination: PhotoPopView(user: user, friends: friends),
                                           label: {
                                Text("")
                                    .fontWeight(.thin)
                                    .frame(width: 50, height: 30)
                                    .foregroundColor(ColorManager .grey1)
                                    .font(.system(size: 30))
//                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                            
                            
                            Image(systemName: "camera")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .opacity(0.3)
                                .foregroundColor(.white)
                        }
                        
                        Text("Send a")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)

                        Text("PhotoPOP")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
//
                    }
                    
                    
                    Spacer()
                        .frame(width: 7)
                    
                    VStack {
                        
                        ZStack {
                            
                            NavigationLink(destination: HurtFeelings4(user: user, friends: friends, groups: groups),
                                           label: {
                                Text("")
                                    .fontWeight(.thin)
                                    .frame(width: 50, height: 30)
                                    .foregroundColor(ColorManager .grey1)
                                    .font(.system(size: 30))
//                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                            
                            
                            Image(systemName: "shareplay.slash")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .opacity(0.3)
                                .foregroundColor(.white)
                        }


                                
                        Text("Hurt")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        Text("Feelings")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        

                    }
//                    Spacer()
//                        .frame(width: 65)
                 
//                    *******************************************
                    VStack {
                        
                        ZStack {
                            
                            NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                                           label: {
                                Text("")
                                    .fontWeight(.thin)
                                    .frame(width: 50, height: 30)
                                    .foregroundColor(ColorManager .grey1)
                                    .font(.system(size: 30))
//                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                            
                            
                            Image(systemName: "sun.max.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .opacity(0.3)
                                .foregroundColor(.white)
                        }


                                
                        Text("Smile")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        Text("Vault")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        

                    }
//                    Spacer()
//                        .frame(width: 65)
                 
                    
//                   ******************************************
                    
                    VStack {
                        
                        ZStack {
                            
//                            NavigationLink(destination: PhotoPopFGPreload(user: user, friends: friends),
                            NavigationLink(destination: PhotoPopFGPreload(user: user, friend: user, friends: friends, groups: groups),
                                           label: {
                                Text("")
                                    .fontWeight(.thin)
                                    .frame(width: 50, height: 30)
                                    .foregroundColor(ColorManager .grey1)
                                    .font(.system(size: 30))
//                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                            
                            
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .opacity(0.3)
                                .foregroundColor(.white)
                        }


                                
                        Text("Friendship")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        Text("Coupons")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        

                    }
                    
            
                    
                    VStack {
                        
                        ZStack {
                            
                            NavigationLink(destination: Step4_NuclearOption(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                                           label: {
                                Text("")
                                    .fontWeight(.thin)
                                    .frame(width: 50, height: 30)
                                    .foregroundColor(ColorManager .grey1)
                                    .font(.system(size: 30))
//                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                            
                            
                            Image(systemName: "figure.walk.motion")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .opacity(0.3)
                                .foregroundColor(.white)
                        }


                                
                        Text("Fixing a ")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        Text("Breakup")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        

                    }
                }
         
                
                
                Spacer()
                    .frame(height: 50)
//                 TryThis
                
         
                
                HStack {
                    
                    NavigationLink( destination:  HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
                                    label: {
                        Text("Send")
                            .fontWeight(.thin)
                            .frame(width: 75, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 17))
                            .background(Color .orange)
                            .opacity(0.6)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })

                    
                    Text("CareHearts")
                        .fontWeight(.light)
                        .frame(width: 145, height: 60)
                        .foregroundColor(Color.white)
                        .font(.system(size: 24))
                        .background(ColorManager .purple3)
                        .opacity(0.6)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                NavigationLink( destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                    Text("Request")
                        .fontWeight(.thin)
                        .frame(width: 75, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 17))
                        .background(Color .purple)
                        .opacity(0.6)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                })
                
                }
                
             
                
                NavigationLink(destination: JournalsView(friends: friends), label: {
                    MyRoomRowView(title: "FriendGroup Journal", imageName: "text.book.closed", backgroundColor: ColorManager.purple3.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
               
//                                    Step3_BreathInviteView(user: user, friends: friends, groups: groups
                NavigationLink(destination:  INFOPreloadA(user: user, friends: friends), label: {
                    MyRoomRowView(title: "Where are you?", imageName: "camera", backgroundColor: ColorManager.purple3.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
                
                
                
                //     *************************** SmileVault & Affirmations / Motivations
//
//                NavigationLink(destination: EmptyView(), label: {
//                MyRoomRowView(title: "Friendship Spotlights", imageName: "star", backgroundColor: ColorManager.purple3.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
//                })
//
                
//                NavigationLink(destination: AffirmationMain(), label: {
//                    MyRoomRowView(title: "Affirmations", imageName: "star.leadinghalf.filled", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
//                })
                
                
//              **********************************************************
//                **************************************************
                
                
                
                
                
                
//                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
//                MyRoomRowView(title: "SmileVault", imageName: "sun.max.fill", backgroundColor: ColorManager.purple3.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
//                })
                

              
                
//                NavigationLink(destination: EmptyView(), label: {
//                    MyRoomRowView(title: "Our BEST FriendGroup (ratings)", imageName: "figure.walk.motion", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
//                })

                
                
                //     *************************** SmileVault & Affirmations / Motivations
                
                
//                NavigationLink(destination: INFOPreloadA(user: user, friends: friends), label: {
//                MyRoomRowView(title: "Where are you?", imageName: "camera", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
//                })
        
//
//                NavigationLink(destination: PhotoPopView(user: user, friends: friends), label: {
//                MyRoomRowView(title: "Send PhotoPOPs", imageName: "camera", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
//                })
//
//
                
                           
                
//

               
            
                
                
//                NavigationLink(
//                    destination: BuiltByTeensView(user: user, friends: friends),
//                    label: {
//                        Text("designed around teens \nby teen girls")
////                            .foregroundColor(Color.white)
////                            .font(.system(size: 16, weight: .light))
//
//                            .fontWeight(.thin)
//                            .frame(width: 200, height: 40)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 15))
//                            .background(Color .purple)
//                                .opacity(0.6)
//                            .cornerRadius(12)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    })
                Spacer()
                    .frame(height: 200)
                
                NavigationLink(
                    destination: InfoInsideChat(user: user),
                    label: {
                        Text("Create New Chat rooms")
                            .fontWeight(.thin)
                            .frame(width: 260, height: 27)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(Color.purple)
                            .cornerRadius(10)
                            .opacity(0.4)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    })
                
                NavigationLink(
                    
                    destination: InfoHowChatWorks(user: user),
                    label: {
                        Text("Why Activate Notifications")
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .frame(width: 260, height: 27)
                            .font(.system(size: 20))
                            .background(Color.purple)
                            .cornerRadius(10)
                            .opacity(0.4)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    })
                
         
                
   
                
                NavigationLink(
                    
                    destination: INFOPreload3(user: user),
                    label: {
                        Text("Free Stickers")
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .frame(width: 150, height: 27)
                            .font(.system(size: 22))
                            .background(Color.purple)
                            .cornerRadius(10)
                            .opacity(0.4)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    })
                
                NavigationLink(
                    
                    destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                    label: {
                        Text("Walk-through")
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .frame(width: 150, height: 27)
                            .font(.system(size: 20))
                            .background(Color.purple)
                            .cornerRadius(10)
                            .opacity(0.4)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    })
                
            
                     
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
}


