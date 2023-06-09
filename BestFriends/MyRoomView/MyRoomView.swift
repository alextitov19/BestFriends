//
//  MyRoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/8/23.
//

import SwiftUI

struct MyRoomView: View {
    
    var body: some View {
        ZStack {
            ColorManager.purple7
                .opacity(0.3)
                .ignoresSafeArea()
                
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                Text("My Room")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(ColorManager.purple5)
                
                MyRoomRowView(title: "Journal", imageName: "text.book.closed", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
                
                MyRoomRowView(title: "Breathe", imageName: "wind", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
                
                MyRoomRowView(title: "Ground", imageName: "list.number", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
                
                MyRoomRowView(title: "Affirm", imageName: "star.leadinghalf.filled", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
                
              
               
                
                Spacer()
            }
        }
    }
}

struct MyRoomRowView: View {
    
    let title, imageName: String
    let backgroundColor, foregroundColor: CGColor
    
    var body: some View {
        ZStack {
            Color(cgColor: backgroundColor)
            
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .scaledToFit()
                    .foregroundColor(Color(cgColor: foregroundColor))
                
                Spacer().frame(width: 20)

                Text(title)
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(Color(cgColor: foregroundColor))
            }
        }
        .frame(width: 200, height: 60)
        .cornerRadius(15)
        .padding()
    }
}
