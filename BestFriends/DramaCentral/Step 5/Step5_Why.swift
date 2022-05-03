//
//  Why.swift
//  BestFriends
//
//  Created by Social Tech on 4/29/22.
//



import Foundation
import SwiftUI

struct Step5_Why: View {
        
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
                
                Text("What Started this")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.leading)
                //                        .padding(.horizontal, 20)
                
                
                
                Text("F I G H T ?")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.trailing)
                //                        .padding(.horizontal, 20)
                
                
                Spacer()
                    .frame(height: 30)
                
                Text("this takes Courage \nto figure out . . . ")
                    .font(.system(size: 25))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                
                Spacer()
                    .frame(height:35)
                
                Link(destination: URL(string: "https://socialtechlabs.com/understanding-the-why/")!) {
                    
                    Text("Being Real with Ourselves")
                        .fontWeight(.thin)
                        .frame(width: 310, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
                
                VStack {
                    
                    Spacer ()
                        .frame(height: 100)
                    
                    NavigationLink(
                        destination: TextingNote(),
                        label: {
                            Text("Next")
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



struct Why_Previews : PreviewProvider {
    static var previews: some View {
        Step5_Why()
    }
}



