//
//  PhotoPopImageView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/11/22.
//

import SwiftUI

struct PhotoPopImageView: View {
    let image: UIImage
    let user: User
    
    var body: some View {
        VStack {
            Text(user.firstName + " " + String(user.lastName.first!))
                .font(.system(size: 18, weight: .light))
                .foregroundColor(.white)
            
            Image(uiImage: image)
                .resizable()
                .frame(width: 300, height: 150)
                .scaledToFill()
        }
    }
}
