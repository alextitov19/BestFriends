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
                
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                  
                   
                    
                        Text("Adding Your Friends.")
                            
                            .font(.system(size: 40))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 20)
                    
                    
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
                        
                        Text("(Follow steps on Pop up)")
                            
                            .font(.system(size: 25))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        
                      
                    
                    Spacer()
                        .frame(height: 300)
                    
                  
                   
                    Text("(You're done)")
                        .italic()
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
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

  struct PreAddFriends_Previews : PreviewProvider {
        static var previews: some View {
            PreAddFriends()
    


            
        }
  }
}
