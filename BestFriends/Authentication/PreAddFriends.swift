//
//  PreAddFriends.swift
//  BestFriends
//
//  Created by Social Tech on 6/30/21.
//

import Foundation


import SwiftUI


struct PreAddFriends: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        NavigationView{
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    Text("QR Codes _ KEEP TROLLS OUT!")
                        
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 10)
                    

                    
                        Text("How to Add Friends?")
                            
                            .font(.system(size: 42))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 100)
                    
                    
                    HStack {
                          
                         
                          
                          
                            
                            
                            Text("Tap this icon on the next page >")
                                .italic()
                                .font(.system(size: 27))
                                .fontWeight(.regular)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                       
                        
                        Image("inviteWhite")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .scaledToFill()
                        
                        
                        }
                    
                    Spacer()
                        .frame(height: 55)
                    
                    
                    
                }
            }
        }
    }
}

  struct PreAddFriends_Previews : PreviewProvider {
        static var previews: some View {
            PreAddFriends()
    


            
        }
  }
