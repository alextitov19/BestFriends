//
//  ContentView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI


struct SignUpView: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    @State var username = ""
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack {
            Spacer()
            
            TextField("Username", text: $username)
            
            TextField("Email", text: $email)

            TextField("Password", text: $password)
            
            Button("Sign Up", action: {
                sessionManager.signUp(
                    username: username,
                    email: email,
                    password: password
                
                )
            })
            
            Spacer()
            
            Button("Already ahve an account? Log in.", action: sessionManager.showLogin)
        }
        .padding()
    }
}



struct SignUpPage1: View {
    
    @State private var firstName: String = ""
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            VStack {
                TextField("Enter your first name", text: $firstName)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink(destination: SignUpPage2()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                }
                
            }
        }
    }
}

struct SignUpPage2: View {
    
    @State private var lastName: String = ""
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            VStack {
                TextField("Enter your last name", text: $lastName)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink(destination: SignUpPage3()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                }
                
            }
        }
    }
}

struct SignUpPage3: View {
    
    @State private var username: String = ""
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            VStack {
                TextField("Enter your username", text: $username)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink(destination: SignUpPage4()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                }
                
            }
        }
    }
}

struct SignUpPage4: View {
    
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            VStack {
                TextField("Enter your password", text: $password)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink(destination: SignUpPage5()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                }
                
            }
        }
    }
}

struct SignUpPage5: View {
    
    @State private var email: String = ""
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            VStack {
                TextField("Enter your email", text: $email)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink(destination: SignUpPage6()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                }
                
            }
        }
    }
}

struct SignUpPage6: View {
    
    @State private var pronouns: String = ""
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            VStack {
                TextField("Enter your pronouns", text: $pronouns)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink(destination: SignUpPage7()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                }
                
            }
        }
    }
}

struct SignUpPage7: View {
    
    
    @State private var birthDate: Date = Date()
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            VStack {
                Text("Please enter your birthdate")
                    .font(.title)
                
                DatePicker("", selection: $birthDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink(destination: SignUpQuestionPage()) {
                                    Text("Next")
                                        .font(.title)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                        .frame(width: 200, height: 50)
                                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                }
                
            }
        }
    }
}

struct SignUpQuestionPage: View {
    
    @State private var birthDate: Date = Date()
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
            VStack {
                Text("Please answer these questions for personalized ads")
                    .font(.title)
                    .bold()
                    .frame(width: 300, height: 200, alignment: .center)
                    .multilineTextAlignment(.center)
                
        
                
            }
        }
    }
}

struct SignUpView_Previews : PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

