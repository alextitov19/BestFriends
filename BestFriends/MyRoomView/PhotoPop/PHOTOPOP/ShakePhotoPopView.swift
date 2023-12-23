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
    @State private var clicked = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            ForEach(images, id: \.self) { image in
                VStack {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .onTapGesture {
                            images.removeLast()
                            if images.count == 0 {
                                presentationMode.wrappedValue.dismiss()
                            }
                        }
                    
                    if (!clicked) {
                        Button("Save Image") {
                            let imageSaver = ImageSaver()
                            imageSaver.writeToPhotoAlbum(image: image)
                            clicked = true
                        }
                        .padding()
                    }
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
                .onAppear(perform: loadData)
                .padding(40)
            }
            //        }
            
            Text("(tap image to move to next image)")
                .font(.system(size: 15, weight: .light))
                .italic()
                .foregroundColor(Color.white)
        }
        
    }
    
    private func loadData() {
        isLoading = true
        RestApi.instance.getShakePhotoPops().then({ photoPops in
            print("Got shake photo pops: ", photoPops)
            isLoading = false
            for p in photoPops {
                print("Added photo pop: ", p)
                guard let i = UIImage(data: p.image) else { return }
                if i.size.width > i.size.height {
                    images.append(i.rotate(radians: .pi/2))
                } else {
                    images.append(i)
                }
            }
        })
    }
}
