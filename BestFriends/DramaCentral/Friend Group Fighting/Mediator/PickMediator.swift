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
       
        ZStack {
            
            ColorManager.purple4
                .ignoresSafeArea()
//                .onAppear()
           
       
            Image("ballons")
                .frame(width: 320, height: 20)
//                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

           
            VStack {
             
                Text("Can't resolve a fight \n with one of your friends?")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)

                Spacer()
                    .frame(height: 30)
                
                Text("Pick another friend to \nhelp you become \nbest friends again!")
                    .font(.system(size: 35))
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
    




struct PickMediator_Previews : PreviewProvider {
    static var previews: some View {
        PickMediator()
    }
}

