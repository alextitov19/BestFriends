//
//  CH20.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/17/23.
//

import SwiftUI

struct CH20: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
 
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    var body: some View {
        ZStack {
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            
            AdPlayerView(name: "Planet4")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.99)
            
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple3)
                .offset(x: -200, y: 400)
            
            ZStack {
                
            }
            
            VStack {
                
                Spacer ()
                    .frame(height: 15)
                
                Text("Friendship Rewards")
                    .fontWeight(.light)
                    .frame(width: 320, height: 60)
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
                    .background(ColorManager .orange5)
                    .cornerRadius(10)
                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                
                
                Spacer ()
                    .frame(height: 10)
                
                
                
                
            HStack {
                    
                VStack {
                    NavigationLink(
                        
                        destination: INFOPreload3(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            Text("Laptop \nStickers")
                                .fontWeight(.light)
                                .frame(width: 150, height: 70)
                                .foregroundColor(ColorManager .grey4)
                                .font(.system(size: 17))
                                .background(Color.cyan)
                                .opacity(0.85)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                            
                        })
                    
                    
                    
                        NavigationLink(destination: CH18(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                            label: {
                                Text("Friendship \nBadge Levels")
                                    .fontWeight(.light)
                                    .frame(width: 150, height: 70)
                                    .foregroundColor(ColorManager .grey4)
                                    .font(.system(size: 17))
                                    .background(Color.cyan)
                                    .opacity(0.85)
                                    .cornerRadius(15)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                    
                    })
                       
                }
                   
                Spacer ()
                        .frame(width: 7)
        
                VStack {
                    
                    NavigationLink(
                        destination: CH17(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            Text("CareHeart \nShooting Stars")
                                .fontWeight(.light)
                                .frame(width: 150, height: 70)
                                .foregroundColor(ColorManager .grey4)
                                .font(.system(size: 17))
                                .background(Color.cyan)
                                .opacity(0.85)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                            
                        })
                    
                
//                    FH1(user: user, friends: friends, friendAtmospheres: friendAtmospheres
                    
                        NavigationLink(
                            destination: CH19(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                                    Text("Access \nFriendship Highlights")
                                        .fontWeight(.light)
                                        .frame(width: 150, height: 70)
                                        .foregroundColor(ColorManager .grey4)
                                        .font(.system(size: 17))
                                        .background(Color.cyan)
                                        .opacity(0.85)
                                        .cornerRadius(15)
                                        .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                    
                                                        })
                    
                        }
                }
                
                Spacer ()
                    .frame(height: 15)
              
                VStack {
                    Spacer ()
                        .frame(height: 15)
                    
                 
//        ZStack {
//
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .foregroundColor(Color.purple)
//                        .frame(width: 420, height: 420)
//                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
//                        .opacity(0.95)
//
//            VStack {
//
//                Text("Super Friendship Days")
//                    .fontWeight(.light)
//                    .frame(width: 320, height: 60)
//                    .foregroundColor(Color.white)
//                    .font(.system(size: 30))
//                    .background(ColorManager .orange5)
//                    .cornerRadius(10)
//                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//                Spacer()
//                    .frame(height: 20)
//
//                HStack {
//
//                                                    Text("Monday _")
//                                                        .font(.system(size: 25))
//                                                        .foregroundColor(ColorManager .grey4)
//                                                        .fontWeight(.regular)
//                                                        .multilineTextAlignment(.center)
//
//
//                    Text("emotional support")
//                        .font(.system(size: 25))
//                        .italic()
//                        .foregroundColor(ColorManager .grey1)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//                }
//
//                Text("CareHearts")
//                    .font(.system(size: 25))
//                    .foregroundColor(Color.cyan)
//                    .fontWeight(.bold)
//                    .multilineTextAlignment(.center)
//
//
                
//                Spacer()
//                    .frame(height: 25)
                
                HStack {
                    
//                    Text("WED _")
//                        .font(.system(size: 25))
//                        .foregroundColor(ColorManager .grey4)
//                        .fontWeight(.regular)
//                        .multilineTextAlignment(.center)
//
//
//                    Text("sharing your")
//                        .font(.system(size: 25))
//                        .italic()
//                        .foregroundColor(ColorManager .grey1)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
                }
                
//                Text("Crushes")
//                    .font(.system(size: 25))
//                    .foregroundColor(Color.cyan)
//                    .fontWeight(.bold)
//                    .multilineTextAlignment(.center)
                
                
//
//                Spacer()
//                    .frame(height: 25)
//
//                HStack {
//
//                    Text("Thursday _")
//                        .font(.system(size: 25))
//                        .foregroundColor(ColorManager .grey4)
//                        .fontWeight(.regular)
//                        .multilineTextAlignment(.center)
//
//                    Text("'shake' your iPhone for")
//                        .font(.system(size: 25))
//                        .italic()
//                        .foregroundColor(ColorManager .grey1)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//                }
//
//                Text("Lightspeed Images")
//                    .font(.system(size: 25))
//                    .foregroundColor(Color.cyan)
//                    .fontWeight(.bold)
//                    .multilineTextAlignment(.center)
                
                }
            }
        }
                    
                }
            }
//        }
//    }


    
    
    
    
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



//
//Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {
//
//    Text("Supportive \nInfluencers")
//        .fontWeight(.regular)
//        .frame(width: 80, height: 50)
//        .foregroundColor(Color.white)
//        .font(.system(size: 13))
//        .background(Color.pink)
//        .opacity(0.85)
//        .cornerRadius(15)
//        .shadow(color: Color.white, radius: 2, x: 0, y: 2)


//NavigationLink(
//
//    destination: BuiltByTeensView(user: user, friends: friends),
//    label: {
//        Text("Our Story")
//            .fontWeight(.regular)
//            .frame(width: 80, height: 50)
//            .foregroundColor(Color.white)
//            .font(.system(size: 13))
//            .background(Color.pink)
//            .opacity(0.85)
//            .cornerRadius(15)
//            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
//
//    })
