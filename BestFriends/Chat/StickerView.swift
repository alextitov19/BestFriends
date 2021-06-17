//
//  StickerView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/15/21.
//

import SwiftUI

struct StickerView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1...13, id: \.self) { i in
                    HStack {
                        ForEach(1...4, id: \.self) { j in
                            Image("Sticker\((4*(i-1))+j)")
                                .resizable()
                                .frame(width: 65, height: 65)
                                .scaledToFit()
                                .padding()
                        }
                    }
                }
            }
        }
        .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).ignoresSafeArea())
    }
}






struct StickerView_Previews : PreviewProvider {
    static var previews: some View {
        StickerView()
    }
}
