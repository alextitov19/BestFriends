//
//  SignUpView4.swift
//  BestFriends
//
//  Created by Alex Titov on 8/16/21.
//

import SwiftUI

struct SignUpView4: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State private var readyToGo = false

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 0.9))
                .ignoresSafeArea()
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
                    .offset(x: 200, y: -400)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
                    .offset(x: -200, y: -100)
                
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
                    .offset(x: 150, y: 100)
            }
            
            VStack {
                Spacer()
                    .frame(height: 10)
                
                Image("SignUp4")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
                    .padding(.horizontal, 20)
                
        
                
                Text("No Cookies")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 50)
                    .padding(.bottom, 10)
                
                Text("Our Privacy Policy gives us permission to use 'cookies, however, we decided to NOT install cookies stalking you outside of BestFriends. And we don't sell your data either.")
                    .font(.system(size: 26, weight: .light))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                
//
//                Text("We Respect Your Privacy!")
//                    .font(.system(size: 30, weight: .bold))
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .padding(.top, 50)
//                    .padding(.bottom, 10)
//
//
                Spacer().frame(height: 30)
                
                Button(action: {
                    readyToGo = true
                }) {
                    Image("LetsGetStartedButton")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 40)
                }
                
                NavigationLink("", destination: SignUpView5().environmentObject(sessionManager), isActive: $readyToGo)

            }
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
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    
}


struct SignUpView4Preview : PreviewProvider {
    static var previews: some View {
        SignUpView4()
            .padding(-4.0)
            .environmentObject(SessionManager())
    }
}
