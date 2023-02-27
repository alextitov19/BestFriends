//
//  INFOPreload2.swift
//  BestFriends
//
//  Created by Social Tech on 11/8/22.
//

//

import Foundation
import SwiftUI


struct INFOPreload2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    var body: some View {
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            //
            //            AdPlayerView(name: "dramaLights")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //                .opacity(0.75)
            
            
            //            Circle()
            //                .frame(width: 300, height: 300)
            //                .foregroundColor(ColorManager.purple2)
            //                .offset(x: 200, y: -450)
            
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple3)
                .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                .offset(x: -200, y: 400)
            
            
            
            
            
            VStack {
                
                
                VStack {
                    
                    //                    HStack {
                    //
                    //                        Text("Launch Party")
                    //                            .font(.system(size: 35))
                    //                            .fontWeight(.thin)
                    //                            .foregroundColor(ColorManager .purple5)
                    //                            .multilineTextAlignment(.center)
                    //
                    //                    }
                    //
                    HStack {
                        VStack {
                            
                            Text("Launch")
                                .font(.system(size: 35, weight: .ultraLight))
                                .foregroundColor(ColorManager .purple7)
                            
                            
                            Text("Party")
                                .font(.system(size: 35, weight: .ultraLight))
                                .foregroundColor(ColorManager .purple7)
                            
                        }
                        
                        Image("pizzaStickers")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(10)
                        
                    }
                    
                    
                    
                    
                    
                    
                    Text("stickers & pizza")
                        .font(.system(size: 17))
                        .italic()
                    
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .purple5)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 25)
                    
                    Text("Harvard _ 02.17.23")
                        .font(.system(size: 17))
                        .fontWeight(.thin)
                        .foregroundColor(Color .black)
                        .multilineTextAlignment(.leading)
                    
                    Text("(our initial public launch)")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(Color .black)
                        .multilineTextAlignment(.leading)
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    //                    Text("MIT _ TBD")
                    //                        .font(.system(size: 17))
                    //                        .fontWeight(.thin)
                    //                        .foregroundColor(Color .black)
                    //                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                        .frame(height: 5)
                    
                    VStack {
                        
                        Text("Stanford _ this summer")
                            .font(.system(size: 17))
                            .fontWeight(.thin)
                            .foregroundColor(Color .black)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                            .frame(height: 5)
                        
                        
                        Text("Northwestern _ TBD")
                            .font(.system(size: 17))
                            .fontWeight(.thin)
                            .foregroundColor(Color .black)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                            .frame(height: 5)
                        
                        
                        VStack {
                            
                            Text("Univ. of Washington _ TBD")
                                .font(.system(size: 17))
                                .fontWeight(.thin)
                                .foregroundColor(Color .black)
                                .multilineTextAlignment(.leading)
                            
                            
                            
                            Spacer()
                                .frame(height: 5)
                            
                            Text("George Washington _ TBD")
                                .font(.system(size: 17))
                                .fontWeight(.thin)
                                .foregroundColor(Color .black)
                                .multilineTextAlignment(.leading)
                            VStack {
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text("Univ. of Rochester _ after Spring break")
                                    .font(.system(size: 17))
                                    .fontWeight(.thin)
                                    .foregroundColor(Color .black)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text("George Mason _ TBD")
                                    .font(.system(size: 17))
                                    .fontWeight(.thin)
                                    .foregroundColor(Color .black)
                                    .multilineTextAlignment(.leading)
                                
                                Spacer()
                                    .frame(height: 5)
                                
                                Text("RIT _ May 23")
                                    .font(.system(size: 17))
                                    .fontWeight(.thin)
                                    .foregroundColor(Color .black)
                                    .multilineTextAlignment(.leading)
                                
                                
//                                
//                                Text("(We are not affiliated with")
//                                    .font(.system(size: 13))
//                                    .italic()
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color.black)
//                                    .multilineTextAlignment(.center)
//                                
//                                Text("above listed universities)")
//                                    .font(.system(size: 13))
//                                    .italic()
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color.black)
//                                    .multilineTextAlignment(.center)
//                                
//                                
//                                
                                
                                Spacer()
                                    .frame(height: 10)
                                
                                VStack {
                                    ZStack {
                                        
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .foregroundColor(ColorManager .purple2)
                                            .frame(width: 240, height: 200)
                                            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
                                        
                                        //
                                        
                                        VStack {
                                            
                                            Text("spnosored by")
                                                .fontWeight(.thin)
                                                .italic()
                                                .frame(width: 120, height: 30)
                                                .foregroundColor(Color .black)
                                                .font(.system(size: 15))
                                                .background(ColorManager .purple2)
                                            
                                            
                                            Link(destination: URL(string: "https://rewritingthecode.org")!) {
                                                
                                                Text("Rewriting the Code")
                                                    .fontWeight(.thin)
                                                    .frame(width: 170, height: 30)
                                                    .foregroundColor(Color .white)
//                                                                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                    .font(.system(size: 20))
                                                    .background(ColorManager .purple5)
                                                    .cornerRadius(10)
                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            }
                                            
                                            
                                            
                                            //
                                            //                                            NavigationLink(
                                            //                                                destination: SaySomethingNice6(user: user, atmosphere: atmosphere, friends: friends, groups: groups, friendAtmospheres: friendAtmospheres),
                                            //                                                label: {
                                            //                                                    VStack {
                                            //
                                            
                                            
                                            
                                            Spacer()
                                                .frame(height: 7)
                                            //                                                        Text("Re-writing the Code")
                                            //                                                            .fontWeight(.light)
                                            //                                                            .frame(width: 170, height: 30)
                                            //                                                            .foregroundColor(Color .green)
                                            //                                                            .font(.system(size: 20))
                                            //
                                            //                                                            .background(ColorManager .purple5)
                                            
                                            
                                        }
                                    }
                                    
                                    
                                    //                                            )}
                                    
                                    Spacer()
                                        .frame(height: 15)
                                    //
                                    //                                    Text("Welcome everyone from the")
                                    //                                        .font(.system(size: 25))
                                    //                                        .fontWeight(.thin)
                                    //                                        .foregroundColor(ColorManager .purple5)
                                    //                                        .multilineTextAlignment(.center)
                                    //
                                    //
                                    //
                                    //                                    Text("Harvard WECode 2023")
                                    //                                        .font(.system(size: 25))
                                    //                                        .fontWeight(.thin)
                                    //                                        .foregroundColor(ColorManager .purple5)
                                    //                                        .multilineTextAlignment(.center)
                                    
                                    //
                                    //                                        Text("Email: Admin@SocialTechLabs.com")
                                    //                                            .fontWeight(.thin)
                                    //                                            .frame(width: 250, height: 25)
                                    //                                            .foregroundColor(Color .blue)
                                    //                                            .font(.system(size: 15))
                                    //                                            .background(ColorManager .grey1)
                                    //                                            .cornerRadius(4)
                                    //
                                    //
                                    
                                    
                                    
                                    
                                    
                                    Spacer()
                                        .frame(height: 50)
                                    
                                    
                                }
                                
                            }
                        }
                        
                    }
                }
            }
        }
    }
    
}
