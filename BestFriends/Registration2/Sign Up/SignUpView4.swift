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
                    .frame(height: 0)
                
                Image("SignUp4")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
                    .padding(.horizontal, 20)
                
              
                
                Text("Protecting Your Data")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                

                NavigationLink(
                    destination: PrivacyPolicyView(),
                    label: {
                        Text("Privacy Policy")
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 17))
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(25)


                        
                     
                        
                        
                        
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
               
                Spacer()
                    .frame(height: 50)
                

                Text("We don't sell your data to 3rd parties.")
//                    .font(.system(size: 26, weight: .bold))
//                    .foregroundColor(.white)
//                    .multilineTextAlignment(.center)
//                    .padding(.top, 20)
//                    .padding(.bottom, 10)

                    .font(.system(size: 26, weight: .light))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                
                Spacer()
                    .frame(height: 20)
                
            
                
                
                Spacer().frame(height: 5)
                
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
    



struct SignUpView4Preview : PreviewProvider {
    static var previews: some View {
        SignUpView4()
            .padding(-4.0)
            .environmentObject(SessionManager())
    }
}
}
