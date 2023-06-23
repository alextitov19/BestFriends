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

            ColorManager.grey2
                  .ignoresSafeArea()
          
 
            VStack {
                
            
                    
                Spacer()
                    .frame(height: 20)
                
                ZStack {
                    

                }
                

               
                VStack {
              
                 
                   Text("BELIEVE")
                    .font(.system(size: 50))
                    .foregroundColor(.purple)
                    .fontWeight(.ultraLight)
                   
                    Spacer()
                        .frame(height: 20)
                    
            Text("you were best friends \nbefore and will be again!")
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                        .italic()
                        .multilineTextAlignment(.center)
                        .frame(width: 310, height: 100, alignment: .leading)
                        .font(.system(size: 30))
                       .padding(10)
                        .background(Color.gray)
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
              
               
                    Spacer()
                        .frame(height: 60)
                    
                    
                    
                    Text("just")
                        .font(.system(size: 15, weight: .light))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(ColorManager .grey4)
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
                    
                    
                     NavigationLink(
                        destination: YouGotThis(user: user, friends: friends),
                        label: {
                            Text("Another Thought")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Spacer()
                        .frame(height: 25)
                    
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


