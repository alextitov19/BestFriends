//
//  YesEnjoyingApp.swift
//  BestFriends
//
//  Created by Social Tech on 5/28/21.
//

import Amplify
import SwiftUI

struct YesEnjoyingApp: View {

    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Text("Great!!!")
                    .foregroundColor(.white)
                    .font(.system(size: 75))
                    .font(.title)
            
                Spacer().frame(height: 25)
                
                Text("Would you be so kind to write us a short review?")
                    .italic()
                    .font(.system(size: 35))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
                Spacer().frame(height: 25)
                VStack {
                
                  
                    Spacer()
                        .frame(height: 30)
                
                    NavigationLink(
                        destination: ResetPassword(),
                        label: {
                            Text("Write Review")
                        })
                    .frame(width: 300, height: 50, alignment: .center)
                        .font(.system(size: 35))
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    
                      
                    
                      Spacer()
                          .frame(height: 30)
                  
                      NavigationLink(
                          destination: ChangeEmail(),
                          label: {
                              Text("No thank you")
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

struct YesEnjoyingApp_Previews : PreviewProvider {
    static var previews: some View {
        YesEnjoyingApp()
    }
}


