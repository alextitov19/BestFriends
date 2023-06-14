//
//  NuclearOption.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI


struct Step4_NuclearOption: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    var body: some View {
        
        ZStack {

            ColorManager.grey2
                  .ignoresSafeArea()
          
 
            VStack {
                
            
                    
                Spacer()
                    .frame(height: 20)
                
                ZStack {
                    
                    Image(systemName: "heart.fill")
                    
                        .resizable()
                        .frame(width: 150, height: 130, alignment: .leading)
                    
                        .foregroundColor(Color(hue: 0.714, saturation: 0.411, brightness: 0.626))
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 3, x: 1, y: 3)
                    
                    
                    Text("Ok, all that breathing \ndidn't help much. ")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                }
                
                
                Spacer()
                    .frame(height: 20)
                
                Text("Please, before unfriending")
                    .font(.system(size: 20))
                   
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .padding(.horizontal, 0)
             
                
                Text("and making hurtful")
                    .font(.system(size: 20))
                  
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .padding(.horizontal, 0)
                
                Text("comments on social media")
                    .font(.system(size: 20))
                  
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
//                    .padding(.horizontal, 0)
               
                VStack {
              
                 
                   Text("REMEMBER")
                    .font(.system(size: 50))
                    .foregroundColor(.purple)
                    .fontWeight(.ultraLight)
                   
                    Spacer()
                        .frame(height: 20)
                    
            Text("you were BFF and will be again!")
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                        .italic()
                        .multilineTextAlignment(.center)
                        .frame(width: 310, height: 100, alignment: .leading)
                        .font(.system(size: 35))
                       .padding(10)
                        .background(Color.gray)
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
              
               
                    Spacer()
                        .frame(height: 20)
                    
                    
                     NavigationLink(
                        destination: YouGotThis(user: user, friends: friends),
                        label: {
                            Text("Another Thought")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Spacer()
                        .frame(height: 15)
                    
                    Button(action: {
                                                 sessionManager.showLogin()
                                             },
                                                 label: {
                                                 Image("home-alt2")
                                                     .frame(width: 50, height: 25)
                                                     .foregroundColor(.white)
                                                     .font(.system(size: 20))
                                                     .background(ColorManager .grey3)
                                                     .cornerRadius(15)
                                                     .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                                     .opacity(0.70)
                                                 
                                             })
                    
                  
                    Spacer()
                        .frame(height: 120)
                    
//                    .padding(.vertical, 40)
                }
            }
            
        }
    }
    
}



//
//
//struct NuclearOption_Previews : PreviewProvider {
//    static var previews: some View {
//        Step4_NuclearOption()
//    }
//}
//

