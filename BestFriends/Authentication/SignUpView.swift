//
//  ContentView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI
import Amplify

struct SignUpView: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    @State var username = ""
    @State var email = ""
    @State var password = ""

    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Spacer()
                    .frame(height: 75)
                
                Text("Sign Up")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))

                Spacer()
                
                VStack {
                    TextField("Username", text: $username)
                        .frame(width: 200, height: 50, alignment: .center)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 50)
                    

                    TextField("Email", text: $email)
                        .frame(width: 200, height: 50, alignment: .center)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 50)
                    

                    SecureField("Password", text: $password)
                        .frame(width: 200, height: 50, alignment: .center)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 75)
                }
                
                Button("Sign Up", action: {
                    sessionManager.signUp(
                        username: username,
                        email: email,
                        password: password
                    
                    )
                })
                .frame(width: 150, height: 50, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(25)
                
                Spacer()
                
                Button("Already have an account? Log in.", action: sessionManager.showLogin)
                    .frame(width: 300, height: 50)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                            )
            }
            .padding()
        }
    }
}



struct SignUpPage1: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var firstName: String = ""

    var body: some View {
        NavigationView{
            ZStack {
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
            
                VStack {
                    TextField("Enter your first name", text: $firstName)
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
                    
                    NavigationLink(destination: SignUpPage2(firstName: firstName).environmentObject(sessionManager)) {
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
}

struct SignUpPage2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var lastName: String = ""
    var firstName: String
    
    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                TextField("Enter your last name", text: $lastName)
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
                
                NavigationLink(destination: SignUpPage3(firstName: firstName, lastName: lastName).environmentObject(sessionManager)) {
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
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var username: String = ""
    
    var firstName: String
    var lastName: String

    
    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                TextField("Enter your username", text: $username)
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
                
                NavigationLink(destination: SignUpPage4(firstName: firstName, lastName: lastName, username: username).environmentObject(sessionManager)) {
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
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var password: String = ""
    
    var firstName: String
    var lastName: String
    var username: String
    
    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                SecureField("Enter your password", text: $password)
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
                
                NavigationLink(destination: SignUpPage5(firstName: firstName, lastName: lastName, username: username, password: password).environmentObject(sessionManager)) {
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
                TextField("Enter your email", text: $email)
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
                
            }
        }
    }
}

struct SignUpPage6: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var pronouns: String = ""
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    var email: String

    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                TextField("Enter your pronouns", text: $pronouns)
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
                
                NavigationLink(destination: SignUpPage7(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns).environmentObject(sessionManager)) {
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
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var birthDate: Date = Date()
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    var email: String
    var pronouns: String
    
    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                Text("Please enter your birthdate")
                    .font(.title)
                
                DatePicker("", selection: $birthDate, displayedComponents: .date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink(destination: SignUpQuestionPage(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthDate).environmentObject(sessionManager)) {
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
    
    @EnvironmentObject var sessionManager: SessionManager
    var userMamager = UserManager()
        
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    var email: String
    var pronouns: String
    var birthdate: Date
    
    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                Text("Please answer these questions for personalized ads")
                    .font(.title)
                    .bold()
                    .frame(width: 300, height: 200, alignment: .center)
                    .multilineTextAlignment(.center)
                    .disableAutocorrection(true)

                
                Button("Sign Up", action: {
                    sessionManager.signUp(
                        username: username,
                        email: email,
                        password: password
                    
                    )
                    
                    let user = User(
                        id: username,
                        username: username,
                        firstName: firstName,
                        lastName: lastName,
                        birthday: Temporal.Date(birthdate),
                        pronouns: pronouns,
                        location: "San Diego",
                        adPreference: "Climate Change")
                    
                    userMamager.create(user)
                    
                })
                .frame(width: 150, height: 50, alignment: .center)
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(25)
                
                
        
                
            }
        }
    }
}

struct SignUpView_Previews : PreviewProvider {
    static var previews: some View {
        SignUpPage1()
    }
}

