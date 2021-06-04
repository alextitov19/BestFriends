//
//  ChangeBackground.swift
//  BestFriends
//
//  Created by Social Tech on 5/28/21.
//


import Amplify
import SwiftUI

struct ChangeBackground: View {

    var body: some View {
        
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Change Backgrounds")
                    .foregroundColor(.white)
                    .font(.title)
            
                Spacer().frame(height: 25)
                VStack {
                
                  
                    Spacer()
                        .frame(height: 30)
                
                    NavigationLink(
                        destination: MotionBackground(),
                        label: {
                            Text("Motion Backgrounds")
                        })
                    
                        .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    
                      
                    
                      Spacer()
                          .frame(height: 30)
                  
                      NavigationLink(
                          destination: StaticBackground(),
                          label: {
                              Text("Static Backgrounds")
                          })
                      .frame(width: 300, height: 50, alignment: .center)
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

struct ChangeBackground_Previews : PreviewProvider {
    static var previews: some View {
        ChangeBackground()
    }
}

