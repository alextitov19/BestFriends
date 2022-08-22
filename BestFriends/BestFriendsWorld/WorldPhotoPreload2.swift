//
//  WorldPhotoPreload2.swift
//  BestFriends
//
//  Created by Social Tech on 8/22/22.
//


import Foundation
import SwiftUI


struct WorldPhotoPreload2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
              
                
                
                Text("(on homepage)")
                    .font(.system(size: 15))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("Shake Phone")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 50)
                
                Text("Images from")
                    .font(.system(size: 30))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("'World' Popup")
                    .font(.system(size: 35))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
          
                
             
                
                VStack {
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(destination: PhotoPopView(user: user, friends: friends), label: {
                        Text("Load PhotoPop")
                            .fontWeight(.thin)
                            .frame(width: 250, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })

                    
                        Spacer()
                            .frame(height: 100)
                
                    }
                }
                
            }
            
        }
        
    }
    

