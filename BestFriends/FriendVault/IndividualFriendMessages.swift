//
//  IndividualFriendMessages.swift
//  BestFriends
//
//  Created by Social Tech on 4/23/22.
//



import Foundation
import SwiftUI

// Friend 1

struct IndividualFriendMessages: View {
   
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
            
//            put in Friend 1 planet
            Image("planet_1")
        
        ZStack {

   
            ZStack {
           
            Rectangle()
                .frame(width: 90, height: 90)
                .clipShape(Circle())
                .foregroundColor(.green)
//                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 1, x: 1, y: 0)
//

               
            Text("Long-tapped best messages from Chat")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
    
                
//
//
//            }
//
//
//           .onTapGesture {
//               withAnimation {
//               self.showItems.toggle()
//               }
//           }
//           .animation(Animation.easeInOut(duration: 1.0), value: showItems)
//
//            }
//
//        }
//
//
//        }
//   }
//
//struct FriendVaultCircle: View {
//    var color: Color
//    var friendName: String
//
//    var body: some View {
//
//        ZStack {
//        Rectangle()
//        .frame(width: 105, height: 105)
//        .clipShape(Circle())
//        .foregroundColor(color)
//        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
//
//        Text(friendName)
//                .fontWeight(.ultraLight)
                
                
        }
    }
}

    }
}
struct IndividualFriendMessages_Previews : PreviewProvider {
    static var previews: some View {
        IndividualFriendMessages()
    }
}

