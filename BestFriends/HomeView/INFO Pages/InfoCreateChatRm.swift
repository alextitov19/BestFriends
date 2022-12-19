//
//  InfoCreateChatRm.swift
//  BestFriends
//
//  Created by Social Tech on 10/25/22.
//



import Foundation
import SwiftUI


struct InfoCreateChatRm: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    
    var body: some View {
        ZStack {

//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
    
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            AdPlayerView(name: "background_4")
                .ignoresSafeArea()
                .blendMode(.screen)
//                .opacity(0.75)
                
            VStack {
                Spacer()
                    .frame(height: 15)

                    Text("Create")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.darkGrey)
                    
                    Text("NEW Chat Rooms")
                        .font(.system(size: 35))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager.darkGrey)
                    
              
                
                Text("-Tap Friend's Planet \n-Name Chat Room in popup \n-Exit app and re-enter \nto Activate NEW Room")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .foregroundColor(ColorManager.darkGrey)
                    .padding()
                
                                Spacer()
                                .frame(height: 35)
                
         
                Text("Try 'motion' background in Settings")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.darkGrey)
                
                NavigationLink(
                    destination: ChangeChatBackgroundView(user: user),
                    label: {
                        Text("Settings")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 30)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
                }
                
         
                Spacer()
                .frame(height: 100)
                

           
               
            }
        }
        
    }






