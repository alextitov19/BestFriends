//
//  ConfirmationView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/16/21.
//

import SwiftUI

struct ConfirmationView: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    @State var confirmationCode = ""

    let username: String
    
    var body: some View {
        ZStack {
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Spacer()
                    .frame(height: 75)
                
                Text("Confirm Your Email")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))

                Spacer()
                
                Text("Username: \(username)")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                
                Spacer()
                    .frame(height: 50)
                
                TextField("Confirmation Code", text: $confirmationCode)
                    .frame(width: 200, height: 50, alignment: .center)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(25)
                
                Spacer()
                    .frame(height: 50)
                
                Button("Confirm", action: {
                    sessionManager.confirm(username: username, code: confirmationCode)
                })
                .frame(width: 150, height: 50, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(25)
                
                Spacer()
            }
        }
    }
}

struct ConfirmationView_Previews : PreviewProvider {
    static var previews: some View {
        ConfirmationView(username: "AlexTitov1")
    }
}
