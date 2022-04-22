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
            Rectangle()
            .frame(width: 60, height: 60)
            .clipShape(Circle())
            .foregroundColor(.green)
            .offset(x: showItems ? -60 : 0)
            Rectangle()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .foregroundColor(.yellow)
                .offset(y: showItems ? -60 : 0)
            Rectangle()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .foregroundColor(.purple)
                .offset(x: showItems ? 60 : 0)
           
            ZStack {
            Rectangle()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .foregroundColor(.red)
               
            Text("Special \nmessages \n TAP")
                }
            .onTapGesture {
                    self.showItems.toggle()
                }
        
        }
   }
}
struct PracticeFloatingCircles_Previews : PreviewProvider {
    static var previews: some View {
        PracticeFloatingCircles()
    }
}











