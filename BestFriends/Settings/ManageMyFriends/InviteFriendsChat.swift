//
//  InviteFriendsChat.swift
//  BestFriends
//
//  Created by Social Tech on 7/16/21.
//

import Foundation


import SwiftUI


struct InviteFriendsChat: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                Text("How to Creat a New Chat Room with your Friends.")
                    
                    .font(.system(size: 40))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
                Spacer()
                    .frame(height: 30)
                
                
                HStack {
                    
                    
                    Text("Step 1: Tap this icon in top-right corner of homepage. Stars change color from 'purple' to 'blue'.")
                        
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 310, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                    Image("chat-add icon")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .scaledToFill()
                    
                }
                Spacer()
                    .frame(height: 25)
                
                VStack {
                    Text("Step 2: Now, you have 5 seconds to tap your friend's stars that you want to invite, turning them to 'green'.")
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 345, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 22))
                    
                    Spacer()
                        .frame(height: 25)
                    
                    Text("Tips:")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .frame(width: 375, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 22))
                    
                    
                    Text("- All invited friends will receive push notifications telling them you urgently need to talk.\n- You'll receive push notifications back telling you exactly when each is available.")
                        .italic()
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.leading)
                        .frame(width: 375, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 22))
                    
                    Spacer()
                        .frame(height: 5)
                    
                    
//                    Text("The stars will toggle between blue and green; green representing the ones whi will be invited to chat when the timer is up.")
//                        .font(.system(size: 21))
//                        .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
//                        .frame(width: 375, height: 40)
//                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                    //                        .cornerRadius(25)
//                    //                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                    Spacer()
//                        .frame(height: 30)
//
//                    Text("Step 2.  Stars turn 'green' letting you know a push notification has been sent.")
//
//                        .font(.system(size: 22))
//                        .fontWeight(.regular)
//
//                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
//                        .multilineTextAlignment(.center)
//                        .frame(width: 375, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                        .font(.system(size: 22))
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(destination: AddFriends()) {
                        Text("Got it.")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 250, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                    }
                }
            }
        }
    }
}


struct InviteFriendsChat_Previews : PreviewProvider {
    static var previews: some View {
        InviteFriendsChat()
        
    }
}

