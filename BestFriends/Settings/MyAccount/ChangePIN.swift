//
//  ChangePIN.swift
//  BestFriends
//
//  Created by Robert Roe on 5/18/21.
//

import SwiftUI


struct ChangeRestoreChatPIN: View {
   
    @State private var PIN: String = ""
    @State private var readyToProceed = false
    
    var body: some View {
            NavigationView {
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Text("Change Restore Chat PIN (working)")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                        Spacer()
                            .frame(height: 30)
                        
                        TextField("Enter NEW PIN", text: $PIN)
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
                    
                    
                    SecureField("Enter NEW PIN", text: $PIN)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)

                    Spacer()
                        .frame(height: 150)
                    
              
                    }

                
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
                    
                    
                    
                }
            }
        

