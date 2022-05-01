//
//  JournalFight.swift
//  BestFriends
//
//  Created by Social Tech on 4/30/22.
//

import Foundation


// Notes:
//take responsibility for my part

//How make myself better person

import Foundation
import SwiftUI

struct JournalFight: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
//                Image("purpleBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
                Image("purpleBackground")
                    .resizable()
                    .frame(width: 900, height: 1000)
                    .ignoresSafeArea()
                    .scaledToFill()
                
                
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .offset(y: -250)
                
                VStack {
                    
             
                    Text("journal")
                        .font(.system(size: 100))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 100)
                    
                    Text("take responsibility")
                        .font(.system(size: 15))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("for your part")
                        .font(.system(size: 15, weight: .light))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                  
                    
                    Spacer()
                        .frame(height: 40)
                    
                    Text("learn + how feeling while waiting for response ")
                        .font(.system(size: 15, weight: .bold))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
//                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(
                        destination: HomeView(),
                        label: {
                            Text("Ok, take me to Chat")
                                .fontWeight(.light)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 190, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color.gray)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                               
                 }
                      }
                    
               }
            }
        }
    

struct JournalFight_Previews : PreviewProvider {
    static var previews: some View {
        JournalFight()
    }
}


