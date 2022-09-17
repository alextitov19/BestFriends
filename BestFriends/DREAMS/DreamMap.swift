//
//  DreamMap.swift
//  BestFriends
//
//  Created by Social Tech on 9/15/22.
//
//

import Foundation
import SwiftUI


struct DreamMap: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
                Text("Living your Dream")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("isn't a goal")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)

                Text("it's a by-product!")
                    .font(.system(size: 45))
                    .italic()
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height:30)
                
               
                VStack {
               
                    
                    Link(destination: URL(string: "https://socialtechlabs.com/dream-map/")!) {
                        
                        Text("The Stuff Inside")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 23))
                            .background(ColorManager.pmbc_green)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                      
               
                    }
                }
                
            }
            
        }
        
    }
    

