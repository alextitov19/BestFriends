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
     let atmosphere: Atmosphere
     let friends: [User]
     let friendAtmospheres: [Atmosphere]
     let groups: [Group]
    //
    var body: some View {
        ZStack {

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

                VStack {
                    
                    

                    Image("sticker")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(10)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                    
                    Text("BestFriends Stickers")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    
                    NavigationLink(destination: CH18(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                   label: {
                        Text("Must reach \nLevel 1")
                            .fontWeight(.light)
                            .frame(width: 100, height: 50)
                            .foregroundColor(ColorManager .grey4)
                            .font(.system(size: 17))
                            .background(Color.cyan)
                            .opacity(0.85)
                            .cornerRadius(15)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        
                    })
                    
//                    Text("(must reach Level 1)")
//                        .font(.system(size: 17))
//                        .italic()
//                        .fontWeight(.thin)
//                        .foregroundColor(Color.white)
//                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 10)
                 
                    VStack{
                        Spacer()
                            .frame(height: 50)
                      
                        
                        Text("Just send us your name")
                            .font(.system(size: 17))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        Text("and mailing address to:")
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
                            .background(Color.orange)
                            .opacity(0.85)
                            .cornerRadius(15)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
//                        Text("(for now - while supplies last)")
//                            .font(.system(size: 12))
//                            .italic()
//                            .fontWeight(.thin)
//                            .foregroundColor(ColorManager .grey1)
//                            .multilineTextAlignment(.center)
                        
                        Text("(we pay shipping)")
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
    
