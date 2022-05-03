//
//  NuclearOption.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI
import AVKit

struct Step4_NuclearOption: View {
    
    var body: some View {
        
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                ZStack {
                    
                    Image(systemName: "heart.fill")
                    
                        .resizable()
                        .frame(width: 190, height: 170, alignment: .leading)
                    
                        .foregroundColor(Color(hue: 0.714, saturation: 0.411, brightness: 0.626))
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 3, x: 1, y: 3)
                    
                    
                    Text("please think \ntwice before ...")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                }
                
                
                Spacer()
                    .frame(height: 50)
                
                Text("Unfriending")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(.gray)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                Spacer()
                    .frame(height: 5)
                
                Text("or")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(.gray)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                Spacer()
                    .frame(height: 5)
                
                Text("posting your friend's \nprivate messages \n on social media")
                    .font(.system(size: 25, weight: .bold))
                    .italic()
                    .foregroundColor(.gray)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                
                Spacer()
                    .frame(height: 15)
                
                //                    Text("*REMEMBER")
                //                        .font(.system(size: 30, weight: .bold))
                //                        .italic()
                //                        .foregroundColor(.gray)
                //                        .fontWeight(.medium)
                //                        .multilineTextAlignment(.leading)
                //                        .padding(.horizontal, 0)
                //
                VStack {
                    Spacer()
                        .frame(height: 60)
                    
                    NavigationLink(
                        destination: YouGotThis(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 110, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
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
        Step4_NuclearOption()
    }
}


