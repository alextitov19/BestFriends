//
//  ContentView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI
import Amplify

import AVKit


struct SignUpPage1: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var firstName: String = ""
    @State private var readyToProceed = false
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("Firstname")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                
                
                
                
                VStack {
                
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text("BestFriends")
                        .font(.system(size: 65))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)


                    
                    
                    Text("The positivity app :)")
                        .font(.system(size: 25))
                        .italic()
                        .fontWeight(.thin)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    Spacer()
                        .frame(height: 400)
                    
                    
                    TextField("First name", text: $firstName)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(25)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                    Spacer()
                        .frame(height: 20)
                    
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .onTapGesture {
                            if firstName != "" {
                                readyToProceed = true
                            }
                        }
                    
                    NavigationLink("", destination: SignUpPage2(firstName: firstName).environmentObject(sessionManager), isActive: $readyToProceed)
                    
                    Spacer()
                        .frame(height: 150)
                    
                    
                    
                }
                
                
            }
        }
    }
}

struct SignUpPage2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var lastName: String = ""
    @State private var readyToProceed = false
    var firstName: String
    
    var body: some View {
        ZStack {
            Image("Password")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            VStack {
                
                HStack {
                    VStack {
                        
                        Spacer()
                            .frame(height: 120)
                        
                        
                    }
                    VStack {
                        
                        
                        Text("Add your 5 BestFriends using QR codes, NOT usernames.")
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 400, height: 150, alignment: .center)
                        Spacer()
                            .frame(height: 125)
                    }
                }
                Spacer()
                    .frame(height: 270)
                
                TextField("Last name", text: $lastName)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.6983423233, green: 0.5422503352, blue: 0.8220227361, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(25)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
                Spacer()
                    .frame(height: 20)
                
                Button(action: {
                    if lastName != "" {
                        readyToProceed = true
                    }
                }) {
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                NavigationLink("", destination: SignUpPage3(firstName: firstName, lastName: lastName).environmentObject(sessionManager), isActive: $readyToProceed)
                
                Spacer()
                    .frame(height: 180)
                
            }
            
            
        }
    }
}

struct SignUpPage3: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var username: String = ""
    @State private var readyToProceed = false
    @State private var isUsernameTaken = false
    
    var firstName: String
    var lastName: String
    
    
    var body: some View {
        ZStack {
            
            
            Image("Username")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            
            
            
            
            Spacer()
                .frame(height: 130)
            
            VStack {
                Text("There is NO 'user search' in BestFriends, protecting you from unwanted DM's & images.")
                    .font(.system(size: 27))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 360)
                
                Text("What username do you want?")
                    .font(.system(size: 27))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                TextField("Username", text: $username)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(25)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
                
                
                Spacer()
                    .frame(height: 20)
                
                Button(action: {
                    checkUsername()
                }) {
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                NavigationLink("", destination: SignUpPage4(firstName: firstName, lastName: lastName, username: username.lowercased()).environmentObject(sessionManager), isActive: $readyToProceed)
                
                Spacer()
                    .frame(height: 140)
                
                
                
                
                
            }
            Spacer()
                .frame(height: 125)
        }
    }
    
    private func checkUsername() {
        let usernames = UserDataSource().getAllUsernames()
        let currentusername = username.lowercased()
        for uname in usernames {
            if uname == currentusername {
                isUsernameTaken = true
                return
            }
        }
        readyToProceed = true
    }
}

