//
//  SignUpView6.swift
//  BestFriends
//
//  Created by Alex Titov on 8/21/21.
//

import SwiftUI

struct ConfirmationView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    
    
    @State private var code = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("Verification")
                    .font(.system(size: 30, weight: .bold))
                    .padding()
                
                Text("DO NOT LEAVE THE APP\nto get your confirmation code. This may cause a crash.")
                    .font(.system(size: 24, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                
                Text("Enter the 6-digit code we just sent you on your email address.")
                    .font(.system(size: 20, weight: .regular))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                
                TextField("Confirmation code", text: $code)
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .background(Color.clear)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .padding(40)
                
                Button(action: {
                    
                }) {
                    Text("VERIFY")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: 200)
                        .frame(height: 60)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(20)
                    
                }
                .padding(.vertical, 20)
                
            }
            
            VStack {
                HStack {
                    Image("arrowLeft")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal, 30)
                        .onTapGesture {
                            self.mode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

//struct SignUpView6Preview : PreviewProvider {
//    static var previews: some View {
//        SignUpView6()
//            .environmentObject(SessionManager())
//    }
//}
