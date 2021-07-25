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
                        .frame(height: 100)
                    
                    Text("BestFriends")
                        .font(.system(size: 65))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    
                    
                    Spacer()
                        .frame(height: 350)
                    
                    Text("the Positivity app")
                        .font(.system(size: 30))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 50, alignment: .center)
                    
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
                        
                        //                        Spacer()
                        //                            .frame(height: 120)
                        //
                        
                    }
                    VStack {
                      
                        
                        Text("Using QR codes, not usernames.")
                            .italic()
                            .font(.system(size: 30))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 400, height: 100, alignment: .center)
                        
                        Spacer()
                            .frame(height: 100)
                        
                    }
                }
                Spacer()
                    .frame(height: 270)
                
              
                Text("Add 5 BestFriends")
                    .font(.system(size: 50))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 50, alignment: .center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
                
                TextField("Last name", text: $lastName)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.6983423233, green: 0.5422503352, blue: 0.8220227361, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(25)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                
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
                    .frame(height: 100)
                
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
                .frame(height: 100)
            
            VStack {
                Text("Stops unwanted DM's & images.")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
              
                Spacer()
                    .frame(height: 400)
                
                
                Text("No 'User Search'")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                

                
                
                
                //
                if isUsernameTaken {
                    Text("Username is taken")
                        .italic()
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                }
                
                TextField("Username", text: $username)
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
        let usernames = ManDocDataSource().getManDoc(id: "takenUsernames").usernames ?? []
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
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
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
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
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
                        .frame(width: 275, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
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
    @State private var emailIsTaken = false
    
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
             
                Spacer()
                    .frame(height: 400)
                
                Text("Just in case\nyou forget your password.")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
             
               
                
                
                
                
                if emailIsTaken {
                    Text("Email is invalid or is already taken")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundColor(.red)
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
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                Spacer()
                    .frame(height: 20)
                
                Button(action: {
                    isValidEmail()
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
                
                
                
            }
            
            
        }
    }
    private func isValidEmail() {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if emailPred.evaluate(with: email) == false {
            return
        }
        
        let emails = ManDocDataSource().getManDoc(id: "takenEmails").emails ?? []
        for foo in emails {
            if foo == email {
                emailIsTaken = true
                return
            }
        }
        readyToProceed = true
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
                
                
                Text("Select your Pronouns")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
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
                
                Text("For your safety")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .frame(width: 325, height: 50)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                Spacer()
                    .frame(height: 15)
               
                Text("Apple requires your age.")
                    .italic()
                    .font(.system(size: 27))
                    .foregroundColor(.white)
                    .frame(width: 325, height: 50)
                    .multilineTextAlignment(.center)

                
                Spacer()
                    .frame(height: 60)
                
                DatePicker("", selection: $birthDate, displayedComponents: .date)
                    .datePickerStyle(WheelDatePickerStyle())
                    .colorScheme(.dark)
                    .padding()
                    .offset(x: -45)
                
                
                Spacer()
                    .frame(height: 20)
                
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
                
                Text("Hide Your Chat")
                    .font(.system(size: 50))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 50, alignment: .center)
                    .padding(20)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                
                Text("Restore with a 'Secret' PIN")
                    .font(.system(size: 30))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 50, alignment: .center)
                //                    .padding(20)
                
                
                
                Text("Enter a 4-digit PIN")
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
    @State var locationString: String?
    @State var readyToProceed = false
    
    private let locationManager = LocationManager()
    
    
    var body: some View {
        ZStack{
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Tough day, looking for your smile?")
                    .font(.system(size: 50))
                    .fontWeight(.regular)
                    .italic()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                Spacer()
                    .frame(height: 20)
                
             
                
                //
                //                Image("FindFriend")
                //                    .resizable()
                //                    .frame(width: 200, height: 200)
                //                    .scaledToFill()
                //                    .padding(20)
                
                Text("Try shaking your phone, it'll make you smile.")
                    .italic()
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .italic()
                    .foregroundColor(Color.white)
                    .frame(width: 200)
                    .multilineTextAlignment(.center)
                
                AdPlayerView(name: "ShakingCoolVideo")
                    .frame(width: 200, height: 250)
                    .scaledToFill()
                    .blendMode(.screen)
                
                Text("Unlock your SmileVault safegurding your smiles from before.")
                    .italic()
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .italic()
                    .foregroundColor(Color.white)
                    .frame(width: 300)
                    .multilineTextAlignment(.center)
                    .padding()
                
//                Text("BestFriends can help.")
//                    .font(.system(size: 30))
//                    .fontWeight(.regular)
//                    .italic()
//                    .foregroundColor(Color.white)
//                    .frame(width: 400)
//                    .multilineTextAlignment(.center)
//
//
                VStack {
                    NavigationLink("", destination: SignUpQuestionPage2(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate, currentPin: currentPin, location: locationString ?? "N/A").environmentObject(sessionManager), isActive: $readyToProceed)
                    
                    Button(action: {
                        guard let exposedLocation = self.locationManager.exposedLocation else {
                            print("User denied location")
                            readyToProceed = true
                            return
                        }
                        
                        self.locationManager.getPlace(for: exposedLocation) { placemark in
                            guard let placemark = placemark else { return }
                            
                            locationString = ""
                            if let country = placemark.country {
                                locationString = locationString! + "\(country)"
                            }
                            if let state = placemark.administrativeArea {
                                locationString = locationString! + ", \(state)"
                            }
                            if let town = placemark.locality {
                                locationString = locationString! + ", \(town)"
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
                    
                }
            }
        }
    }
}

//
//struct SignUpQuestionPage1: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    var firstName: String
//    var lastName: String
//    var username: String
//    var password: String
//    var email: String
//    var pronouns: String
//    var birthdate: Date
//    var currentPin: String
//    var location: String?
//
//    var body: some View {
//        ZStack {
//            Image("SignUpPinBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
//            VStack {
//
//
//                Text("Instead of following your every move")
//                    .font(.system(size: 50))
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .frame(width: 400, height: 200)
//                    .multilineTextAlignment(.center)
//                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
//                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
//                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
//
//
//
//                Text("We DON'T use Cookies.")
//                    .italic()
//                    .font(.system(size: 35))
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .frame(width: 400, height: 150)
//                    .multilineTextAlignment(.center)
//
//
//
//
//
//
//
//                Spacer()
//                    .frame(height: 20)
//
//                NavigationLink(destination: SignUpQuestionPage2(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate, currentPin: currentPin, location: location).environmentObject(sessionManager)) {
//                    Text("Next")
//                        .font(.title)
//                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .frame(width: 300, height: 50)
//                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                        .cornerRadius(25)
//                        .multilineTextAlignment(.center)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                }
//            }
//        }
//    }
//}
//

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
    var location: String?
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()                .ignoresSafeArea()
                .scaledToFill()
            
            
            
            VStack {
                VStack {
                    
                    
                    Text("We don't use cookies following your every move on your phone and laptop outside of BestFriends.")
                        .font(.system(size: 30))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .frame(width: 400, height: 400)
                        .multilineTextAlignment(.center)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    
                    Spacer()
                        .frame(height: 30)
                    
                
                    
                    Spacer()
                        .frame(height: 30)
                    
                    //                    Image("NoCookie")
                    //                        .resizable()
                    //                        .frame(width: 200, height: 200)
                    //                        .scaledToFill()
                    //                        .padding(20)
                    //
                    
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
    @State var selectedOptions: [Int] = []
    
    var userMamager = UserManager()
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    var email: String
    var pronouns: String
    var birthdate: Date
    var currentPin: String
    var location: String?
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Text("We just 'Ask' what you're interested in.")
                    .font(.system(size: 50))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .frame(width: 200, height: 200)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                Spacer()
                    .frame(height: 50)
                
                
                VStack {
                    Button(action: {
                        updateArray(number: 1)
                    }) {
                        Text("Beauty / Fashion")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(1) ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        updateArray(number: 2)
                    }) {
                        Text("Health / Fitness / Nutrition")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(2) ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        updateArray(number: 3)
                    }) {
                        Text("Sports / Fitness")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(3) ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        updateArray(number: 4)
                    }) {
                        Text("Lifestyle")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(4) ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button(action: {
                        updateArray(number: 5)
                    }) {
                        Text("Social Impact / NGO")
                            .frame(width: 300, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                            .background(selectedOptions.contains(5) ? Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                }
                
                Button(action: {
                    
                    let pushManager = PushNotificationManager(userID: username)
                    
                    
                    
                    print("Part 1")
                    
                    let user = User(
                        id: username,
                        firstName: firstName,
                        lastName: lastName,
                        email: email,
                        birthday: Temporal.Date(birthdate),
                        pronouns: pronouns,
                        location: location ?? "N/A",
                        adPreference: selectedOptions,
                        deviceFCMToken: pushManager.getFCMToken() ?? "No token",
                        isOnline: true,
                        secretPin: currentPin,
                        tokens: 0,
                        background: 0,
                        notificationsBM: true,
                        notificationsLP: true,
                        chatFontSize: 16,
                        needIntro: true)
                    print("Part 2")
                    
                    print("This user: ", user)
                    
                    userMamager.create(user)
                    
                    print("Part 3")
                    
                    print("Part 4")
                    
                    sessionManager.signUp(
                        username: username,
                        email: email,
                        password: password
                    )
                    
                    print("Part 2")
                    
                    //                    pushManager.registerForPushNotifications()
                    
                    
                    
                    print("Part 6")
                    let docDS = ManDocDataSource()
                    var emailDoc = docDS.getManDoc(id: "takenEmails")
                    var usernameDoc = docDS.getManDoc(id: "takenUsernames")
                    emailDoc.emails?.append(email)
                    usernameDoc.usernames?.append(username)
                    docDS.updateDoc(doc: emailDoc)
                    docDS.updateDoc(doc: usernameDoc)
                    
                }) {
                    Text("Submit")
                        .font(.title)
                        .frame(width: 200, height: CGFloat(selectedOptions.count > 0 ? 50 : 0))
                        .disabled(selectedOptions.count == 0)
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
    
    private func updateArray(number: Int) {
        if selectedOptions.contains(number) {
            if let index = selectedOptions.firstIndex(of: number) {
                selectedOptions.remove(at: index)
            }
        } else {
            selectedOptions.append(number)
        }
    }
}


struct SignUpPage1_Previews : PreviewProvider {
    static var previews: some View {
        
        //
        SignUpPage1().environmentObject(SessionManager())
        //                SignUpPage2(firstName: "").environmentObject(SessionManager())
        //                SignUpPage3(firstName: "", lastName: "").environmentObject(SessionManager())
        //                SignUpPage4(firstName: "", lastName: "", username: "").environmentObject(SessionManager())
        //                        SignUpPage5(firstName: "", lastName: "", username: "", password: "").environmentObject(SessionManager())
        //                        SignUpPage6(firstName: "", lastName: "", username: "", password: "", email: "").environmentObject(SessionManager())
        //                SignUpPage7(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "").environmentObject(SessionManager())
        //        SignUpPage8(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date()).environmentObject(SessionManager())
        //        SignUpPage9(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date(), currentPin: "").environmentObject(SessionManager())
        //
        //                    SignUpQuestionPage1(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date(), currentPin: "", location: "").environmentObject(SessionManager())
        //
        //                SignUpQuestionPage2(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date(), currentPin: "", location: "").environmentObject(SessionManager())
        //
        //                    SignUpQuestionPage3(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "", birthdate: Date(), currentPin: "", location: "").environmentObject(SessionManager())
        
        
    }
}


