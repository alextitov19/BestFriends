//
//  ChatRoomsView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/23/21.
//

import SwiftUI

struct ChatRoomsView: View {
    
    var body: some View {
        ZStack {
            Image("HomeBackground")
                .resizable()
                .rotationEffect(Angle(degrees: 180))
                .scaledToFill()
                .ignoresSafeArea()
            
            PlayerView()
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                HStack {
                    Text("Chat")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.leading, 20)

                    Spacer()
                    
                    Image("addFriend")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .scaledToFit()
                        .padding(.trailing, 20)
                }
            }
        }
    }
}

struct ChatRoomsViewPreview : PreviewProvider {
    static var previews: some View {
        ChatRoomsView()
            .environmentObject(SessionManager())
    }
}
