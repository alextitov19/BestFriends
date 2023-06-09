//
//  Subscriptions.swift
//  BestFriends
//
//  Created by Social Tech on 7/18/22.
//


import Foundation

import SwiftUI


struct Subscriptions: View {
    @EnvironmentObject var sessionManager: SessionManager
 
    var body: some View {
        ZStack {
       
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
                
                

                 Text("BestFriends")
                     .font(.system(size: 50))
                     .fontWeight(.light)
                     .multilineTextAlignment(.center)
                     .foregroundColor(Color.blue)
                 
             
                 
                 Text("PURPLE")
                     .font(.system(size: 60))
                 
                     .fontWeight(.thin)
                     .multilineTextAlignment(.center)
                     .foregroundColor(Color.purple)
                 
                 Text("")
                     .font(.system(size: 25))
                     .italic()
                     .fontWeight(.thin)
                     .multilineTextAlignment(.center)
                     .foregroundColor(Color.white)
                 
                 
                 Text("Enjoy BestFriends")
                     .font(.system(size: 20))
                     .italic()
                     .fontWeight(.thin)
                     .multilineTextAlignment(.center)
                     .foregroundColor(Color.white)
                 
                 
                 Text("ADVERTISMENT FREE")
                     .font(.system(size: 30))
                     .fontWeight(.light)
                     .multilineTextAlignment(.center)
                     .foregroundColor(Color.blue)
                 
                 Spacer()
                 .frame(height: 90)

         
                 VStack {
                   
                    
                     Text("PLUS")
                         .font(.system(size: 35))
                         .fontWeight(.light)
                         .multilineTextAlignment(.center)
                         .foregroundColor(Color.blue)

                
                     
                     Text("Access to Special Features")
                         .font(.system(size: 25))
                         .fontWeight(.light)
                         .multilineTextAlignment(.center)
                         .foregroundColor(Color.blue)
                     
                     Spacer()
                     .frame(height: 15)
                     
                 Text("Customize Your Planet")
                     .font(.system(size: 17))
                     .fontWeight(.light)
                     .multilineTextAlignment(.center)
                     .foregroundColor(ColorManager.grey1)
                     
                     
                     Spacer()
                     .frame(height: 10)
                     
                     Text("Customize Chat Background")
                         .font(.system(size: 17))
                         .fontWeight(.light)
                         .multilineTextAlignment(.center)
                         .foregroundColor(ColorManager.grey1)
                     
                     Spacer()
                     .frame(height: 10)
                     
                     Text("Use Nicknames")
                         .font(.system(size: 17))
                         .fontWeight(.light)
                         .multilineTextAlignment(.center)
                         .foregroundColor(ColorManager.grey1)

                 }
          
               
                Spacer()
                .frame(height: 25)
            
                VStack {
                    Button(action: {
//                        sessionManager.showStore()
                    },
                           label: {
                        Text("BestFrends PURPLE")
                            .fontWeight(.thin)
                            .frame(width: 250, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 28))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    })
                    
                    
                    
                    
                    
                    VStack {
                        
           
                        Spacer()
                            .frame(height: 150)
                        
                        
                        
                    }
                }
                
            }
        }
    }
    
    
    
}
