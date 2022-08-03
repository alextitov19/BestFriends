//
//  ShakePhotoPopView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/3/22.
//

import SwiftUI

struct ShakePhotoPopView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var images: [UIImage] = []
    @State private var isLoading = false

    var body: some View {
        ZStack {
            ForEach(images, id: \.self) { image in
                Image(uiImage: image)
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFit()
                    .onTapGesture {
                        images.removeFirst()
                    }
            }
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: Color.white))
                    .scaleEffect(2)
                    .padding(.top, 100)
            }
            
            VStack {
                Spacer()
            
                Button("Dismiss") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
    
    private func loadData() {
        isLoading = true
        RestApi.instance.getShakePhotoPops().then({ photoPops in
            print("Got shake photo pops: ", photoPops.count)
            isLoading = false
            for p in photoPops {
                guard let i = UIImage(data: p.image) else { return }
                images.append(i)
            }
        })
    }
}
