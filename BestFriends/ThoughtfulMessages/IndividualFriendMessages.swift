//
//  IndividualFriendMessages.swift
//  BestFriends
//
//  Created by Social Tech on 4/23/22.
//



import Foundation
import SwiftUI



struct IndividualFriendMessages: View {
   
    @EnvironmentObject var sessionManager: SessionManager
   
    var body: some View {
//        ScrollView {
            ZStack {
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
               
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .offset(y: -250)
                
    //            put in appropriate Friend's  planet
                
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

                        
                    Text("Thoughtful Messages")
                        .font(.system(size: 40))
                        .foregroundColor(.white)

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
                    Spacer ()
                        .frame(height: 140)
                    
                VStack {
                    Button(action: {
                        sessionManager.showHome()
                    }, label: {
                        Text("HOME")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    })
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

