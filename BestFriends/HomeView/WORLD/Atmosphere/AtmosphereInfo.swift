//
//  AtmosphereInfo.swift
//  BestFriends
//
//  Created by Social Tech on 6/30/22.
//
//



import Foundation
import SwiftUI

struct AtmosphereInfo: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    
    var body: some View {
        
        VStack {
            
            
            ZStack {
                
                ColorManager.grey4
                    .ignoresSafeArea()
                    .onAppear()
                //
                //            Image("girlwalking")
                ////                .frame(width: 300, height: 20)
                //                .resizable()
                //                .scaledToFill()
                //                .ignoresSafeArea()
                //
                //                      Spacer()
                //                          .frame(height: 0)
                //
                
                VStack {
                    
                    Text("WOW")
                        .font(.system(size: 40))
                        
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                    
                    Text("Something just happen?")
                        .font(.system(size: 25))
                    
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text("Let your friends know INSTANTLY")
                        .font(.system(size: 18))
                    
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                   
                    Spacer()
                        .frame(height: 30)
                    
                    
                    Text("with a")
                        .font(.system(size: 18))
                        
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                    
                 
                    
                    VStack {
                        
                        Text("PUSH NOTIFICATION")
                            .font(.system(size: 30))
                            
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.green)
                        
                        Text("TO THEIR PHONES")
                            .font(.system(size: 30))
                            
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.green)
                        
                        Spacer()
                            .frame(height: 20)
                        
                    
                        
                        
                        Spacer()
                            .frame(height: 50)
                        
                        VStack {
                            
                            Text("So They Can")
                                .font(.system(size: 30))
                                .italic()
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .purple3)
                            
                            
                            Text("Cheer you in good times")
                                .font(.system(size: 25))
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .purple3)
                            
                            Text("and lend Support in bad")
                                .font(.system(size: 25))
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .purple3)
                            
                        }
                        
                        
                        
                        Spacer()
                            .frame(height: 75)
                        
                        
                        VStack {
                            
                            
                            
                            
                            NavigationLink(
                                destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
                                label: {
                                    Text("Next")
                                        .fontWeight(.thin)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                            
                            Text("your atmosphere color \nwill change on homepage ")
                                .font(.system(size: 18))
                                .italic()
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            Spacer()
                                .frame(height: 140)
                            
                        }
                    }
                    
                }
            }
        }
    }
    
}




