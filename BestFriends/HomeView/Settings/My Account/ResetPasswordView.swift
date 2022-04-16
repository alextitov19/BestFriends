//
//  ResetPasswordView.swift
//  BestFriends
//
//  Created by Social Tech on 4/9/22.
//


import SwiftUI


struct ResetPasswordView: View {
    
    @State private var oldPassword: String = ""
    @State private var newPassword: String = ""
    @State private var string = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            Image("settingsBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            

            
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                    }
                    Spacer()
                }
                Spacer()
            }
            
            
            VStack {
                              Text("Reset Password")
                                  .font(.system(size: 30))
                                 .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
                Spacer()
                    .frame(height: 50)
                
                Text(string)
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .frame(height: 100)
                
                
                SecureField("Enter OLD password", text: $oldPassword)
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
                
                SecureField("Enter NEW password", text: $newPassword)
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

//             Button(action: {
//                   if(oldPassword != "" && newPassword != "" && oldPassword != newPassword) {
//                       let bool = UserManager().changePassword(oldPassword: oldPassword, newPassword: newPassword)
//                       if bool == true {
//                           string = "successfully"
//                     } else {
//                          string = "failed"
//                       }
//                   }
//
//               }) {
//
//
                   
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





struct ResetPasswordView_Previews : PreviewProvider {
    static var previews: some View {
        ResetPasswordView()
    }
}

