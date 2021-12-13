//
//  FullScreenChatImage.swift
//  BestFriends
//
//  Created by Alex Titov on 7/22/21.
//

import SwiftUI

struct FullScreenChatImage: View {
    @State private var image: Image?
    @Environment(\.presentationMode) var presentationMode
    let link: String
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
                .ignoresSafeArea()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        print("Starting download")
                        image = Image(uiImage: ShakingCoolDataSource().downloadImage(key: link, rotating: true, tall: true))
                    }
                }
            
            Image("FatGuy")
                .resizable()
                .frame(width: 300, height: 300)
                .scaledToFill()
                .offset(y: -100)
            
            Text("Loading...")
                .frame(width: 200, height: 40, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 30, weight: .ultraLight))
                .cornerRadius(25)
                .overlay(
                    RoundedRectangle(cornerRadius: 75)
                        .stroke(Color.white, lineWidth: 1)
                )
                .offset(y: 100)
            
            if image != nil {
                image!
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
            }
        }
    }
}