struct SignUpPage4: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var password: String = ""
    @State private var password2: String = ""
    @State private var readyToProceed = false
    @State private var changingColor = Color(.white)
    
    var firstName: String
    var lastName: String
    var username: String
    
    var body: some View {
        ZStack {
            Image("Lastname")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                Spacer()
                    .frame(height: 45)
                
                VStack {
                    Text("Choose your password.")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    Spacer()
                        .frame(height: 375)
                    
                    SecureField("Enter password", text: $password)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    SecureField("Confirm password", text: $password2)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Button(action: {
                        if password != "" {
                            if password.count >= 8 && password == password2 {
                                let capitalLetterRegEx  = ".*[A-Z]+.*"
                                let texttest = NSPredicate(format:"SELF MATCHES %@", capitalLetterRegEx)
                                let capitalresult = texttest.evaluate(with: password)
                                if capitalresult == true {
                                    readyToProceed = true
                                }
                            }
                        }
                        changingColor = Color(.red)
                    }) {
                        Text("Next")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 200, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    NavigationLink("", destination: SignUpPage5(firstName: firstName, lastName: lastName, username: username, password: password).environmentObject(sessionManager), isActive: $readyToProceed)
                    
                    
                    Text("Password must contain at least 8 characters plus one capital letter.")
                        .italic()
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                        .foregroundColor(changingColor)
                        .multilineTextAlignment(.center)
                        .frame(width: 275, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                }
                
                Spacer()
                    .frame(height: 55)
                
            }
        }
    }
}

struct SignUpPage5: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var email: String = ""
    @State private var readyToProceed = false
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    
    
    var body: some View {
        ZStack {
            Image("ResetPass")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            VStack {
                Text("Just in case you need to reset your password.")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .frame(width: 350, height: 150, alignment: .center)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 370)
                
                
                
                
                
                
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
                    .frame(height: 20)
                
                Button(action: {
                    if email != "" {
                        if isValidEmail(email) {
                            let emails = UserDataSource().getAllEmails()
                            if emails.contains(email) == false {
                                readyToProceed = true
                            }
                        }
                    }
                }) {
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                NavigationLink("", destination: SignUpPage6(firstName: firstName, lastName: lastName, username: username, password: password, email: email).environmentObject(sessionManager), isActive: $readyToProceed)
                
                
                Spacer()
                    .frame(height: 155)
                
                
                
                
            }
            
            
        }
    }
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}



// *******************************************



struct SignUpPage6: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var pronouns: String = ""
    @State var selectedOptions: [String] = []
    @State var didTap1 = false
    @State var didTap2 = false
    @State var didTap3 = false
    @State var didTap4 = false
    @State var didTap5 = false
    @State var ready = false
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    var email: String
    
    var body: some View {
        ZStack {
            Image("Prounouns")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                
                
                
                Spacer()
                    .frame(height: 1)
                
                
                Text("Please select your Pronouns")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 50)
                
                
                VStack {
                    
                    Button(action: {
                        didTap1 = true
                        didTap2 = false
                        didTap3 = false
                        didTap4 = false
                        didTap5 = false
                    }) {
                        Text("she / her")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap1 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        didTap1 = false
                        didTap2 = true
                        didTap3 = false
                        didTap4 = false
                        didTap5 = false
                    }) {
                        Text("he / him")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap2 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        didTap1 = false
                        didTap2 = false
                        didTap3 = true
                        didTap4 = false
                        didTap5 = false
                    }) {
                        Text("they / them")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap3 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        didTap1 = false
                        didTap2 = false
                        didTap3 = false
                        didTap4 = true
                        didTap5 = false
                    }) {
                        Text("other")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap4 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        didTap1 = false
                        didTap2 = false
                        didTap3 = false
                        didTap4 = false
                        didTap5 = true
                        
                    }) {
                        Text("Prefer not to say")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap5 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    
                    Spacer()
                        .frame(height: 120)
                    
                    
                    
                }
                
                Button(action: {
                    if didTap1 {
                        pronouns = "SHE"
                    }
                    if didTap2 {
                        pronouns = "HE"
                    }
                    if didTap3 {
                        pronouns = "THEY"
                    }
                    if didTap4 {
                        pronouns = "OTHER"
                    }
                    if didTap5 {
                        pronouns = "PNTS"
                    }
                    
                    ready = true
                }) {
                    Text("Next")
                        .font(.title)
                        .frame(width: 200, height: CGFloat((didTap1 || didTap2 || didTap3 || didTap4 || didTap5) ? 50 : 0))
                        .disabled(!(didTap1 || didTap2 || didTap3 || didTap4 || didTap5))
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                
                Spacer()
                    .frame(height: 180)
                
            }
            
            
            NavigationLink(
                destination: SignUpPage7(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns).environmentObject(sessionManager),
                isActive: $ready,
                label: {
                    
                })
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
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                
                
                Spacer()
                    .frame(height: 100)
                
                Text("For your safety ...")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .frame(width: 325, height: 50)
                    .multilineTextAlignment(.center)
                
                
                Text("Apple requires us to ask your age.")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .frame(width: 325, height: 100)
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                    .frame(height: 60)
                
                DatePicker("", selection: $birthDate, displayedComponents: .date)
                    .datePickerStyle(WheelDatePickerStyle())
                    .colorScheme(.dark)
                    .padding()
                    .offset(x: -45)
                
                Spacer()
                    .frame(height: 45)
                
                NavigationLink(destination: SignUpPage8(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthDate).environmentObject(sessionManager)) {
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
                
                Spacer()
                    .frame(height: 200)
            }
        }
    }
}




