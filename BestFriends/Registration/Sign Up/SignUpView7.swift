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
            ColorManager.purple1
                .ignoresSafeArea()
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.purple3)
                    .offset(x: -200, y: 400)
            }
            
            VStack {
                Spacer().frame(height: 80)
                
                HStack {
                    Text("1/3")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(ColorManager.purple3)
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("Date of Birth")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(ColorManager.grey4)
                    
                    Spacer()
                }
                .padding(.horizontal, 40)
                
                HStack {
                    Text("Apple requires BestFriends to ask your age.")
                        .font(.system(size: 18, weight: .light))
                        .foregroundColor(ColorManager.grey4)

                    Spacer()
                }
                .padding(.horizontal, 40)
                
                
                DatePicker("", selection: $date, displayedComponents: [.date])
                    .padding(40)
                
                
                
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
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
                    CustomButtonInterior(text: "Next", backgroundColor: ColorManager.purple4, textColor: ColorManager.grey1)
                }
                
                NavigationLink("", destination: SignUpView8(username: username, firstname: firstname, lastname: lastname, email: email, password: password, date: date).environmentObject(sessionManager), isActive: $readyToGo)

            }
        }
    }
}

