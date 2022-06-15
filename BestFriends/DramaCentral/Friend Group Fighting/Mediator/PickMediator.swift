//
//  PickMediator.swift
//  BestFriends
//
//  Created by Social Tech on 6/10/22.
//

import Foundation
import SwiftUI

struct PickMediator: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
       
        
        VStack {
            
//
//            Text("Pick a")
//                .font(.system(size: 30))
//                .foregroundColor(.blue)
//                .fontWeight(.ultraLight)
//                .multilineTextAlignment(.center)
//
            Text("M E A D I T O R")
                .font(.system(size: 40))
                .foregroundColor(.blue)
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
            Spacer()
                .frame(height: 10)
        
        ZStack {
           
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
         
            Image("ballons")
                .frame(width: 320, height: 20)
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//
              VStack {
              
                  Spacer()
                      .frame(height: 350)
                  
                  VStack {
//
//
            VStack {
                Text("Are you fighting with \n one of your friends?")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 30)
                 
                Text("Pick another friend to \nhelp you two become \nbest friends again!")
                    .font(.system(size: 30))
                    .italic()
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 30)
                
            VStack {
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Choose a mutual mediator")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 27))
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

}

struct PickMediator_Previews : PreviewProvider {
    static var previews: some View {
        PickMediator()
    }
}

