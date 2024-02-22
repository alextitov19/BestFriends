//
//  Why.swift
//  BestFriends
//
//  Created by Social Tech on 4/29/22.
//



import Foundation
import SwiftUI

struct Step5_Why: View {
    
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
                
                Text("This part takes")
                    .font(.system(size: 40))
                    .foregroundColor(.purple)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.leading)
            
               
                Text("COURAGE")
                    .font(.system(size: 70))
                    .foregroundColor(.purple)
                    .fontWeight(.ultraLight)
                
                Spacer()
                    .frame(height: 10)
//
//
                
                VStack {
             
                Link(destination: URL(string: "https://socialtechlabs.com/understanding-the-why/")!) {
                    
                    Text("Dare to take a look inside")
                        .fontWeight(.thin)
                        .frame(width: 310, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(ColorManager.pmbc_blue)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
                
                VStack {
                    Spacer()
                        .frame(height:30)
                  
                    NavigationLink(
                        destination: Step6_TextingFirst(user: user, friends: friends),
                        label: {
                            Text("I'm ready to reach out")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .frame(width: 310, height: 40)
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                          
                        }
                 
                    )}
                    
                    Spacer()
                        .frame(height: 160)
                    
                   
  
                  
                    
                
                    
                    
                    
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
                    
                    Text("I'm just not ready to talk yet")
                        .font(.system(size: 23))
                        .italic()
                        .foregroundColor(.black)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.leading)
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 100)
                }
            }
        }
    }

}
//
//struct Why_Previews : PreviewProvider {
//    static var previews: some View {
//        Step5_Why()
//    }
//}



