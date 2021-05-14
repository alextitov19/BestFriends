//
//  QRCodeView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/18/21.
//

import SwiftUI
import AVKit

struct QRCodeView: View {
    @Environment(\.presentationMode) var presentationMode
    let image: UIImage

    var body: some View {
        VStack{
            Spacer()
            
            Text("Tap the QR code to dismiss")
                .font(.title)
            
            Spacer()
                .frame(height: 30)
            
            Image(uiImage: image)
                .interpolation(.none)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350).gesture(
                    TapGesture()
                        .onEnded { _ in
                            presentationMode.wrappedValue.dismiss()
                        }
                    )
            
            Spacer()
        }
        
    }
}
