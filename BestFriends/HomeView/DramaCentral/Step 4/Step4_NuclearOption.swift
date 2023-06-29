//
//  NuclearOption.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI


struct Step4_NuclearOption: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
            
            
            VStack {

                VStack {
                    
                    
                    Text("first let's")
                        .font(.system(size: 15, weight: .light))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)
                    
                    
                    NavigationLink(
                        destination: BreathInView(),
                        label: {
                            Text("Breathe")
                                .fontWeight(.thin)
                                .frame(width: 275, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.pmbc_blue)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Spacer()
                        .frame(height: 60)
                 
                    
                    Text("remember")
                        .font(.system(size: 15, weight: .light))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(ColorManager .grey1)
                        .multilineTextAlignment(.center)

                    Text("Sharp words erase all the nice words you've ever said.")
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .italic()
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 80, alignment: .leading)
                        .font(.system(size: 25))
                        .padding(10)
                        .background(Color.orange)
                        .cornerRadius(25)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                           
                }
                
                Spacer()
                    .frame(height: 30)
                
                Text("believe")
                    .font(.system(size: 15, weight: .light))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(ColorManager .grey1)
                    .multilineTextAlignment(.center)
      
                Text("You were best friends before and you will be again!")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 80, alignment: .leading)
                    .font(.system(size: 25))
                    .padding(10)
                    .background(Color.orange)
                    .cornerRadius(25)
                    .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                
                
                Spacer()
                    .frame(height: 80)
                

                
                Text("when you're ready to reach out")
                    .font(.system(size: 15, weight: .light))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(ColorManager .grey1)
                    .multilineTextAlignment(.center)
                
                NavigationLink(
                    destination: Step2_FightLandingView(user: user, friends: friends),
                    label: {
                        Text("Let's try to fix this")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
           
                
                VStack {

                    
                    Spacer()
                        .frame(height: 15)
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                           label: {
                        Image("home-alt2")
                            .frame(width: 50, height: 25)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .background(ColorManager .grey3)
                            .cornerRadius(15)
                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                            .opacity(0.70)
                        
                    })
                    
                }
            }
            
        }
    }
    
}


