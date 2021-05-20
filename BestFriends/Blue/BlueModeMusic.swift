//
//  BlueModeMusic.swift
//  BestFriends
//
//  Created by Robert Roe on 5/18/21.
//

import SwiftUI

struct BlueModeMusic: View {

    var body: some View {
    
  
        ZStack {
            
            
            Image("Shayla3 copy")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                
               
                
                    Spacer().frame(height: 175)
                    
                NavigationLink(
                    destination: InfoViewPage1(),
                    label: {
                        Text("Access your AppleMusic BlueMode playlist.")
                            .frame(width: 400, height: 55, alignment: .center)
                    })
                    .frame(width: 380, height: 75)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                            )
               
              
                     
                Text("It remains forever hard to un-break a heart; remembering that in the end some things can never be taken back!!!.")
                    .italic()
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
               
                
                NavigationLink(destination: DarkModePage1()) {
                                    Text("Take me to BlueMode Chat")
                                        .font(.system(size: 30))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                        .frame(width: 350, height: 50)
                                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .cornerRadius(25)
                
                    
                    
                }
           
        
                
        }

    
   
   
    }
}
}

