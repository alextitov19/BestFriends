//
//  BuiltForTeens.swift
//  BestFriends
//
//  Created by Social Tech on 8/30/22.
//



import Foundation
import SwiftUI


struct BuiltForTeens: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let groups: [Group]
    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
//            ColorManager.grey3
//                .ignoresSafeArea()
//                .onAppear()
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
//            AdPlayerView(name: "Planet6")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
//            AdPlayerView(name: "Atmosphere2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            VStack {
                
                Text("YEP! ")
                    .font(.system(size: 50))
//                    .italic()
                    .foregroundColor(ColorManager.orange2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15)
                
                Text("We surveyed 500 teens")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(ColorManager.orange2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
              
                
                Text("We worked with 175 teens")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(ColorManager.orange2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
           
                
                Spacer()
                    .frame(height: 30)
                
                Text("Thus was born")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("BestFriends app")
                    .font(.system(size: 50))
                
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height:20)
            
                    VStack {

                        
                        Link(destination: URL(string: "https://socialtechlabs.com/team/")!) {
                                Text("Meet the Teen Team")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    .opacity(0.8)
                         
                        }
                        
                        
                        
                        Spacer()
                            .frame(height: 150)
                        
                        Text("We're beta testing")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(ColorManager.orange2)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                        
                        Text("with teens, NOW!")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(ColorManager.orange2)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                        
                        NavigationLink(
                            destination: BetaTestVideo(),
                            label: {
                                Text("I want to get Involved!")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple4)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                   
                      
                        Spacer()
                            .frame(height: 120)
                 
                        
                    }
                }
                
            }
            
        }
        
    }
    


