//
//  ContentView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI
import Amplify

//struct SignUpView: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    @State var username = ""
//    @State var email = ""
//    @State var password = ""
//
//    var body: some View {
//        ZStack {
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            VStack {
//                Spacer()
//                    .frame(height: 75)
//
//                Text("Sign Up")
//                    .font(.largeTitle)
//                    .bold()
//                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//
//                Spacer()
//
//                VStack {
//                    TextField("Username", text: $username)
//                        .frame(width: 200, height: 50, alignment: .center)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
//                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .cornerRadius(25)
//
//                    Spacer()
//                        .frame(height: 50)
//
//
//                    TextField("Email", text: $email)
//                        .frame(width: 200, height: 50, alignment: .center)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
//                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .cornerRadius(25)
//
//                    Spacer()
//                        .frame(height: 50)
//
//
//                    SecureField("Password", text: $password)
//                        .frame(width: 200, height: 50, alignment: .center)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
//                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .cornerRadius(25)
//
//                    Spacer()
//                        .frame(height: 75)
//                }
//
//                Button("Sign Up", action: {
//                    sessionManager.signUp(
//                        username: username,
//                        email: email,
//                        password: password
//
//                    )
//                })
//                .frame(width: 150, height: 50, alignment: .center)
//                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//                .cornerRadius(25)
//
//                Spacer()
//
//                Button("Already have an account? Log in.", action: sessionManager.showLogin)
//                    .frame(width: 300, height: 50)
//                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 25)
//                            .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
//                            )
//            }
//            .padding()
//        }
//    }
//}



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
                    
                    Image("pegnuin")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFill()
                    
                    
                    Text("Hi, what is your first name?")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    TextField("First name", text: $firstName)
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
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("Protecting 'Your Privacy' is #1")
                        .italic()
                        .font(.system(size: 25))
                        .fontWeight(.ultraLight)
                        
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
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
                TextField("Last name", text: $lastName)
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
                
                Spacer()
                    .frame(height: 50)
                
                Text("Nope, we never sell or share your info!")
                    .italic()
                    .font(.system(size: 25))
                    .fontWeight(.ultraLight)
                    
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            
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
                Text("ok, let's createa a username")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 50)
                TextField("Username", text: $username)
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
                
                NavigationLink(destination: SignUpQuestionPage1(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthDate).environmentObject(sessionManager)) {
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

struct SignUpQuestionPage1: View {
    
    @EnvironmentObject var sessionManager: SessionManager

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
                VStack {
                
                    Text("Help us protect")
                        .font(.system(size: 40))
                        .italic()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                        
                    
                    Spacer()
                        .frame(height: 80)
                    
                    Text("Your Privacy")
                        .font(.system(size: 55))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)

                    Spacer()
                        .frame(height: 120)
                    
                    NavigationLink(destination: SignUpQuestionPage2(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate).environmentObject(sessionManager)) {
                                        Text("Ok, Let's Go!")
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

struct SignUpQuestionPage2: View {
    
    @EnvironmentObject var sessionManager: SessionManager

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
                VStack {
                
                Text("We’ll Simply ‘Ask’ You")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .frame(width: 400)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 20)

                Text("-    You keep 'Your Privacy’")
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .frame(width: 320)
                    .multilineTextAlignment(.leading)
                
                Text("-    We keep the lights on   ")
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .frame(width: 320)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                    .frame(height: 70)
                
                Text("Instead of us following your every move on your phone and laptop, then bombarding you with Ads aligning with what you have been looking at all day.")
                    .font(.system(size: 25))
                    .foregroundColor(Color(#colorLiteral(red: 0.2745916466, green: 0.513986089, blue: 1, alpha: 1)))
                    .frame(width: 400)
                    .multilineTextAlignment(.center)

                Spacer()
                    .frame(height: 120)
                    
                    NavigationLink(destination: SignUpQuestionPage3(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate).environmentObject(sessionManager)) {
                                        Text("Ok, Sounds Good")
                                            .font(.system(size: 23))
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

struct SignUpQuestionPage3: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State var selectedOptions: [String] = []
    @State var didTap1 = false
    @State var didTap2 = false
    @State var didTap3 = false
    @State var didTap4 = false
    
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
                
                    Text("My Interests")
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                        .frame(width: 300)
                        .multilineTextAlignment(.center)
                
                    Spacer()
                        .frame(height: 100)
                
                    
                    VStack {
                        Button("Beauty / Fashion", action: {
                            didTap1.toggle()
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(didTap1 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .cornerRadius(25)
                        
                        Spacer()
                            .frame(height: 30)
                    
                        Button("Health / Fitness / Nutrition", action: {
                            didTap2.toggle()
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(didTap2 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .cornerRadius(25)
                        
                        Spacer()
                            .frame(height: 30)
                    
                        Button("Sports / Apparel", action: {
                            didTap3.toggle()
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(didTap3 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .cornerRadius(25)
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Button("Lifestyle", action: {
                            didTap4.toggle()
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(didTap4 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .cornerRadius(25)
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Button("NGO / Social Impact", action: {
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                        .cornerRadius(25)
                        
                        Spacer()
                            .frame(height: 100)
                    
                }
                
                Button("Sign Up", action: {
                    sessionManager.signUp(
                        username: username,
                        email: email,
                        password: password
                    
                    )
                    
                    var adPref: String = "NGO "
                    if didTap1 {
                        adPref.append("BF ")
                    }
                    if didTap2 {
                        adPref.append("HFN ")
                    }
                    if didTap3 {
                        adPref.append("SA ")
                    }
                    if didTap4 {
                        adPref.append("L ")
                    }
                    
                    let user = User(
                        id: username,
                        firstName: firstName,
                        lastName: lastName,
                        birthday: Temporal.Date(birthdate),
                        pronouns: pronouns,
                        location: "San Diego",
                        adPreference: adPref)
                    
                    userMamager.create(user)
                    
                })
                .frame(width: 100, height: CGFloat((didTap1 || didTap2 || didTap3 || didTap4) ? 50 : 0))
                .disabled(!(didTap1 || didTap2 || didTap3 || didTap4))
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
            .environmentObject(SessionManager())

        SignUpPage2(firstName: " ")
            .environmentObject(SessionManager())

        SignUpPage3(firstName: "", lastName: "")
            .environmentObject(SessionManager())

        SignUpPage4(firstName: "", lastName: "", username: "")
            .environmentObject(SessionManager())

        SignUpPage5(firstName: "", lastName: "", username: "", password: "")
            .environmentObject(SessionManager())

        SignUpPage6(firstName: "", lastName: "", username: "", password: "", email: "")
            .environmentObject(SessionManager())

        SignUpPage7(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "")
            .environmentObject(SessionManager())

        
        SignUpQuestionPage1(firstName: " ", lastName: " ", username: " ", password: " ", email: " ", pronouns: " ", birthdate: Date())
            .environmentObject(SessionManager())
        
        SignUpQuestionPage2(firstName: " ", lastName: " ", username: " ", password: " ", email: " ", pronouns: " ", birthdate: Date())
            .environmentObject(SessionManager())
        
        SignUpQuestionPage3(firstName: " ", lastName: " ", username: " ", password: " ", email: " ", pronouns: " ", birthdate: Date())
            .environmentObject(SessionManager())
    }
}

