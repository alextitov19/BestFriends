//
//  SignUpView6.swift
//  BestFriends
//
//  Created by Alex Titov on 8/21/21.
//

import SwiftUI

struct SignUpView7: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var code = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("Final Steps")
                    .font(.system(size: 30, weight: .bold))
                    .padding()
                
                Text("In order for you to use BestFriends effeciently, please tell us a few things about yourself.")
                    .font(.system(size: 20, weight: .regular))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                
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
                .padding(.vertical, 150)
                
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
            }
        }
    }
}

struct SignUpView7Preview : PreviewProvider {
    static var previews: some View {
        SignUpView7()
            .environmentObject(SessionManager())
    }
}
