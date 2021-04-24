//
//  Star.swift
//  BestFriends
//
//  Created by Alex Titov on 4/21/21.
//

import SwiftUI

struct Star: View {
    let id: String
    let name: String
    @State var isSelected = false
    @State var imageName = "starBig"
    
    var body: some View {
        VStack {
            Text(name)
                .font(.headline)
                .foregroundColor(.white)
        
            let button = Button(action: {
                isSelected.toggle()
            }) {
                  Image(imageName)
                    .resizable()
                    .frame(width: 30, height: 30)
              }
        }
    }
    
    func changeBackground(colored: Bool) {
        if colored {
            imageName = "starBig"
        } else {
            imageName = "starWhite"
        }
    }
   
}
