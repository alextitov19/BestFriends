//
//  ChangePIN.swift
//  BestFriends
//
//  Created by Robert Roe on 5/18/21.
//

import SwiftUI


struct ChangePin: View {
    
    @State private var oldPin: String = ""
    @State private var newPin: String = ""
    @State private var statusString = ""
    @State private var statusColor = Color(.clear)

    
    var userDataSource = UserDataSource()
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Image("SignUpPinBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Text("Change Pin")
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    
                    
                    
                    Text(statusString)
                        .font(.system(size: 30))
                        .foregroundColor(statusColor)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("Old pin", text: $oldPin)
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
                        .frame(height: 30)
                    
                    
                    TextField("New pin", text: $newPin)
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
                        .frame(height: 75)
                    
                    Button("Submit", action: changePin)
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2).onTapGesture {
                            
                        }
                    
                }
            }
        }
    }
    
    private func changePin() {
        var user = userDataSource.getCurrentUser()
        if user.secretPin == oldPin {
            user.secretPin = newPin
            userDataSource.updateUser(user: user)
            statusString = "Success"
            statusColor = Color.green
        } else {
            statusString = "Wrong pin"
            statusColor = Color.red
        }
    }
}


struct ChangePin_Previews : PreviewProvider {
    static var previews: some View {
        ChangePin()
    }
}
