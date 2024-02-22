//
//  CancellingPURPLE.swift
//  BestFriends
//
//  Created by Social Tech on 8/12/22.
//


import Foundation

import SwiftUI

struct CancellingPURPLE: View {
    
    @State private var reason: String = ""
    @EnvironmentObject var sessionManager: SessionManager
    @State private var colorChangeTap: String = ""
    
//    private var userManager = UserManager()
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack {
            
               ColorManager.grey4
                .ignoresSafeArea()
            

            
            VStack {

                Spacer()
            
    
                
                Text("PURPLE")
                    .font(.system(size: 40))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
              
                
                Text("If you have paid for an annual PURPLE subscription no pro-rated refund will be given if you cancel your account")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                
                    .padding()
            
            VStack {
                    
                Text("Currently there is not an 'auto-renewal' feature associated with the monthly PURPLE subscription. As such, if you cancel your account there will be no further charges.")
                    .font(.system(size: 15))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                    .frame(height: 15)
                
              
                
                Button(action: {
                    sessionManager.showLogin()
                },
                    label: {
                        Text("Home / Chat")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
               
                
             
                Spacer()
                    .frame(height: 150)
                
          
  

         
                
                    
                }
               .padding()
            }

        }
    }
}
    
                          
struct CancellingPURPLE_Previews : PreviewProvider {
    static var previews: some View {
        CancellingPURPLE()
    }
}

