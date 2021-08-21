//
//  SignUpView5.swift
//  BestFriends
//
//  Created by Alex Titov on 8/20/21.
//

import SwiftUI

struct SignUpView5: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var username = ""
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.932589829, green: 0.9314347506, blue: 0.9335541129, alpha: 1))
                .ignoresSafeArea()
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(Color(#colorLiteral(red: 0.7975029945, green: 0.7191545963, blue: 0.9469521642, alpha: 1)))
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color(#colorLiteral(red: 0.7975029945, green: 0.7191545963, blue: 0.9469521642, alpha: 1)))
                    .offset(x: -200, y: 400)
            }
            
            VStack {
                HStack {
                    Text("Get Started")
                        .font(.system(size: 30, weight: .semibold))
                        .padding(.horizontal, 40)
                    
                    Spacer()
                }
                
                
                HStack {
                    Text("Just a few steps away")
                        .font(.system(size: 16, weight: .light))
                        .padding(.horizontal, 40)
                    
                    Spacer()
                }
                .padding(.bottom, 30)
                
                VStack {
                    TextField("  Username", text: $username)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .background(Color.clear)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                    
                    HStack {
                        TextField("  First Name", text: $firstname)
                            .frame(maxWidth: .infinity, maxHeight: 40)
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                            .background(Color.clear)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .padding(.leading, 40)
                            .padding(.trailing, 5)
                        
                        TextField("  Last Name", text: $lastname)
                            .frame(maxWidth: .infinity, maxHeight: 40)
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                            .background(Color.clear)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .padding(.trailing, 40)
                            .padding(.leading, 5)
                    }
                    
                    TextField("  Email", text: $username)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .background(Color.clear)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .padding(.horizontal, 40)
                        .padding(.top, 10)
                    
                    SecureField("  Password", text: $password)
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .background(Color.clear)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                }
                
                Spacer().frame(height: 100)
                
                Button(action: {
                    
                }) {
                    Text("SIGN UP")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(20)
                        
                        .padding(.horizontal, 40)
                    
                }
                .padding(.vertical, 20)
                
                Text("By signing up, you agree to our")
                
                HStack {
                    Link("Terms of Service", destination: URL(string: "https://socialtechlabs.com/terms-service/")!)
                    
                    Text("and")
                    
                    Link("Privacy Policy", destination: URL(string: "https://socialtechlabs.com/privacy-policy-2/")!)
                }
            }
            
            VStack {
                HStack {
                    Spacer()
                    
                    Image("X")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundColor(.black)
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            self.mode.wrappedValue.dismiss()
                        }
                }
                
                Spacer()
            }
        }
    }
    
}


struct SignUpView5Preview : PreviewProvider {
    static var previews: some View {
        SignUpView5()
            .environmentObject(SessionManager())
    }
}
