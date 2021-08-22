//
//  SignUpView6.swift
//  BestFriends
//
//  Created by Alex Titov on 8/21/21.
//

import SwiftUI

struct SignUpView8: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var date = Date()
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                Text("Date of Birth")
                    .font(.system(size: 30, weight: .bold))
                    .padding()
                
                Text("Apple requires BestFriends to acquire your age.")
                    .font(.system(size: 20, weight: .regular))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                
                DatePicker("", selection: $date)
                    .datePickerStyle(WheelDatePickerStyle())
                    .padding(40)
                
                Button(action: {
                    
                }) {
                    Text("NEXT")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: 200)
                        .frame(height: 60)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(20)
                    
                }
                .padding(.vertical, 100)
                
                Spacer()
            }
            
            VStack {
                HStack {
                    Image("arrowLeft")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 40, height: 40)
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

struct SignUpView8Preview : PreviewProvider {
    static var previews: some View {
        SignUpView8()
            .environmentObject(SessionManager())
    }
}
