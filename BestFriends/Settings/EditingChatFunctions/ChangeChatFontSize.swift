//
//  ChangeChatFontSize.swift
//  BestFriends
//
//  Created by Social Tech on 6/2/21.
//

import Amplify
import SwiftUI


struct ChangeChatFontSize: View {
    
    @State var fontSize = 0
    @State var hasSaved = false
    
    private let userDS = UserDataSource()
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .onAppear {
                    reloadData()
                }
            
            VStack {
                Text("Change chat font size")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .padding(20)
                
                Text("Saved")
                    .font(.system(size: 40))
                    .foregroundColor(.green)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), radius: 22)
                    .isHidden(!hasSaved)
                    .padding(20)
                
                HStack {
                    Image("arrowLeft")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .scaledToFill()
                        .onTapGesture {
                            fontSize -= 1
                        }
                    
                    Text("\(fontSize)")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    
                    Image("arrowRight")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .scaledToFill()
                        .onTapGesture {
                            fontSize += 1
                        }
                }
                
                Button(action: {
                    saveData()
                }) {
                    Text("Save")
                        .frame(width: 150, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.title)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .padding()
                }
            }
        }
    }
    
    private func reloadData() {
        let user = userDS.getCurrentUser()
        fontSize = user.chatFontSize
    }
    
    private func saveData() {
        hasSaved = false
        var user = userDS.getCurrentUser()
        user.chatFontSize = fontSize
        userDS.updateUser(user: user)
        hasSaved = true
    }
}

struct ChangeChatFontSize_Previews : PreviewProvider {
    static var previews: some View {
        ChangeChatFontSize()
    }
}

