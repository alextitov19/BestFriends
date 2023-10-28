//
//  CreateChatRooms.swift
//  BestFriends
//
//  Created by Social Tech on 12/20/22.
//


    import Foundation
    import SwiftUI
    import AVKit

    struct InfoCreateChatRooms: View {
      
        let user: User
       
        var body: some View {
            
            ZStack {
                
                   Color.black
                       .opacity(0.9)
                       .ignoresSafeArea()
                   
                   AdPlayerView(name: "sky2")
                       .ignoresSafeArea()
                       .blendMode(.screen)
                
                VStack {
              
                       
                    ZStack {
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 400, height: 400)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.25)
                        
                        VStack {
                    
                            Text("CREATING Chat Rooms")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.cyan)
                            
                            Text("Tap ALL friend's planets one-at-a-time, \nbefore tapping ChatBubble popup. \n Then tap ChatBubble popup and name room")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            
                           
                            
                            
                            Spacer ()
                                .frame(height: 10)
                            
                            Text("Group")
                                .fontWeight(.medium)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.15)


                            Text("Chat Rooms")
                                .fontWeight(.medium)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.15)
                            
                    
                            Spacer ()
                                .frame(height: 10)
                            
                            Text("ACCESSING")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.cyan)
                            
                            Text("Just pull up on Chat tab at bottom of page.")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                            
    //
    //                        Spacer ()
    //                            .frame(height: 50)
                            
                        }
                        
                    }
                    
                    VStack {
                        
                        
                        
                        
                    }
                        }
                    }
                                Spacer ()
                                    .frame(height: 5)
                
                
                NavigationLink(
                    destination: ChangeChatBackgroundView(user: user),
                    label: {
                        Text("Customize \nChat Backgrounds")
                            .fontWeight(.light)
                            .frame(width: 280, height: 80)
                            .foregroundColor(Color.white)
                            .font(.system(size: 25))
                            .background(Color.cyan)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .opacity(0.5)
                    })
                                
                            
                            
                        }
                    }
            
               
