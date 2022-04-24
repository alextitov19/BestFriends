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

            
//       Trying to link circles to the IndividualFriendMessages pages
       
//            Button(action: {
//                sessionManager.showIndividualFriendMessages()
//            }) {
//            FriendVaultCircle (color: .pink, friendName: "Friend 1")
//                .offset(x: showItems ? 100 : 0, y: showItems ? -325: 0)
//                }
//
           
              
               
            FriendVaultCircle (color: .pink, friendName: "Friend 1")
                .offset(x: showItems ? 100 : 0, y: showItems ? -325: 0)
                
            
            
            FriendVaultCircle (color: .orange, friendName: "Friend 2")
                .offset(x: showItems ? -100 : 0, y: showItems ? -400: 0)
            
            FriendVaultCircle (color: .purple, friendName: "Friend 3")
                .offset(x: showItems ? -150 : 0, y: showItems ? -550: 0)
            
            FriendVaultCircle (color: .gray, friendName: "Friend 4")
                .offset(x: showItems ? -60 : 0, y: showItems ? -160: 0)
            
            FriendVaultCircle (color: .blue, friendName: "Friend 5")
                .offset(x: showItems ? 80 : 0, y: showItems ? -260: 0)
            
         
           
            ZStack {
           
            Rectangle()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .foregroundColor(.green)
//               .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 1, x: 1, y: 0)
//

               
            Text("Long-tap \nBest \nMessages \n from Chat")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
    
                
                

            }
            
            
           .onTapGesture {
               withAnimation {
               self.showItems.toggle()
               }
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
            
            
//            do I make this a button?
            
        Rectangle()
        .frame(width: 105, height: 105)
        .clipShape(Circle())
        .foregroundColor(color)
        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
        
        Text(friendName)
                .fontWeight(.ultraLight)
            
           
       
        }
    }
}


struct BestFriendMessages_Previews : PreviewProvider {
    static var previews: some View {
        BestFriendMessages()
    }
}


//
//
//Button(action: {
//    sessionManager.showIndividualFriendMessages()
//}) {
//FriendVaultCircle (color: .pink, friendName: "Friend 1")
//    .offset(x: showItems ? 100 : 0, y: showItems ? -325: 0)
//    }
//

