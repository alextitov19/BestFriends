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
            ColorManager.grey2
                  .ignoresSafeArea()
          
            // Stars animation...
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
  
            
            VStack {
                Text("Step 3 (Looking Inside)")
                    .font(.system(size: 17, weight: .ultraLight))
                    .foregroundColor(Color.purple)
                    
                Spacer()
                    .frame(height: 20)
                
                Text("This part takes")
                    .font(.system(size: 40))
                    .foregroundColor(.purple)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.leading)
            
               
                Text("COURAGE")
                    .font(.system(size: 70))
                    .foregroundColor(.purple)
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
                
                VStack {
                    
                Spacer()
                    .frame(height:50)
                
                Link(destination: URL(string: "https://socialtechlabs.com/understanding-the-why/")!) {
                    
                    Text("Dare to take a look inside")
                        .fontWeight(.thin)
                        .frame(width: 310, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.system(size: 27))
                        .background(ColorManager.purple2)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
                
                VStack {
                    Spacer()
                        .frame(height:30)
                  
                    NavigationLink(
                        destination: Step6_TextingFirst(),
                        label: {
                            Text("Next_Step 4")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .frame(width: 200, height: 40)
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                
//                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                            
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                          
                        }
                 
                    )}
                    
                    Spacer()
                        .frame(height: 100)
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



