//
//  FH1.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/7/23.
//

import SwiftUI

struct FH1: View {
    @State private var selectedIndex = 0
    
    var sentences = [
        "This is a sentence.",
        "This is another sentence.",
        "And one more sentence."
    ]
    
    var body: some View {
        ZStack { // Use a ZStack to layer the views
            // Background Image
            Image("FHBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            Spacer()
            
            // Purple Rectangular Section
            VStack(spacing: 16) {
                Spacer().frame(height: 250) // Add spacer with height to push content down

                ZStack {
                    // ScrollView
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 16) {
                            ForEach(0..<sentences.count, id: \.self) { index in
                                Text(sentences[index])
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .opacity(index == selectedIndex ? 1 : 0.5)
                                    .frame(maxWidth: .infinity)
                                    .id(index)
                            }
                        }
                        .padding(16)
                        .background(Color.purple)
                        .opacity(0.8)
                        .cornerRadius(10)
                        .frame(height: 350) // Adjust the height as needed
                        .onAppear {
                            selectedIndex = 0 // Set initial selected index
                        }
                    }
                    
                    // Name Tag
                    Text("Name Tag")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(8)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .offset(x: -120, y: -200) // Adjust the offset as needed
                        .shadow(color: .black, radius: 3, x: 0, y: 2) // Add a shadow
                        .alignmentGuide(.leading) { $0[.leading] }
                }
                
                Spacer() // Push the content to the bottom
            }
            .padding()
            .frame(maxHeight: .infinity) // Extend the height to the maximum
        }
    }
}

struct FH1_Previews: PreviewProvider {
    static var previews: some View {
        FH1()
    }
}
