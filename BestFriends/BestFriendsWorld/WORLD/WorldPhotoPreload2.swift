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
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            ColorManager.purple4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
              
                Text("Send a Friend")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("a picture that makes")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
          
                Text("them")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                VStack {
           
            Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(.red)
                        .frame(width: 220, height: 180)
                        .shadow(color: .blue, radius: 65, x: 30, y: 50)
                        .opacity(0.85)
//
//                Spacer ()
//                       .frame(height: 0)
                    
                  Text("my")
                                .font(.system(size: 40))
                                .italic()
                                .foregroundColor(.blue)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
    //                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                   Text("FriendGroup")
                                 .font(.system(size: 30))
                                 .italic()
                                 .foregroundColor(.blue)
                                 .fontWeight(.thin)
                                 .multilineTextAlignment(.center)
     //                            .shadow(color: .black, radius: 1, x: 0, y: 1)

                }
                
                Spacer()
                    .frame(height: 70)
                
//                Text("Simple")
//                    .font(.system(size: 17))
//                    .italic()
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
                
                Text("Shake")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                Text("Your Phone")
                    .font(.system(size: 50))
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("(on Homepage to see if they sent you one!)")
                    .font(.system(size: 17))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
            
                
           
                
                VStack {
                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(destination: PhotoPopView(user: user, friends: friends), label: {
                        Text("Upload Images")
                            .fontWeight(.thin)
                            .frame(width: 250, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 27))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })

               
                
                    }
                }
                
            }
            
        }
        
    }
    

