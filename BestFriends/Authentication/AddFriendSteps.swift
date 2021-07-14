//
//  AddFriendSteps.swift
//  BestFriends
//
//  Created by Social Tech on 7/14/21.
//

import Foundation
import SwiftUI

struct AddFriendSteps: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        NavigationView{
            ZStack {
                
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                
                VStack {
                    Text("How do I Add a Friend?")
                        
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                        .frame(height: 15)
                    
                    
                    Text("Step 1")
                        
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Select [Get my QR code]")
                        
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    
                    Text("Step 2")
                        
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                        
                        .multilineTextAlignment(.center)
                        .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("Screen-shot your QR code and text image to your friend.")
                        
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                    VStack {
                        
                        Text("Step 3")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                            
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Ask friend to save QR image to their gallery.")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            .multilineTextAlignment(.center)
                            .frame(width: 275, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        Text("Step 4")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9791358113, blue: 0, alpha: 1)))
                            
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Text("Ask friend to select [My Gallery] and tap the image of your QR code.")
                            
                            .font(.system(size: 22))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 375, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                            .frame(height: 15)
                        
                        VStack {
                            
                            NavigationLink(destination: SettingsView()) {
                                Text("Take me back to Homepage >")
                                    .font(.title)
                                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                    .frame(width: 435, height: 50)
                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                    .cornerRadius(25)
                                
                                
                            }
                            
                            
                            Spacer()
                                .frame(height: 100)
                            
                        }
                    }
                }
            }
        }
    }
}


struct AddFriendSteps_Previews : PreviewProvider {
    static var previews: some View {
        AddFriendSteps()
       
    }
}

