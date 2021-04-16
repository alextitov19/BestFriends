//
//  ContentView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/12/21.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        NavigationView{
            ZStack {
                Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).ignoresSafeArea()
                VStack {
                    NavigationLink(destination: Page1()) {
                                        Text("Sign Up")
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

struct Page1: View {
    
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
                
                NavigationLink(destination: Page2()) {
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

struct Page2: View {
    
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
                
                NavigationLink(destination: Page3()) {
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

struct Page3: View {
    
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
                
                NavigationLink(destination: Page4()) {
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

struct Page4: View {
    
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
                
                NavigationLink(destination: Page5()) {
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

struct Page5: View {
    
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
                
                NavigationLink(destination: Page6()) {
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

struct Page6: View {
    
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
                
                NavigationLink(destination: Page7()) {
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

struct Page7: View {
    
    
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
                
                NavigationLink(destination: QuestionPage()) {
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

struct QuestionPage: View {
    
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

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
       Page7()
    }
}
#endif

