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
                       
                        Spacer()
                            .frame(height: 20)
                        Text("Welcome to BestFriends")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                       
                        
                      
                        Spacer()
                            .frame(height: 200)
                        
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
                        
                     
                    
                    }
                    
                    Spacer()
                        .frame(height: 125)
                    
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
                    
                    HStack {
                        VStack {
                                                   
                            Spacer()
                                .frame(height: 155)
                                                    
                            Image("Penguin Sticker 18")
                                .resizable()
                                .frame(width: 175, height: 175)
                                .scaledToFill()
                                                    
                                }
                        VStack {
                       
                            ZStack {
                                
                                
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                                    .scaledToFill()
                            
                                Text("We'll never sell or share your info!")
                                    .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                                .frame(height: 125)
                        }
                    }
                Spacer()
                    .frame(height: 75)
                
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
                    .frame(height: 125)
                
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
            
            
            
                
               
                
                Spacer()
                    .frame(height: 125)
                
                VStack {
                    Text("Let's create a username")
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
                    Spacer()
                        .frame(height: 50)
                    
                    
                    
                   
                    
                    Image("Penguin1")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .scaledToFill()
                }
                Spacer()
                    .frame(height: 125)
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
               
                
                Spacer()
                    .frame(height: 125)
                
                VStack {
                    Text("Yep, you'll need a password")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 50)
                    
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
                        .frame(height: 50)
                    
                    NavigationLink(destination: SignUpPage5(firstName: firstName, lastName: lastName, username: username, password: password).environmentObject(sessionManager)) {
                                        Text("Next")
                                            .font(.title)
                                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                            .frame(width: 200, height: 50)
                                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                       
                                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                   
                   
                    Image("Penguin Sticker 24")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .scaledToFill()
                }

                Spacer()
                    .frame(height: 125)

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
                                    .frame(width: 300, height: 300)
                                    .scaledToFill()
                            
                                Text("Just in case we need to reset your password")
                                    .italic()
                                    .font(.system(size: 25))
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
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                
               
                
                Spacer()
                    .frame(height: 50)
                
                
                Text("Pronouns?")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 50)
     
                
                VStack {
                    
                    Button("she / her", action: {
                        didTap1.toggle()
                    })
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(didTap1 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                
                    Button("he / him", action: {
                        didTap2.toggle()
                    })
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(didTap2 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                
                    Button("they / them", action: {
                        didTap3.toggle()
                    })
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(didTap3 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button("other", action: {
                        didTap4.toggle()
                    })
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(didTap4 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button("prefer not to say", action: {
                        didTap5.toggle()
                    })
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(didTap5 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 100)
                
            }
            
            Button("Next", action: {
                sessionManager.signUp(
                    username: username,
                    email: email,
                    password: password
                
                )
                
                
                if didTap1 {
                    pronouns.append("SHE ")
                }
                if didTap2 {
                    pronouns.append("HIM ")
                }
                if didTap3 {
                    pronouns.append("THEY ")
                }
                if didTap4 {
                    pronouns.append("OTHER ")
                }
                if didTap5 {
                    pronouns.append("nSay ")
                }
             
                ready = true
                })
                .frame(width: 100, height: CGFloat((didTap1 || didTap2 || didTap3 || didTap4) ? 50 : 0))
                .disabled(!(didTap1 || didTap2 || didTap3 || didTap4))
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(25)
                
        
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
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                Text("Can we know your age?")
                    .font(.title)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                
                DatePicker("", selection: $birthDate, displayedComponents: .date)
                    .datePickerStyle(WheelDatePickerStyle())
                    .colorScheme(.dark)
                
                Spacer()
                    .frame(height: 250)
                
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


struct SignUpPage8: View {
    
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
                Text("Where on Earth are you?")
                    .font(.title)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                
                
                
                
                
                
                
                
                
                Spacer()
                    .frame(height: 250)
                
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
          
                    
            HStack {
                VStack {
                                           
                    Spacer()
                        .frame(height: 155)
                                            
                    Image("Penguin Sticker 38")
                        .resizable()
                        .frame(width: 175, height: 175)
                        .scaledToFill()
                                            
                        }
                VStack {
               
                    ZStack {
                        
                        
                        Image("ChatBubbleTrans")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .scaledToFill()
                    
                        Text("Helping us - help YOU")
                            .italic()
                            .font(.system(size: 25))
                            .fontWeight(.ultraLight)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                        .frame(height: 125)
                }
            }
        Spacer()
            .frame(height: 75)
          
                    Spacer()
                        .frame(height: 20)
            Text("Protect")
                .font(.system(size: 45))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                   
            Spacer()
                .frame(height: 20)
            
            
            Text("'YOUR' Privacy")
                        .font(.system(size: 55))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)

                    Spacer()
                        .frame(height: 120)
                    
                    NavigationLink(destination: SignUpQuestionPage2(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate).environmentObject(sessionManager)) {
                                        Text("Sounds great!")
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
                    
                    Text("You'll like this ...")
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .frame(width: 400)
                        .multilineTextAlignment(.center)
                    Spacer()
                        .frame(height: 100)
                    
                    Text("Instead of us following your every move on your iPhone and laptop, then bombarding you with Ads aligning with what you have been looking at all day.")
                        .font(.system(size: 35))
                        .fontWeight(.ultraLight)
                        .italic()
                        .foregroundColor(Color(#colorLiteral(red: 0.2745916466, green: 0.513986089, blue: 1, alpha: 1)))
                        .frame(width: 400)
                    
                        .multilineTextAlignment(.center)

                    Spacer()
                        .frame(height: 120)
                    
                Text("We’ll simply ‘Ask’")
                    .font(.system(size: 35))
                    .foregroundColor(.white)
                    .frame(width: 400)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 20)
                   
                    Text("your interests.")
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .frame(width: 400)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                       
                
               
                
                Spacer()
                    .frame(height: 10)
                
               
                    
                    NavigationLink(destination: SignUpQuestionPage3(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns, birthdate: birthdate).environmentObject(sessionManager)) {
                        
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
                
                    Text("Simply tap one")
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .frame(width: 300)
                        .multilineTextAlignment(.center)
                
                    Spacer()
                        .frame(height: 50)
                
                    
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
                    
                        Button("Sports Stuff", action: {
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
                
                Text("Thx for helping fix social media 💕")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .italic()
                    .frame(width: 400)
                    .multilineTextAlignment(.center)
                
                
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
                        adPref.append("SS ")
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

        //SignUpPage8(firstName: "", lastName: "", username: "", password: "", email: "", pronouns: "")
          //  .environmentObject(SessionManager())
        
        SignUpQuestionPage1(firstName: " ", lastName: " ", username: " ", password: " ", email: " ", pronouns: " ", birthdate: Date())
            .environmentObject(SessionManager())
        
        SignUpQuestionPage2(firstName: " ", lastName: " ", username: " ", password: " ", email: " ", pronouns: " ", birthdate: Date())
            .environmentObject(SessionManager())
        
        SignUpQuestionPage3(firstName: " ", lastName: " ", username: " ", password: " ", email: " ", pronouns: " ", birthdate: Date())
            .environmentObject(SessionManager())
    }
}


