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
  
            
            VStack {
                
                Text("This part takes")
                    .font(.system(size: 40))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.leading)
            
               
                Text("COURAGE")
                    .font(.system(size: 70))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                
                Spacer()
                    .frame(height: 30)
                
                Text("because we have to be")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                Text("real with yourself")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                
                
                Spacer()
                    .frame(height:50)
                
                Link(destination: URL(string: "https://socialtechlabs.com/understanding-the-why/")!) {
                    
                    Text("Dare to take a look inside")
                        .fontWeight(.thin)
                        .frame(width: 310, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
                
                VStack {
                    Spacer()
                        .frame(height:50)
                  
                    NavigationLink(
                        destination: Step6_TextingFirst(),
                        label: {
                            Text("Send 1st Text \nwith Push Notification")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .frame(width: 310, height: 70)
                                .font(.system(size: 25))
                                .background(Color.gray)
//                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                            
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        }
                    )}
                    
                    
//
//                    NavigationLink(
//                        destination: TextingNote(),
//                        label: {
//                            Text("Next")
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        })
//
                    
                    
                    
                }
            }
        }
    }



struct Why_Previews : PreviewProvider {
    static var previews: some View {
        Step5_Why()
    }
}



