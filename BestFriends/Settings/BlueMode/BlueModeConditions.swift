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
                        .font(.system(size: 45))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 230, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 15)
                    
                    
                    VStack {
                       
                        
                        Text("Condition 1")
                            
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Text("I agree to use BlueMode if my friend invites me into BlueMode.")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Spacer()
                            .frame(height: 45)
                        
                        
                        Text("Condition 2")
                            
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                           
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("After a huge fight, I agree to speaking my friend that invited me in BlueMode one last time.")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            .multilineTextAlignment(.center)
                            .frame(width: 300, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        VStack {
                            
                       
                            
                            
                            Spacer()
                                .frame(height: 15)
                            
                            
                          
                            
                            
                            
                                Image("downarrow")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .scaledToFill()
                                
                            
                            
                            Spacer()
                                .frame(height: 125)
                            
                        }
                        
                        VStack {
                            
                     
                            
                            
                            
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
        
        
        

