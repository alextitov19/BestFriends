//
//  BlueModeMusic.swift
//  BestFriends
//
//  Created by Robert Roe on 5/18/21.
//

import SwiftUI

struct BlueModeMusic: View {

    var body: some View {
        NavigationView{
    
  
        ZStack {
            
            
            Image("Shayla3 copy")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
             
                    Spacer().frame(height: 230)
                    
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
               
                Spacer().frame(height: 30)
                     
                     
                     NavigationLink(
                         destination: InfoViewPage1(),
                         label: {
                             Text("Waiting sucks, we send a push notification as soon as your messages are read in BlueMode.")
                                 .frame(width: 375, height: 150, alignment: .center)
                         })
                        .frame(width: 380, height: 75)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
                                )

                Spacer().frame(height: 10)
                
                
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
    .navigationBarTitle("")
    .navigationBarHidden(true)
    
   
   
    }
}
}

