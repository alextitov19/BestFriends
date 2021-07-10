//
//  BlueModeConditions.swift
//  BestFriends
//
//  Created by Social Tech on 7/10/21.
//

import Foundation
import SwiftUI


struct BlueModeConditions: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        NavigationView{
            ZStack {
                
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
              
                    
                    Text("BlueMode Agreement")
                        .italic()
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 230, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 15)
                    
                    
                  
                       
                        
                        Text("Condition 1")
                            
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("I agree to use BlueMode if my friend invites me into BlueMode.")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 320, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Spacer()
                            .frame(height: 25)
                        
                    VStack {
                        Text("Condition 2")
                            
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                           
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("After a huge fight, I agree to speak with my friend that invited me in BlueMode - one last time.")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            .multilineTextAlignment(.center)
                            .frame(width: 320, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    
                            
                       
                            
                            
                            NavigationLink(destination: SettingsView()) {
                                Text("I Agree")
                                    .font(.title)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: 425, height: 50)
                                    .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                    .cornerRadius(25)
                          
                            
                            Spacer()
                                .frame(height: 400)
                            
                        }
                        
                     
                            
                            
                            
                        }
                    }
                }
            }
        }
        
    }

struct BlueModeConditions_Previews : PreviewProvider {
    static var previews: some View {
        BlueModeConditions()
    }
}
        
        
        