struct SignUpPage8: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State var currentPin: String = ""
    @State var isLinkActive = false
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    var email: String
    var pronouns: String
    var birthdate: Date
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Text("Hide your Chat messages from prying eyes. Only you can get them back with your 'Secret' PIN.")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 120, alignment: .center)
                    .padding(20)
                
                Spacer().frame(height: 5)
                
                
                Text("Enter 4-digit PIN")
                    .font(.title)
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.8175823689, blue: 0, alpha: 1)))
                    .padding()
                
                
                
                //From here down, only buttons
                VStack {
                    HStack {
                        Button(action: {
                            currentPin.append("1")
                            numberEntered()
                        }) {
                            Text("1")
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 85)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                        
                        Spacer().frame(width: 20)
                        
                        Button(action: {
                            currentPin.append("2")
                            numberEntered()
                        }) {
                            Text("2")
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 85)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                        
                        Spacer().frame(width: 20)
                        
                        Button(action: {
                            currentPin.append("3")
                            numberEntered()
                        }) {
                            Text("3")
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 85)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                    }
                    
                    Spacer().frame(height: 20)
                    
                    HStack {
                        Button(action: {
                            currentPin.append("4")
                            numberEntered()
                        }) {
                            Text("4")
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 85)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                        
                        Spacer().frame(width: 20)
                        
                        Button(action: {
                            currentPin.append("5")
                            numberEntered()
                        }) {
                            Text("5")
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 85)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                        
                        Spacer().frame(width: 20)
                        
                        Button(action: {
                            currentPin.append("6")
                            numberEntered()
                        }) {
                            Text("6")
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 85)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                    }
                    
                    Spacer().frame(height: 20)
                    
                    HStack {
                        Button(action: {
                            currentPin.append("7")
                            numberEntered()
                        }) {
                            Text("7")
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 85)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                        
                        Spacer().frame(width: 20)
                        
                        Button(action: {
                            currentPin.append("8")
                            numberEntered()
                        }) {
                            Text("8")
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 85)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                        
                        Spacer().frame(width: 20)
                        
                        Button(action: {
                            currentPin.append("9")
                            numberEntered()
                        }) {
                            Text("9")
                                .frame(width: 100, height: 100)
                                .foregroundColor(Color.white)
                                .background(Color.clear)
                                .clipShape(Circle())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 85)
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                    }
                    
                    Spacer().frame(height: 20)
                    
                    Button(action: {
                        currentPin.append("0")
                        numberEntered()
                    }) {
                        Text("0")
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color.white)
                            .background(Color.clear)
                            .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                }
                
                Spacer()
                
                
                NavigationLink(destination: SignUpPage9(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate, currentPin: currentPin).environmentObject(sessionManager), isActive: $isLinkActive) { EmptyView() }
                
                
            }
        }
    }
    
    private func numberEntered() {
        if currentPin.count == 4 {
            isLinkActive = true
        }
    }
}

