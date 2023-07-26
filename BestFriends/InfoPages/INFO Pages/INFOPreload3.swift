//
//  INFOPreload3.swift
//  BestFriends
//
//  Created by Social Tech on 12/17/22.
//



import Foundation
import SwiftUI


struct INFOPreload3: View {

    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    //    let atmosphere: Atmosphere
    //    let friends: [User]
    //    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]
    //
    var body: some View {
        ZStack {

//            ColorManager .grey4
//                .ignoresSafeArea()
//                .onAppear()
            ColorManager .purple4
                .opacity(0.6)
                .ignoresSafeArea()

            
            Image("FHBackground")
                     .resizable()
                     .scaledToFill()
                     .edgesIgnoringSafeArea(.all)

            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple3)
                .offset(x: -200, y: 400)





            VStack {

//                Text("now you can let the outside of you")
//                                   .font(.system(size: 22))
//                                   .italic()
//                                   .foregroundColor(ColorManager.grey1)
//                                   .fontWeight(.thin)
//                                   .multilineTextAlignment(.center)
//
//                               Text("match the inside of you")
//                                   .font(.system(size: 22))
//                                   .italic()
//                                   .foregroundColor(ColorManager.grey1)
//                                   .fontWeight(.thin)
//                                   .multilineTextAlignment(.center)
//
//
//                               Text("on social media")
//                                   .font(.system(size: 22))
//                                   .italic()
//                                   .foregroundColor(ColorManager.grey1)
//                                   .fontWeight(.thin)
//                                   .multilineTextAlignment(.center)
                VStack {
                    
                    

                    Image("sticker")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(10)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                    
                    Text("REWARD stickers \nfor you & your friends")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 10)
                 
                    VStack{
                        Spacer()
                            .frame(height: 50)
                        Text("If you receive a REWARD prompt...")
                            .font(.system(size: 17))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        Text("Just send us your name \n& mailing address to:")
                            .font(.system(size: 17))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("stickers@SocialTechLabs.com")
                            .fontWeight(.regular)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color.white)
                            .font(.system(size: 13))
                            .background(Color.pink)
                            .opacity(0.85)
                            .cornerRadius(15)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 70)
                        
                        Text("(available while supplies last, \nwe pay shipping)")
                            .font(.system(size: 12))
                            .italic()
                            .fontWeight(.thin)
                            .foregroundColor(ColorManager .grey1)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 50)
                        
                        
                        
                    }

                            }

                        }

                    }
                }

            }
    
