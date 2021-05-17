//
//  ChangeEmail.swift
//  BestFriends
//
//  Created by Robert Roe on 5/12/21.
//

import SwiftUI


struct ChangeEmail: View {
   
    @State private var email: String = ""
    @State private var readyToProceed = false
    
    var body: some View {
            NavigationView {
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Text("Update Email")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                        Spacer()
                            .frame(height: 30)
                        
                        TextField("Enter NEW Email", text: $email)
                            .multilineTextAlignment(.center)
                            .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 300, height: 40, alignment: .center)
                            .font(.title)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(20)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)

                        Spacer()
                            .frame(height: 50)
                        
                    Button(action: {
                        if(email != "") {
                            UserManager().updateEmail(email: email)
                            readyToProceed = true
                        }
                      }) {
                        Text("Submit")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 200, height: 50)
                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                        
                      }
              
                        Spacer()
                            .frame(height: 50)
                    
                    NavigationLink(destination: ConfirmEmail(), isActive: $readyToProceed) { EmptyView() }
                }
            }
        }
    }
}

struct ConfirmEmail: View {
   
    @State private var code: String = ""
    
    var body: some View {
            NavigationView {
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Text("Confirm Email")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                        Spacer()
                            .frame(height: 30)
                        
                        TextField("Enter confirmation code", text: $code)
                            .multilineTextAlignment(.center)
                            .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 320, height: 40, alignment: .center)
                            .font(.title)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(20)
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
                        
                      }
              
                        Spacer()
                            .frame(height: 50)
                    
                }
                .navigationTitle("")
                .navigationBarHidden(true)
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
            .navigationTitle("")
            .navigationBarHidden(true)
    }

}

   

struct ChangeEmail_Previews : PreviewProvider {
    static var previews: some View {
        ChangeEmail()
        ConfirmEmail()
    }
}
  
  
