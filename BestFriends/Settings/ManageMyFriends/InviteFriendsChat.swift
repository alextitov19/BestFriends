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
               
                
                Text("Inviting Friends to Chat.")
                    
                    .font(.system(size: 40))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               
                Spacer()
                    .frame(height: 20)
                
                
                HStack {
                    
                    
                    Text("After tapping this icon - all stars go from 'pruple' to 'blue' >")
                        .italic()
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 325, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    
                    Image("inviteWhite")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .scaledToFill()
                    
                }
                Spacer()
                    .frame(height: 40)
             
                VStack {
                
                
                Text("Step 1.  Tap your friend's 'blue' star to invite them to chat.")
                    
                    .font(.system(size: 22))
                    .fontWeight(.regular)
                    
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 375, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 22))
                    
               
                
                    Spacer()
                        .frame(height: 5)
                
                    
                        Text("Safety Tip: Tap 'blue' star only once.")
                            .font(.system(size: 21))
                            .foregroundColor(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
                            .frame(width: 375, height: 40)
                            .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
    //                        .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Step 2.  Stars turn 'green' letting you know a push notification has been sent.")
                        
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 22))
                    
                 
           
               
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

struct InviteFriendsChat_Previews : PreviewProvider {
    static var previews: some View {
        InviteFriendsChat()
   
    }
}

}
