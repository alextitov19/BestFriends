//
//  SaySomethingNice1.swift
//  BestFriends
//
//  Created by Social Tech on 8/22/22.
//



import Foundation
import SwiftUI


struct SaySomethingNice1: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
            ColorManager.purple4
                .ignoresSafeArea()
                .onAppear()

            
            VStack {
                
          
                Text("Say something")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("'Nice' to a Friend")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 80)
                VStack {
                Text("Be part of something")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
          
                
                Text("P O S I T I V E")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("on social media")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
               
              
                
                Spacer()
                    .frame(height:40)

                VStack {
                 
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                        label: {
                            Text("Type it in Chat")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 27))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    
                    VStack {
                                            Text("THEN ...")
                                                         .font(.system(size: 20))
                                                         .fontWeight(.thin)
                                                         .multilineTextAlignment(.center)
                                                         .foregroundColor(Color.white)
                        

                        Spacer()
                            .frame(height: 5)
                       
                        NavigationLink(
                            
                            destination: SaySomethingNice2(user: user, friends: friends),
                            label: {
                                Text("Send Push Notfication")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 290, height: 40)
                                    .font(.system(size: 27))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                        )}
                    
                    Spacer()
                        .frame(height: 60)
                    
                        NavigationLink(
                            destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres),
                            label: {
                                Text("See saved 'Nice' Messages")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 320, height: 40)
                                    .font(.system(size: 27))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                              
                              
                            }
                     
                        )}
                 
                    Text("(that you long-tapped in Chat)")
                                 .font(.system(size: 20))
                                 .italic()
                                 .fontWeight(.thin)
                                 .multilineTextAlignment(.center)
                                 .foregroundColor(Color.white)
              
                    
                        Spacer()
                            .frame(height: 150)
                 
                        
                    }
                }
                
            }
            
        }
        
    }
    



