//
//  SignUpView2.swift
//  BestFriends
//
//  Created by Alex Titov on 8/16/21.
//

import SwiftUI

struct SignUpView2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var readyToGo = false

    var body: some View {
        ZStack {
            ColorManager.purple4
                .ignoresSafeArea()
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(ColorManager.signUpCircleColor)
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(ColorManager.signUpCircleColor)
                    .offset(x: -200, y: -100)
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(ColorManager.signUpCircleColor)
                    .offset(x: 150, y: 100)
            }
            
            
            
            
            
            VStack {
                Spacer()
                    .frame(height: 75)
                
                Image("SignUp2")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
                    .padding(.horizontal, 20)
                
                Text("BFF")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                    .padding(.bottom, 10)
                
                Text("Connect with up to 5 of your closest friends, keeping it small and intimate.")
                    .font(.system(size: 26, weight: .light))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                
                Spacer().frame(height: 100)
                
                Button(action: {
                    readyToGo = true
                }) {
                    Image("ButtonArrowIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                NavigationLink("", destination: SignUpView3().environmentObject(sessionManager), isActive: $readyToGo)
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
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .gesture(DragGesture(minimumDistance: 3.0, coordinateSpace: .local)
                    .onEnded { value in
                        print(value.translation)
                        
                        if value.translation.width < 0 && value.translation.height > -30 && value.translation.height < 30 {
                            print("left swipe")
                            readyToGo = true
                        }
                        else if value.translation.width > 0 && value.translation.height > -30 && value.translation.height < 30 {
                            print("right swipe")
                            self.mode.wrappedValue.dismiss()
                        }
                        else if value.translation.height < 0 && value.translation.width < 100 && value.translation.width > -100 {
                            print("up swipe")
                        }
                        else if value.translation.height > 0 && value.translation.width < 100 && value.translation.width > -100 {
                            print("down swipe")
                        }
                        else {
                            print("no clue")
                        }
                    })
    }
    
}


struct SignUpView2Preview : PreviewProvider {
    static var previews: some View {
        SignUpView2()
            .environmentObject(SessionManager())
    }
}
