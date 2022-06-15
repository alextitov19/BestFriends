//
//  Apologies2.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//

import Foundation

import Foundation

import SwiftUI


struct Apologies2: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
       
              
              VStack {
              
               
                  
                  VStack {
                      Text("Do you think you hurt")
                          .font(.system(size: 37))
                          .foregroundColor(.blue)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                   
                      Text("your friend's")
                          .font(.system(size: 37))
                          .foregroundColor(.blue)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                      
                      Text("F E E L I N G S?")
                          .font(.system(size: 60))
                          .foregroundColor(.blue)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                            
                        Spacer()
                            .frame(height: 50)
                     
            VStack {
                
                Text("It may be time \nto apologize")
                    .font(.system(size: 30))
                  
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 50)
                
                      
                        Text("Holding yourself accountable \nis one of the best ways to be \na good friend and show them \nyou care.")
                            .font(.system(size: 25))
                          
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                          
                
                
                          
            VStack {
                Spacer()
                    .frame(height: 70)
                    
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Breathe, you got this ...")
                                .fontWeight(.thin)
                                .frame(width: 300, height: 40)
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
    }
}



struct Apologies2_Previews : PreviewProvider {
    static var previews: some View {
        Apologies2()
    }
}

