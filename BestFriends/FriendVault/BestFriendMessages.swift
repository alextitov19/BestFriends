//
//  FriendVault.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//



import Foundation
import SwiftUI

struct BestFriendMessages: View {
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0   
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
           
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
                .offset(y: -250)
            
            
            Image("planet_1")
        
        ZStack {

     
            Button(action: {
             print("tap function is working")
                sessionManager.showIndividualFriendMessages()
            }) {
                FriendVaultCircle (color: .pink, friendName: "Friend 1")
                }
            .offset(x: showItems ? 100 : 0, y: showItems ? -375: 0)
             
       
           
            Button(action: {
             print("tap function is working")
                sessionManager.showIndividualFriendMessages()
            }) {
                FriendVaultCircle (color: .orange, friendName: "Friend 2")
                }
            .offset(x: showItems ? -100 : 0, y: showItems ? -400: 0)
            
            
            Button(action: {
             print("tap function is working")
                sessionManager.showIndividualFriendMessages()
            }) {
                FriendVaultCircle (color: .purple, friendName: "Friend 3")
                }
            .offset(x: showItems ? -150 : 0, y: showItems ? -550: 0)
            
            
            Button(action: {
             print("tap function is working")
                sessionManager.showIndividualFriendMessages()
            }) {
                FriendVaultCircle (color: .gray, friendName: "Friend 4")
                }
            .offset(x: showItems ? -60 : 0, y: showItems ? -160: 0)
            
            
            Button(action: {
             print("tap function is working")
                sessionManager.showIndividualFriendMessages()
            }) {
                FriendVaultCircle (color: .blue, friendName: "Friend 5")
                }
            .offset(x: showItems ? 80 : 0, y: showItems ? -260: 0)
         
            ZStack {
           Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
                    .frame(width: 160, height: 160)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 3, x: 1, y: 3)

                VStack {
                
                Text("'TAP'")
                        .font(.title)
                        .foregroundColor(.green)
                        .fontWeight(.medium)
//                        .multilineTextAlignment(.center)
               
            Text("Thoughtful \nMessages \n'long-tapped' \nfrom Chat")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                }
              
                

            }
            
            
           .onTapGesture {
               withAnimation {
               self.showItems.toggle()
               }
               print("tap function is working")
           }
            
           .animation(Animation.easeInOut(duration: 1.0), value: showItems)

            }
        
        }
            
            
        }
   }

struct FriendVaultCircle: View {
    var color: Color
    var friendName: String
    
    var body: some View {
       
        ZStack {
          
        Rectangle()
        .frame(width: 105, height: 105)
        .clipShape(Circle())
        .foregroundColor(color)

        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
        
        Text(friendName)
                .fontWeight(.light)
                .foregroundColor(.black)
            
           
       
        }
    }
}


struct BestFriendMessages_Previews : PreviewProvider {
    static var previews: some View {
        BestFriendMessages()
    }

}
