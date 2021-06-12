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
            
               
                Text("(Not available in BlueMode - coming soon)")
                    .italic()
                    .font(.system(size: 25))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 100, alignment: .center
                    )
                
                
                Spacer().frame(height: 25)
                VStack {
                
                  
                    Spacer()
                        .frame(height: 30)
                
                    NavigationLink(
                        destination: MotionBackground(),
                        label: {
                            Text("Motion Background")
                        })
                   
                        .frame(width: 250, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                )
                    
                      
                    
                      Spacer()
                          .frame(height: 30)
                  
                    NavigationLink(
                        destination: StaticBackground(),
                        label: {
                            Text("StaticBackground")
                        })
                   
                        .frame(width: 250, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                )
                      
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

