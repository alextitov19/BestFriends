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
                        
                        Text("Send")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)
                        
                        Text("PhotoPOP")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)
                        
                    }
               

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
                                .frame(width: 25, height: 25)
                                .opacity(0.3)
                                .foregroundColor(.white)
                        }
                        
                        
                        
                        Text("Smile")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)
                        
                        Text("Vault")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)
                        
                        
                        
                    }
            
                    
                    VStack {

                        ZStack {

                            NavigationLink(destination: EmptyView(),
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



//                            figure.run.square.stack
                            Image(systemName: "square.and.arrow.up.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .opacity(0.3)
                                .foregroundColor(.white)
                        }



                        Text("My")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)

                        Text("Self")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)

                    }
                   
                    
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
                            
                            
                            
                            Image(systemName: "person.2")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .opacity(0.3)
                                .foregroundColor(.white)
                        }
                        
                        
                        
                        Text("Friend")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)
                        
                        Text("Coupons")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)
                        
                        
                        
                    }
                    
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
                                .frame(width: 25, height: 25)
                                .opacity(0.3)
                                .foregroundColor(.white)
                        }
                        
                        
                        
                        Text("Hurt")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)
                        
                        Text("Feelings")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
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
                        
                        
                        
                        Text("Fix a ")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)
                        
                        Text("Fight")
                            .foregroundColor(Color.white)
                            .font(.system(size: 8, weight: .light))
                            .opacity(0.7)
                        
                        
                        
                    }
                
                
                
                VStack {
                    
                    ZStack {
                        
                        NavigationLink(destination: InfoPushNotifications(user: user),
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
                    
                    
                    
                    Text("Care")
                        .foregroundColor(Color.white)
                        .font(.system(size: 8, weight: .light))
                        .opacity(0.7)
                    
                    Text("Streaks")
                        .foregroundColor(Color.white)
                        .font(.system(size: 8, weight: .light))
                        .opacity(0.7)
                    
                    
                    
                }
            }
            
                
                Spacer()
                    .frame(height: 50)
                
                //                 TryThis
                NavigationLink(destination: InfoHowChatWorks(user: user), label: {
                MyRoomRowView(title: "Real-time Friendships", imageName: "star", backgroundColor: ColorManager.purple1.cgColor!, foregroundColor: ColorManager.purple7.cgColor!)
            })
                
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
                    
                    
                    Text("< CareHearts >")
                        .fontWeight(.light)
                        .frame(width: 147, height: 60)
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
//                        .background(ColorManager .purple7)
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
                            .background(Color .orange)
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
                
                
                NavigationLink(destination: FH1(), label: {
                    MyRoomRowView(title: "Friendship Highlights", imageName: "star", backgroundColor: ColorManager.purple3.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
                
            
                
                
                
                
                
                //
                
                
                //     *************************** SmileVault & Affirmations / Motivations
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
                
                VStack {
                    
                    
                    Spacer()
                        .frame(height: 70)
                    Text("How to ")
                        .foregroundColor(ColorManager .grey2)
                        .font(.system(size: 20, weight: .light))
                        .opacity(0.7)

                    HStack {
                        NavigationLink(
                            
                            destination: InfoInsideChat(user: user),
                            label: {
                                Text("Create Chat \nRooms")
                                    .fontWeight(.light)
                                    .frame(width: 80, height: 50)
                                    .foregroundColor(ColorManager .grey4)
                                    .font(.system(size: 13))
                                    .background(Color.green)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        //                    InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups
                        
                        NavigationLink(
                            
                            destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                            label: {
                                Text("Invite \n& Accept \nFriends")
                                    .fontWeight(.light)
                                    .frame(width: 80, height: 50)
                                    .foregroundColor(ColorManager .grey4)
                                    .font(.system(size: 13))
                                    .background(Color.green)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
//                    }
                    
//                    HStack {
                        NavigationLink(
                            
                            destination: INFOPreload3(user: user),
                            label: {
                                Text("Free \nStickers")
                                    .fontWeight(.light)
                                    .frame(width: 80, height: 50)
                                    .foregroundColor(ColorManager .grey4)
                                    .font(.system(size: 13))
                                    .background(Color.green)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        
                        
                        Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {
                            
                            Text("Influencers")
                                .fontWeight(.light)
                                .frame(width: 80, height: 50)
                                .foregroundColor(ColorManager .grey4)
                                .font(.system(size: 13))
                                .background(Color.green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
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
}


