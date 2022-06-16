//
//  UserBetaTesting.swift
//  BestFriends
//
//  Created by Social Tech on 5/23/22.
//


import Foundation

import SwiftUI

struct UserBetaTesting: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {

//              Image("purpleBackground")
//                  .resizable()
//                  .ignoresSafeArea()
//                  .scaledToFill()
            
            Image("FatGuy")
            
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            VStack {
                    NavigationLink(
                        destination: HorizonsPrototype(),
                        label: {
                            Text("Sneak Peak!")
                                .fontWeight(.thin)
                                .frame(width: 175, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                  
                
   
               Spacer()
                      .frame(height: 325)
      
                
                     Text("The BestFriends \nteam sincerely \nhopes to make life \na little better for \nteens worldwide with \nyour HELP!")
                         .font(.system(size: 30))
                         .fontWeight(.thin)
                         .italic()
                         .foregroundColor(.purple)

                   
                }
            }
        }
    
}


    

struct UserBetaTesting_Previews : PreviewProvider {
    static var previews: some View {
        UserBetaTesting()
    }
}


