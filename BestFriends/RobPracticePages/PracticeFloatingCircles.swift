//
//  PracticeFloatingCircles.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//


import Foundation
import SwiftUI

struct PracticeFloatingCircles: View {
    
    var body: some View {
        Rectangle()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .foregroundColor(.red)
        
        
        
   }
}
struct PracticeFloatingCircles_Previews : PreviewProvider {
    static var previews: some View {
        PracticeFloatingCircles()
    }
}













        //        VStack {
        //
        //         Text("Hello World")
        //            .font(.body)
        //            .fontWeight(.ultraLight)
        //
        //            Image(systemName: "heart.fill")
        //
        //            Image(systemName: "heart.fill")
        //
        //            Spacer ()
        //
        //        }
