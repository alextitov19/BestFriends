//
//  YouGotThis.swift
//  BestFriends
//
//  Created by Social Tech on 5/1/22.
//

import Foundation
import SwiftUI

struct YouGotThis: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        ZStack {
            

            
            ColorManager.grey1
                  .ignoresSafeArea()
     
               
            VStack {
                
                Text("REMEMBER")
                 .font(.system(size: 50))
                 .foregroundColor(.purple)
                 .fontWeight(.ultraLight)
                
                 Spacer()
                     .frame(height: 20)

                
                  NavigationLink(
                      destination: Step2_FightLandingView(user: user, friends: friends),
                      label: {
                          Text("Sharp words erase all the nice words you've ever said >>>")
                                      .fontWeight(.ultraLight)
                                      .foregroundColor(Color.white)
                                      .italic()
                                      .multilineTextAlignment(.center)
                                      .frame(width: 310, height: 130, alignment: .leading)
                                      .font(.system(size: 32))
                                     .padding(10)
                                      .background(Color.gray)
                                      .cornerRadius(25)
                                      .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                   
                          
                      }
               
                  )}

            }
        }
        
    }


