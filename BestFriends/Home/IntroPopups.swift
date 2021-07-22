//
//  IntroPopups.swift
//  BestFriends
//
//  Created by Alex Titov on 7/20/21.
//

import SwiftUI

struct IntroPopups: View {
    @State var firstHidden = false
    @State var secondHidden = false
    
    var body: some View {
        VStack {
            Button(action: {
                firstHidden = true
                update()
            }) {
                VStack {
                    Text("To Chat: 1) add friends, 2) tap friend's stars, 3) tap [Invite].")
                        .frame(width: 300, height: 75)
                        .font(.system(size: 20, weight: .medium))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
                        )
                    }
            }
            .background(Color(#colorLiteral(red: 0.6159420609, green: 0.2348094881, blue: 1, alpha: 0.01)))
            .cornerRadius(40)
            .isHidden(firstHidden)
            
            Button(action: {
                secondHidden = true
                update()
            }) {
                VStack {
                    Text("Swipe <-- (bottom of screen), showing icons")
                        .frame(width: 300, height: 75)
                        .font(.system(size: 20, weight: .medium))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 2)
                        )
                    }
            }
            .background(Color(#colorLiteral(red: 0.6159420609, green: 0.2348094881, blue: 1, alpha: 0.01)))
            .cornerRadius(40)
            .offset(y: 300)
            .isHidden(secondHidden)
        }
    }
    
    private func update() {
        if firstHidden && secondHidden {
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
