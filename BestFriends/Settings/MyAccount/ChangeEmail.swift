//
//  ChangeEmail.swift
//  BestFriends
//
//  Created by Robert Roe on 5/12/21.
//

import SwiftUI


struct ChangeEmail: View {
    
    @State private var email: String = ""
    @State private var textHidden = true
    
    var body: some View {
        
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Text("Update Email")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                Text("Email updated")
                    .font(.system(size: 35))
                    .foregroundColor(.green)
                    .isHidden(textHidden)
                
                Spacer()
                    .frame(height: 50)
                
                TextField("Enter NEW Email", text: $email)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                Spacer()
                    .frame(height: 50)
                
                Button(action: {
                    if(email != "") {
                        UserManager().updateEmail(email: email)
                        textHidden = false
                        
                    }
                }) {
                    Text("Submit")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                Spacer()
                    .frame(height: 50)
                
            }
        }
    }
}


struct ConfirmEmail: View {
    
    @State private var code: String = ""
    
    var body: some View {
        
        ZStack {
            
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Text("Confirm Email")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                Spacer()
                    .frame(height: 100)
                
                TextField("Enter confirmation code", text: $code)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 320, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                Spacer()
                    .frame(height: 50)
                
                Button(action: {
                    if(code != "") {
                        UserManager().confirmEmailUpdate(code: code)
                    }
                }) {
                    Text("Submit")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                Spacer()
                    .frame(height: 50)
                
            }
            
        }
        
    }
    
}





struct ChangeEmail_Previews : PreviewProvider {
    static var previews: some View {
        ChangeEmail()
        ConfirmEmail()
    }
}


