//
//  WorldPhotoPreload.swift
//  BestFriends
//
//  Created by Social Tech on 8/17/22.
//



import Foundation
import SwiftUI


struct WorldPhotoPreload: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
                Text("Shake")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("Your Phone")
                    .font(.system(size: 40))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("on BF homepage")
                    .font(.system(size: 40))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
               
                Spacer()
                    .frame(height: 30)
                
                Text("Images from BF 'World' Popup")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
             
                
                VStack {
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(destination: WorldPhotoPreload(user: user, friends: friends), label: {
                        Text("Load PhotoShake")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                 
//
//                    Text("and one for yourself")
//                        .font(.system(size: 17))
//                        .foregroundColor(.white)
//                        .fontWeight(.light)
//                        .foregroundColor(Color.white)
                    
                    
                        Spacer()
                            .frame(height: 70)
                
                    }
                }
                
            }
            
        }
        
    }
    

