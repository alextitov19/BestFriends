//
//  SetBoundries.swift
//  BestFriends
//
//  Created by Social Tech on 6/10/22.
//

import Foundation

import Foundation

import SwiftUI


struct SetBoundries: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
         
              
              VStack {
              
               
                  
                  VStack {
                      Text("")
                          .font(.system(size: 40))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                   
                        Text("This will be a little more difficult")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                      
                      Text("?????")
                          .font(.system(size: 60))
                          .foregroundColor(.white)
                          .fontWeight(.ultraLight)
                          .multilineTextAlignment(.center)
                            
                        Spacer()
                            .frame(height: 50)
                     
            VStack {
                      
                        Text("We are moving to")
                            .font(.system(size: 30))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.blue)
                        
                        Text("HORIZONS")
                            .font(.system(size: 50))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.blue)
                   
               
            VStack {
                Spacer()
                    .frame(height: 30)
                    
                    NavigationLink(
                        destination: Step2FG_NewSolutions(),
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
    }
}



struct SetBoundries_Previews : PreviewProvider {
    static var previews: some View {
        SetBoundries()
    }
}

