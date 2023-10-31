//
//  RR4.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/15/23.
//

import Foundation
import SwiftUI

struct RR4: View {
    
    @State var animate: Bool = false
    let animation: Animation = Animation.linear(duration: 10.0).repeatForever(autoreverses: false)
    
    let user: User
   let atmosphere: Atmosphere
    let friends: [User]
   let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
    
    var body: some View {
        
        
        
        VStack {
            Spacer()
                .frame(height: 100)
            
            NavigationLink(destination:  RR36Info(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                       label: {
                            Text("Getting Started")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .frame(width: 220, height: 40)
                                .font(.system(size: 30))
                                .background(ColorManager .grey2)
                                .opacity(0.95)
                                .cornerRadius(10)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    }
        
        
        
//      ***********************************
        GeometryReader { geo in
            HStack(spacing: -1) {
                Image("rocketguy")
                    .aspectRatio(contentMode: .fit)

                Image("")
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width, alignment: .leading)
            }
            .frame(width: geo.size.width, height: geo.size.height,
                   alignment: animate ? .trailing : .leading)
        }
        .ignoresSafeArea()
        .onAppear {
            withAnimation(animation) {
                animate.toggle()
            }
            
        }
    }
}
