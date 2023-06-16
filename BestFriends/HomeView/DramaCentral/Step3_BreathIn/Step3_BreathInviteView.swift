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
    
    var body: some View {
        
        ZStack {
            
            ColorManager.grey2
                .ignoresSafeArea()
            
            //            // Stars animation...
            //            AdPlayerView(name: "backgroundAnimation")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //
            VStack{
                
                //                Text("Something bad")
                //                    .font(.system(size: 35, weight: .bold))
                //                    .fontWeight(.light)
                //                    .foregroundColor(ColorManager .grey4)
                //                    .multilineTextAlignment(.center)
                
                
                HStack {
                    
                    
                }
                
                VStack {
                    
                    
                    
                    
                    
                    VStack {
                        NavigationLink(
                            destination: BreathInView(),
                            label: {
                                Text("Breathe")
                                    .fontWeight(.thin)
                                    .frame(width: 250, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.pmbc_blue)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        Spacer()
                            .frame(height: 100)
                        
                        VStack {
                            
                            
                            Text("Did you just have a huge fight")
                                .font(.system(size: 25, weight: .bold))
                                .fontWeight(.light)
                                .foregroundColor(ColorManager .purple5)
                                .multilineTextAlignment(.center)
                            
                            Text("with your friend")
                                .font(.system(size: 25, weight: .bold))
                                .fontWeight(.light)
                                .foregroundColor(ColorManager .purple5)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("or romantic partner?")
                                .font(.system(size: 25, weight: .bold))
                                .fontWeight(.light)
                                .foregroundColor(ColorManager .purple5)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 10)
                            
                            NavigationLink(
                                destination: Step4_NuclearOption(user: user, friends: friends),
                                label: {
                                    Text("Dented Heart?")
                                        .fontWeight(.thin)
                                        .frame(width: 250, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 30))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            
                            Spacer()
                                .frame(height: 15)
                            
                            Text("maybe we can help")
                                .font(.system(size: 20, weight: .bold))
                                .italic()
                                .fontWeight(.light)
                                .foregroundColor(ColorManager .grey4)
                                .multilineTextAlignment(.center)
                            
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
    }
    
}
