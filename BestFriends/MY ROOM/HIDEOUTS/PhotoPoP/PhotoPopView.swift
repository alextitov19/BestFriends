//
//  PhotoPopView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/11/22.
//

import SwiftUI

struct PhotoPopView: View {
    let user: User
    let friends: [User]
    
    @State private var photoPopImages: [PhotoPopImageView] = []
    
    var body: some View {
        ZStack {
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .onAppear(perform: loadData)
            
            VStack {
                Text("Photo Pop")
                    .font(.system(size: 20, weight: .light))
                    .foregroundColor(.white)
                
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(photoPopImages, id: \.user.id) { photoPopImage in
                        photoPopImage
                            .padding()
                    }
                }
                
                Spacer()
                
                    Button(action: {
                        
                    }, label: {
                        Text("Add Image")
                            .fontWeight(.regular)
                            .frame(width: 125, height: 40)
                            .foregroundColor(.white)
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                    })
            }
        }
    }
    
    private func loadData() {
//        let p1 = PhotoPopImageView(image: UIImage(imageLiteralResourceName: "girlwalking"), user: User(id: "1", firstName: "First", lastName: "F", atmosphere: ""))
//        let p2 = PhotoPopImageView(image: UIImage(imageLiteralResourceName: "girlwalking"), user: User(id: "2", firstName: "Second", lastName: "F", atmosphere: ""))
//        let p3 = PhotoPopImageView(image: UIImage(imageLiteralResourceName: "girlwalking"), user: User(id: "3", firstName: "Third", lastName: "F", atmosphere: ""))
//        
//        photoPopImages.append(p1)
//        photoPopImages.append(p2)
//        photoPopImages.append(p3)

    }
}
