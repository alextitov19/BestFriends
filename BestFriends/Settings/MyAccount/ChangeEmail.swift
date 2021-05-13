//
//  ChangeEmail.swift
//  BestFriends
//
//  Created by Robert Roe on 5/12/21.
//

import SwiftUI


struct ChangeEmail: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var email: String = ""
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String

    
    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            VStack {
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 155)
                                                    
                            Image("Penguin Sticker 18")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 175)
                                    .scaledToFill()
                            
                                Text("Just in case you need to reset your password")
                                    .italic()
                                    .font(.system(size: 20))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                                .frame(height: 125)
                        }
                    }
               
                
           
                      
                        TextField("Enter email", text: $email)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)

                    Spacer()
                        .frame(height: 50)
                    
                    NavigationLink(destination: SignUpPage6(firstName: firstName, lastName: lastName, username: username, password: password, email: email).environmentObject(sessionManager)) {
                                        Text("Next")
                                            .font(.title)
                                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                            .frame(width: 200, height: 50)
                                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                    }

                    Spacer()
                        .frame(height: 50)
                    
                    
                   
                    
                    }
                
                Spacer()
                    .frame(height: 125)
                
            }
        }
    }
