//
//  HorizonCustom.swift
//  BestFriends
//
//  Created by Christine Maldonado on 7/17/22.
//

import SwiftUI

struct HorizonCustom: View {
    
    @State private var summary = "Enter custom goal"
    
    var body: some View {
        ZStack
        {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack
            {
                Text("Custom")
                    .font(.title)
                    .foregroundColor(.white)
                
//                TextEditor(text: $summary)
//                    .font(.system(size: 20))
//                    .foregroundColor(ColorManager.purple2)
//                    .padding(.horizontal, 50)
//                    .background(.white)
//                    .frame(height: 50)
//                    .onReceive(Just(summary)) { _ in limitText(40) }
                
                
                TextEditor(text: $summary)
                    .frame(width: 300, height: 200)
                    .background(.white)
                
                Text("  Next  ")
                    .font(.title)
                    .background(ColorManager.purple4)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                
                Spacer()
            }//VStack
            
        }//ZStack
    }//body
}//struct

struct HorizonCustom_Previews: PreviewProvider {
    static var previews: some View {
        HorizonCustom()
            .previewDevice("iPod touch (7th generation)")
    }
}
