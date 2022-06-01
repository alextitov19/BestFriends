//
//  PracticeFloatingCircles.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//


import Foundation
import SwiftUI

struct PracticeFloatingCircles: View {
    @State var showItems: Bool = false
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
        
        ZStack {
            Rectangle()
            .frame(width: 60, height: 60)
            .clipShape(Circle())
            .foregroundColor(.green)
            .offset(x: showItems ? -60 : 0)
            Text("friend 1")
                    .fontWeight(.ultraLight)
            
            Rectangle()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .foregroundColor(.yellow)
                .offset(y: showItems ? -60 : 0)
            Text("friend 2")
                    .fontWeight(.ultraLight)
         
            
            Spacer()
            
            Rectangle()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .foregroundColor(.purple)
                .offset(x: showItems ? 60 : 0)
            Text("friend 3")
                    .fontWeight(.ultraLight)
           
            ZStack {
            Rectangle()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .foregroundColor(.red)
               
            Text("TAP for \nSpecial \nmessages")
                    .fontWeight(.ultraLight)
                
            }
            .onTapGesture {
                    self.showItems.toggle()
            }
            
        }.animation(.easeInOut)
        }
   }

}
struct PracticeFloatingCircles_Previews : PreviewProvider {
    static var previews: some View {
        PracticeFloatingCircles()
    }
}











