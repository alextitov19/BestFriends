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
    @State var showingActionSheet = false
    var image = Image(uiImage: UIImage(named: "starBig")!)
    
    var body: some View {
        VStack {
            Text(name)
                .font(.headline)
                .foregroundColor(.white)
                .gesture(LongPressGesture(minimumDuration: 1)
                .onEnded { _ in
                    showingActionSheet = true
                })

              image
                .resizable()
                .frame(width: 80, height: 80, alignment: .center)
                .scaledToFill()
                .blendMode(.screen)
                    
              
        }
        .actionSheet(isPresented: $showingActionSheet) {
            ActionSheet(title: Text("Manage \(name)"), message: Text("Before you block or delete your friend, try BlueMode!"), buttons: [
                .default(Text("Switch to BlueMode")) {
                    // Code for switching to BlueMode below
                    
                },
                .default(Text("Block \(name)")) {
                    // Code for blocking your friend below
                    
                },
                .default(Text("Delete \(name)")) {
                    // Code for deleting your friend below
                    
                },
                .cancel()
            ])
        }
        
    }
   
}
