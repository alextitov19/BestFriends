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
//        ScrollView {
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
                Image("2 weeks")
            
                
                VStack {
                    ZStack {
                 
                   
                    Image(systemName: "heart.fill")
         //            Rectangle()
                             .resizable()
                             .frame(width: 140, height: 130, alignment: .leading)
         //                .clipShape(Circle())
                         .foregroundColor(.purple)
                       .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 3, x: 1, y: 3)

                        
                     Text("aah!")
                             .font(.system(size: 45))
                             .foregroundColor(.white)
                             .fontWeight(.medium)
                             .multilineTextAlignment(.center)
                        Spacer()
                            .frame(height: 10)
                    }
//              put in Friend 1 name below
                    Text("[Friend 1's name]")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
//                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        
                    Text("Thoughtful Messages")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
//                       .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//
                    ScrollView(.vertical) {
       
            VStack {
                    
                    ZStack {
                    Rectangle()
                        .frame(width: 350, height: 50)
                        .foregroundColor(.purple)
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        
                    Text("1rd message from Friend 1 in Chat")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            
                            Divider ()

                    }
                    ZStack {
                        Rectangle()
                                .frame(width: 350, height: 50)
                                .foregroundColor(.purple)
                               .cornerRadius(25)
                               .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                            Text("2rd message from Friend 1 in Chat")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                           
                            Divider ()
                    }
                       
                ZStack {
                    Rectangle()
                            .frame(width: 350, height: 50)
                            .foregroundColor(.purple)
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            
                        Text("3rd message from Friend 1 in Chat")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                       
                        Divider ()
               
                
                            }
            
                        }
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

