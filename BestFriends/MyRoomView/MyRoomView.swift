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
                        
                        Text("send a")
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
                        .frame(width: 70)
                    
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


                                
                        Text("Hurt Feelings")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        Text("(BF_notification)")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        

                    }
                    Spacer()
                        .frame(width: 70)
                    
                    VStack {
                        
                        ZStack {
                            
                            NavigationLink(destination: INFOPreloadA(user: user, friends: friends),
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


                                
                        Text("share the")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        Text("moment")
                            .foregroundColor(Color.white)
                            .font(.system(size: 10, weight: .light))
                            .opacity(0.7)
                        
                        

                    }
                }
                
                Spacer()
                    .frame(height: 70)
                
                
                NavigationLink(destination: TryThis(), label: {
                MyRoomRowView(title: "Friendship Spotlights", imageName: "star", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
                
                
                NavigationLink(destination: HugPushNotification2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                MyRoomRowView(title: "CareHearts", imageName: "heart", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
                
                
                NavigationLink(destination: JournalsView(friends: friends), label: {
                    MyRoomRowView(title: "FriendGroup Journal", imageName: "text.book.closed", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
               
//                                    Step3_BreathInviteView(user: user, friends: friends, groups: groups
                NavigationLink(destination:  Step4_NuclearOption(user: user, friends: friends), label: {
                    MyRoomRowView(title: "Fighting", imageName: "figure.walk.motion", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })

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
                //                NavigationLink(destination: AffirmationMain(), label: {
                //                    MyRoomRowView(title: "Affirmations", imageName: "star.leadinghalf.filled", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
                //                })
                
//
//                                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
//                                MyRoomRowView(title: "SmileVault", imageName: "sun.max.fill", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
//                                })
               
            
                
                
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


