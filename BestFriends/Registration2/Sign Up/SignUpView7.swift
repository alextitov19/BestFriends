//
//  SignUpView6.swift
//  BestFriends
//
//  Created by Alex Titov on 8/22/21.
//

import SwiftUI

struct SignUpView7: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var date = Date()
    @State private var readyToGo = false

    let username: String
    let firstname: String
    let lastname: String
    let email: String
    let password: String
    
    var body: some View {
        ZStack {
            VStack {
                Spacer().frame(height: 80)
                
                HStack {
                    Text("1/3")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(Color(#colorLiteral(red: 0.6782051325, green: 0.5380625725, blue: 0.9619095922, alpha: 1)))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("Date of Birth")
                        .font(.system(size: 30, weight: .bold))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("Apple requires BestFriends to ask your age.")
                        .font(.system(size: 18, weight: .light))
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                
                DatePicker("", selection: $date)
                    .datePickerStyle(WheelDatePickerStyle())
                    .padding(40)
                
                
                
                Spacer()
            }
            
            VStack {
                HStack {
                    Image("arrowLeft")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            self.mode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    readyToGo = true
                }) {
                    Text("NEXT")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: 200)
                        .frame(height: 60)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(20)
                        .padding(30)
                    
                }
                
                NavigationLink("", destination: SignUpView8(username: username, firstname: firstname, lastname: lastname, email: email, password: password, date: date).environmentObject(sessionManager), isActive: $readyToGo)

            }
        }
    }
}

