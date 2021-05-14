//
//  BetaTesters.swift
//  BestFriends
//
//  Created by Robert Roe on 5/13/21.
//

import Amplify
import SwiftUI

struct BetaTesters: View {

    var body: some View {
        NavigationView{
    
  
        ZStack {
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 25)
                                                    
                            Image("Penguin Sticker 18")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 175)
                                    .scaledToFill()
                            
                                Text("Help us make BestFriends better!")
                                    .italic()
                                    .font(.system(size: 20))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                           
                        }
                    }
                    
                Spacer()
                    .frame(height: 25)
                
                    
                    Text("We are dedicated to making BestFriends an app that helps YOU. We are holding weekly Zoom calls to talk to our users in person.")
                       
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    
                Spacer()
                    .frame(height: 25)
                
                    
                    Text("The Zoom call is Every Wednesday at 8pm EDT. Here is the link. Help us make BestFriends an app you LOVE.")
                       
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                
                Spacer()
                    .frame(height: 0)
                
                Link("SignUp", destination: URL(string: "https://socialtechlabs.com/beta-team/")!)
                .frame(width: 230, height: 50, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .cornerRadius(25)
                
                
                Spacer()
                    .frame(height: 75)
                
                Button("SignUp", action: {()
                })
                .frame(width: 230, height: 50, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                .cornerRadius(25)
                
                
                        Spacer()
                            .frame(height: 200)
                }
           
        
        }
        }
  //  .navigationBarTitle("")
   // .navigationBarHidden(true)
    
   
   
    }
}