struct SignUpPage9: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    var email: String
    var pronouns: String
    var birthdate: Date
    var currentPin: String
    @State var locationString: String = ""
    @State var readyToProceed = false
    
    private let locationManager = LocationManager()
    
    
    var body: some View {
        ZStack{
            
            
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                Text("Something happen and you need to talk to your friends, NOW?")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .italic()
                    .foregroundColor(Color.white)
                    .frame(width: 400, height: 150)
                    .multilineTextAlignment(.center)
                
             
                
                Spacer()
                    .frame(height: 150)
                
                
                Text("No worries, we'll find out")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .italic()
                    .foregroundColor(Color.white)
                    .frame(width: 400, height: 40)
                    .multilineTextAlignment(.center)
                
               
                
                
                VStack {
                    
           
                
                Text("'IF and WHEN'")
                    .font(.system(size: 30))
                    .fontWeight(.regular)
                    .italic()
                    .foregroundColor(Color.white)
                    .frame(width: 350, height: 40)
                    .multilineTextAlignment(.center)
                
                
                Text("they can talk.")
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .italic()
                    .foregroundColor(Color.white)
                    .frame(width: 350, height: 40)
                    .multilineTextAlignment(.center)
                
                
                
                Spacer()
                    .frame(height: 20)
                
                
             
                Spacer()
                    .frame(height: 50)
                
                NavigationLink("", destination: SignUpQuestionPage1(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate, currentPin: currentPin, location: locationString).environmentObject(sessionManager), isActive: $readyToProceed)
                
                Button(action: {
                    guard let exposedLocation = self.locationManager.exposedLocation else {
                        print("*** Error in \(#function): exposedLocation is nil")
                        return
                    }
                    
                    self.locationManager.getPlace(for: exposedLocation) { placemark in
                        guard let placemark = placemark else { return }
                        
                        locationString = ""
                        if let country = placemark.country {
                            locationString = locationString + "\(country)"
                        }
                        if let state = placemark.administrativeArea {
                            locationString = locationString + ", \(state)"
                        }
                        if let town = placemark.locality {
                            locationString = locationString + ", \(town)"
                        }
                    }
                    
                    readyToProceed = true
                }) {
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                
                Spacer()
                    .frame(height: 100)
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
    var currentPin: String
    var location: String
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                
                Text("We're changing how social media gathers your personal information.")
                    .font(.system(size: 30))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 400, height: 150)
                    .multilineTextAlignment(.center)
               
                
                Spacer()
                    .frame(height: 260)
                
                Text("Help us - help you Protect your Privacy.")
                    .italic()
                    .font(.system(size: 35))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               
                
              
                
                
          
                
                Spacer()
                    .frame(height: 20)
                
                NavigationLink(destination: SignUpQuestionPage2(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate, currentPin: currentPin, location: location).environmentObject(sessionManager)) {
                    Text("Nice, how can I do that?")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 50)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .multilineTextAlignment(.center)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
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
    var currentPin: String
    var location: String
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()                .ignoresSafeArea()
                .scaledToFill()
            
            
            
            VStack {
                VStack {
                    
              
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("We simply ‘ASK YOU' about your interests.")
                        .font(.system(size: 30))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 300, height: 125)
                        .multilineTextAlignment(.center)
                   
                    Spacer()
                        .frame(height: 30)
                    
                    Text("Instead of us using 'cookies' to follow your every move on your iPhone and laptop, then bombarding you with Ads aligning with what you have been looking at.")
                        .font(.system(size: 25))
                        .fontWeight(.ultraLight)
                        .italic()
                        .foregroundColor(Color.white)
                        .frame(width: 400, height: 200)
                        .multilineTextAlignment(.center)
                    
                    
                    
                
                    
                    
                    NavigationLink(destination: SignUpQuestionPage3(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate, currentPin: currentPin, location: location).environmentObject(sessionManager)) {
                        
                        Text("Next")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 200, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)
                            .multilineTextAlignment(.center)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
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
    @State var didTap5 = false
    
    var userMamager = UserManager()
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    var email: String
    var pronouns: String
    var birthdate: Date
    var currentPin: String
    var location: String
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                
                Text("Just select what interests you the most and we're done.")
                    .font(.system(size: 25))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 350)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 50)
                
                
                VStack {
                    Button(action: {
                        didTap1.toggle()
                    }) {
                        Text("Beauty / Fashion")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap1 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                    }
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        didTap2.toggle()
                    }) {
                        Text("Health / Fitness / Nutrition")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap2 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        didTap3.toggle()
                    }) {
                        Text("Sports / Fitness")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap3 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        didTap4.toggle()
                    }) {
                        Text("Lifestyle")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap4 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        didTap5.toggle()
                    }) {
                        Text("Social Impact / NGO")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(didTap5 ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                }
                
                
                
                
                Button(action: {
                    sessionManager.signUp(
                        username: username,
                        email: email,
                        password: password
                        
                    )
                    
                    var adPref: String = ""
                    if didTap1 {
                        adPref.append("BF ")
                    }
                    if didTap2 {
                        adPref.append("HFN ")
                    }
                    if didTap3 {
                        adPref.append("SS ")
                    }
                    if didTap4 {
                        adPref.append("L ")
                    }
                    if didTap5 {
                        adPref.append("NGO ")
                    }
                    let pushManager = PushNotificationManager(userID: username)
                    
                    let user = User(
                        id: username,
                        firstName: firstName,
                        lastName: lastName,
                        email: email,
                        birthday: Temporal.Date(birthdate),
                        pronouns: pronouns,
                        location: location,
                        adPreference: adPref,
                        deviceFCMToken: pushManager.getFCMToken() ?? "No token",
                        isOnline: true,
                        secretPin: currentPin,
                        tokens: 0,
                        background: 1,
                        notificationsBM: true,
                        notificationsLP: true)
                    
                    userMamager.create(user)
                    
                    pushManager.registerForPushNotifications()
                    
                }) {
                    Text("Submit")
                        .font(.title)
                        .frame(width: 200, height: CGFloat((didTap1 || didTap2 || didTap3 || didTap4 || didTap5) ? 50 : 0))
                        .disabled(!(didTap1 || didTap2 || didTap3 || didTap4 || didTap5))
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                }
                
                
                Spacer()
                    .frame(height: 30)
                
                
                Link("By tapping [Submit] you agree to our Privacy Policy & Terms of Service.", destination: URL(string: "https://socialtechlabs.com/privacy/")!)
                    
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(25)
                
                
                
                
                
            }
        }
    }
}


struct SignUpPage1_Previews : PreviewProvider {
    static var previews: some View {
        
        //
                SignUpPage1().environmentObject(SessionManager())
        //        SignUpPage2(firstName: "").environmentObject(SessionManager())
        //        SignUpPage3(firstName: "", lastName: "").environmentObject(SessionManager())
        //        SignUpPage4(firstName: "", lastName: "", username: "").environmentObject(SessionManager())
        //                SignUpPage5(firstName: "", lastName: "", username: "", password: "").environmentObject(SessionManager())
        //                SignUpPage6(firstName: "", lastName: "", username: "", password: "", email: "").environmentObject(SessionManager())
        //        SignUpPage7(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "").environmentObject(SessionManager())
//        SignUpPage8(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date()).environmentObject(SessionManager())
        //        SignUpPage9(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date(), currentPin: "").environmentObject(SessionManager())
        //
        //            SignUpQuestionPage1(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date(), currentPin: "", location: "").environmentObject(SessionManager())
        
        //        SignUpQuestionPage2(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date(), currentPin: "", location: "").environmentObject(SessionManager())
        //
        //            SignUpQuestionPage3(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date(), currentPin: "", location: "").environmentObject(SessionManager())
        
        
    }
}


