//
//  Star.swift
//  BestFriends
//
//  Created by Alex Titov on 4/21/21.
//

import SwiftUI

struct Star: View {
    var id: String
    var name: String
    @State var isSelected = false
    var image = Image(uiImage: UIImage(named: "starBig")!)
    
    var body: some View {
        VStack {
            Text(name)
                .font(.headline)
                .foregroundColor(.white)
        
            Button(action: {
                isSelected.toggle()
            }) {
                  image
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .scaledToFill()
                    .blendMode(.screen)
                    
              }
        }
    }
   
}
