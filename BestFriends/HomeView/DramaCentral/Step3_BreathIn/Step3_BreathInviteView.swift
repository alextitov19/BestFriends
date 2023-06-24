//
//  BreathInviteView.swift
//  BestFriends
//
//  Created by Social Tech on 4/16/22.
//

import Foundation
import SwiftUI
import AVKit

struct Step3_BreathInviteView: View {
    
    //    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]
    
    var body: some View {
        
        ZStack {
            
//            ColorManager.grey3
//                .ignoresSafeArea()
            
            Image("changeBackground")
                .resizable()
            .ignoresSafeArea()
            
            VStack{
                
            
                
                HStack {
                    
                    
                }
                
                VStack {
                    
                  
                    
                    Text("HUGE FIGHT")
                        .font(.system(size: 30, weight: .bold))
                        .fontWeight(.light)
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
                    
                    Text("with your friend")
                        .font(.system(size: 25, weight: .bold))
                        .fontWeight(.light)
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
                    
                    
                    Text("or romantic partner?")
                        .font(.system(size: 25, weight: .bold))
                        .fontWeight(.light)
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    VStack {
                  
                        
                        VStack {
                            
                            
                       
                            
                            NavigationLink(
                                destination: Step4_NuclearOption(user: user, friends: friends),
                                label: {
                                    Text("Maybe we can help")
                                        .fontWeight(.thin)
                                        .frame(width: 310, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 30))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            
                            
                   
                            
                       
                            Spacer()
                                .frame(height: 100)
                     

                            
                            NavigationLink(destination: HurtFeelings4(user: user, friends: friends, groups: groups),
                                label: {
                                    Text("Friend hurt your feelings?")
                                        .fontWeight(.thin)
                                        .frame(width: 310, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 27))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            

                            Spacer()
                                .frame(height: 80)
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
    }
    
}
