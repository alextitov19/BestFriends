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
            
                Image("girlwalking")
                    .resizable()
                    .frame(width: 280, height: 270)
                
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .offset(y: -250)
                
                VStack {
                    
                    Text("before going")
                        .font(.system(size: 50))
                        .foregroundColor(.gray)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                       
                    
                    Text("N U C L E A R")
                        .font(.system(size: 65))
                        .foregroundColor(.gray)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                      
                    
                    Text("by . . .")
                        .font(.system(size: 50))
                        .foregroundColor(.gray)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
             
                    Spacer()
                        .frame(height: 250)
                    
                    Text("Un-friending")
                        .font(.system(size: 25))
                        .italic()
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("Posting private messages \n on social media")
                        .font(.system(size: 25, weight: .bold))
                        .italic()
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
//                    Spacer()
//                        .frame(height: 5)
                    
                    Text("REMEMBER")
                        .font(.system(size: 30, weight: .bold))
                        .italic()
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                    VStack {
                    
                    Spacer()
                        .frame(height: 1)

                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(
                        destination: DramaMainView(),
                        label: {
                            Text("30 minutes ago you were best friends")
                                .fontWeight(.light)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 330, height: 30, alignment: .leading)
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
    
}
struct NuclearOption_Previews : PreviewProvider {
    static var previews: some View {
        NuclearOption()
    }
}


