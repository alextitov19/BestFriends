//
//  NotEnjoyingApp.swift
//  BestFriends
//
//  Created by Social Tech on 5/28/21.
//

import Amplify
import SwiftUI

struct NotEnjoyingApp: View {

    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Text("Darn it.")
                    .foregroundColor(.white)
                    .font(.system(size: 75))
                    .font(.title)
            
                Spacer().frame(height: 25)
                
                
                Text("We're sorry to hear this.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 100, alignment: .center)
                    .font(.system(size: 40))
                    .font(.title)
            
                Spacer().frame(height: 25)
                
                Text("Could you please take a moment and tell us, Why?")
                    .italic()
                    .font(.system(size: 35))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
                Spacer().frame(height: 25)
                VStack {
                
                  
            
                    Spacer()
                        .frame(height: 20)
                 
                
                    Link("My Reason", destination: URL(string: "https://socialtechlabs.com/survey/")!)
                       // .frame(width: 325, height: 50)
                        .frame(width: 300, height: 50, alignment: .center)
                        .font(.system(size: 35))
                       
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                                
                    
                      Spacer()
                          .frame(height: 50)
                  
                    
                    // We want to take the user back to the page they were previously on before the popup came up.
                    
                      NavigationLink(
                          destination: SettingsView(),
                          label: {
                              Text("Maybe Later")
                          })
                      .frame(width: 300, height: 50, alignment: .center)
                        .font(.system(size: 35))
                      .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                      .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                      .cornerRadius(25)
                      
                    Spacer()
                        .frame(height: 30)
                 
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 100)
                
                    }
                }
            }
        }
    }

struct NotEnjoyingApp_Previews : PreviewProvider {
    static var previews: some View {
        NotEnjoyingApp()
    }
}



