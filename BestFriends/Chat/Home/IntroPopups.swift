//
//  IntroPopups.swift
//  BestFriends
//
//  Created by Alex Titov on 7/20/21.
//

import SwiftUI

struct IntroPopups: View {
    @State var fourthHidden = false
    
    var body: some View {
        VStack {
            Button(action: {
                fourthHidden = true
                update()
            }) {
                Text("Longtap a message to save to SmileVault")
                    .frame(width: 300, height: 75)
                    .font(.system(size: 20, weight: .medium))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
                    )
            }
            .background(Color(#colorLiteral(red: 0.6159420609, green: 0.2348094881, blue: 1, alpha: 0.01)))
            .isHidden(fourthHidden)
            .padding(20)
        }
    }
    
    private func update() {
        if fourthHidden {
            var user = UserDataSource().getCurrentUser()
            user.needIntro = false
            UserDataSource().updateUser(user: user)
        }
    }
}

struct IntroPopupsPreview : PreviewProvider {
    static var previews: some View {
        IntroPopups()
    }
}
