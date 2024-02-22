//
//  DramaMainView.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI

struct DramaMainView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]
    let atmosphere: Atmosphere
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            AdPlayerView(name: "dramaLights")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                
                
                HStack {
                    VStack {
                        
                        
                        //                  MARK: First Position
                        
                        NavigationLink(destination: Step2_FightLandingView(user: user, friends: friends), label: {
                            
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.65)
                                
                                Text("(5) \nSending Push \n Notification")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        })
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        
                        //          MARK: 2nd Position
                        
                        NavigationLink(destination: Step6_TextingFirst(user: user, friends: friends), label: {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.65)
                                
                                Text("(4) \nReaching Out \n1st - Anxiety")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        })
                        
                    }
                    
                    
                    
                    //MARK: 3nd Position
                    VStack {
                        
                        
                        NavigationLink(destination: Step7_TimeToTalk(), label: {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple2)
                                
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.65)
                                Text("(final step) \nHug-it-Out")
                                    .foregroundColor(.purple)
                                    .font(.system(size: 14, weight: .bold))
                                    .shadow(color: .black, radius: 0.5, x: 0, y: 1)
                                  
                                
                            }
                        })
                        
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        //MARK: 4th Position
                        
                        
                        
                        NavigationLink(destination: Step1_NotReadyTalk(), label: {
                            ZStack {
                                Circle()
                                    .frame(width: 115, height: 115)
                                    .foregroundColor(ColorManager.grey1)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.65)
                                
                                Text("Need \nMore \nTIME")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                                
                            }
                        })
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: Step5_Why(user: user, friends: friends), label: {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.65)
                                
                                Text("(3) \nLooking \nInside")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        })
                        
                    }
                    
                    VStack {
                        
                        NavigationLink(destination: Step3_BreathInviteView(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: [atmosphere]), label: {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple2)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.65)
                                
                                Text("STEP (1) \nTake a\nBreath")
                                    .foregroundColor(.green)
                                    .font(.system(size: 14, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                            }
                        })
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(destination: Step4_NuclearOption(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: [atmosphere]), label: {
                            ZStack {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                    .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    .opacity(0.65)
                                
                                
                                Text("(2) \nNot \n Going \nNuclear")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                
                            }
                            
                        })
                        
                    }
                }
                
                Spacer()
                    .frame(height: 30)
                
                Button(action: {
                    sessionManager.showLogin()
                },
                    label: {
                        Text("Home / Chat")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple4)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .opacity(0.65)
                    })
                
                
 
                Spacer()
                    .frame(height: 150)
                
            }
        }
    }
    
    
}








//
//struct DramaMainView_Previews: PreviewProvider {
//    static var previews: some View {
//        DramaMainView()
//    }
//}
//


