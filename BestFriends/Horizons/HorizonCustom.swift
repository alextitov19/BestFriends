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
                
                TextEditor(text: $summary)
                    .frame(width: 300, height: 100)
                    .background(.white)
                
                NavigationLink(destination: HorizonSetGoal(), label: {
                    Text("  Next  ")
                        .font(.title)
                        .background(ColorManager.purple4)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                })//NavigationLink
                
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
