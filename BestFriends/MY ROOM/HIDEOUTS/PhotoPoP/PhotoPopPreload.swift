//
//  PhotoPopPreload.swift
//  BestFriends
//
//  Created by Social Tech on 7/8/22.
//


import Foundation
import SwiftUI

struct PhotoPopPreload: View {
    
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
         
            
            VStack {
                
                Text("We know how")
                    .font(.system(size: 31))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
             
                Text("PhotoPoP")
                    .font(.system(size: 45))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.blue)
                
                Text("this can be")
                    .font(.system(size: 31))
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                
                    
                VStack {
               
                    Spacer()
                    .frame(height: 50)
                    
                    Text("Questioning?")
                        .font(.system(size: 40))
                        .fontWeight(.thin)
                        .foregroundColor(Color.blue)
                        .kerning(10)
           
                    Spacer()
                    .frame(height: 20)
                    
                Text("Are they getting divorced?")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                  
                    Spacer()
                    .frame(height: 10)
                }
                
            VStack {
                Text("What happens to me?")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
              
                Spacer()
                .frame(height: 10)
                
                Text("I hate it when the screaming starts")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
                Spacer()
                .frame(height: 10)
                
                Text("What can I do?")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                
               
         
                Spacer()
                    .frame(height: 40)
                
                NavigationLink(
                    destination: EmptyView(),
                    label: {
                        Text("NEXT")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 40)
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








struct PhotoPopPreload_Previews : PreviewProvider {
    static var previews: some View {
        PhotoPopPreload()
    }
}


