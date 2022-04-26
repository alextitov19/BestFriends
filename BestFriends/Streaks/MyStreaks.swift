//
//  MyStreaks.swift
//  BestFriends
//
//  Created by Social Tech on 4/25/22.
//


import Foundation
import SwiftUI

struct MyStreaks: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
//                Image("Star Page")
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                 Image("FatGuy")
                    
                    Text("My Streaks")
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("say something nice")
                        .font(.system(size: 30))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("to your freind in chat")
                        .font(.system(size: 30, weight: .bold))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                  
                    
                    Spacer()
                        .frame(height: 40)
                    
                    Text("Yep, get a smile back")
                        .font(.system(size: 25, weight: .bold))
                        .fontWeight(.light)
                        .foregroundColor(.yellow)
//                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 60)
           

                }
            }
        }

    }
}
                    struct MyStreaks_Previews : PreviewProvider {
                        static var previews: some View {
                            MyStreaks()
                        }
                    }
