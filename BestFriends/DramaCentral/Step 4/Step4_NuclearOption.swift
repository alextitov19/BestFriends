//
//  NuclearOption.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI


struct Step4_NuclearOption: View {
    
    var body: some View {
        
        ZStack {
         
        Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
       
        
            VStack {
                ZStack {
                    
                    Image(systemName: "heart.fill")
                    
                        .resizable()
                        .frame(width: 220, height: 190, alignment: .leading)
                    
                        .foregroundColor(Color(hue: 0.714, saturation: 0.411, brightness: 0.626))
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 3, x: 1, y: 3)
                    
                    
                    Text("Ok, all that breathing \ndidn't help much. ")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                }
                
                
                Spacer()
                    .frame(height: 20)
                
                Text("Please, before unfriending")
                    .font(.system(size: 20))
                   
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
             
                
                Text("and making hurtful")
                    .font(.system(size: 20))
                  
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                
                Text("comments on social media")
                    .font(.system(size: 20))
                  
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                VStack {
              
                    Spacer()
                    .frame(height: 10)
            
         
           
                   Text("REMEMBER")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .fontWeight(.ultraLight)
                   

            Text("you were BFF and will be again!")
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                        .italic()
                        .multilineTextAlignment(.center)
                        .frame(width: 310, height: 100, alignment: .leading)
                        .font(.system(size: 35))
                       .padding(10)
                        .background(Color.gray)
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
              
               
                    
                    
                    
                     NavigationLink(
                        destination: YouGotThis(),
                        label: {
                            Text("Another Thought")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    
                    .padding(.vertical, 40)
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


