//
//  NuclearOption.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI

struct NuclearOption: View {
    
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
                Image("girlwalking")
                    .resizable()
                    .frame(width: 350, height: 400)
                
                
                
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
                
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .offset(y: -250)
                
                VStack {
                    
             
                    Text("N U C L E A R")
                        .font(.system(size: 65))
                        .foregroundColor(.gray)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Text("O P T I O N")
                        .font(.system(size: 50))
                        .foregroundColor(.gray)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 350)
                    
                    Text("before un-friending")
                        .font(.system(size: 20))
                        .italic()
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("or posting private messages \n on social media - remember ")
                        .font(.system(size: 20, weight: .bold))
                        .italic()
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                  
                    
                    Spacer()
                        .frame(height: 1)
                    
//                    Text("30 minutes ago you were \n best friends, consider taking \nthe high road")
//                        .font(.system(size: 25, weight: .bold))
//                        .fontWeight(.bold)
//                        .foregroundColor(.white)
//
//                        .multilineTextAlignment(.center)
//                        .padding(.horizontal, 0)
//
//
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(
                        destination: DramaMainView(),
                        label: {
                            Text("30 minutes ago you were best friends, consider taking the high road.")
                                .fontWeight(.light)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 350, height: 50, alignment: .leading)
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
    

struct NuclearOption_Previews : PreviewProvider {
    static var previews: some View {
        NuclearOption()
    }
}


