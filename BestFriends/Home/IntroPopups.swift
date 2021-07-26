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
    @State var thirdHidden = false
    @State var fourthHidden = false
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
            .isHidden(firstHidden)
            .cornerRadius(40)
            .padding(20)
            
            Button(action: {
                secondHidden = true
                update()
            }) {
                VStack {
                    Text("To see the navigation icons, swipe left across the bottom of screen")
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
            .isHidden(secondHidden)
            .padding(20)

            Button(action: {
                thirdHidden = true
                update()
            }) {
                VStack {
                    Text("Add 2 images for yourself and then one for each friend they will see when they 'Shake' their phone.")
                        .frame(width: 300, height: 150)
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
            .isHidden(thirdHidden)
            .padding(20)

            Button(action: {
                fourthHidden = true
                update()
            }) {
                VStack {
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
            }
            .background(Color(#colorLiteral(red: 0.6159420609, green: 0.2348094881, blue: 1, alpha: 0.01)))
            .cornerRadius(40)
            .isHidden(fourthHidden)
            .padding(20)
        }
    }
    
    private func update() {
        if firstHidden && secondHidden && thirdHidden && fourthHidden {
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
