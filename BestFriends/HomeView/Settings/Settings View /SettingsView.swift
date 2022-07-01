//
//  SettingsView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//



import Foundation

import SwiftUI

struct SettingsView: View {
    
    let user: User
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var loadingShowing = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            
//            Image("settingsBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
            ColorManager.grey4
                .ignoresSafeArea()

            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .foregroundColor(.gray)
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                            .scaledToFit()
//                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                    }
                    .padding(.trailing, 0)
                    
                    Text("Settings / Get Started")
                        .foregroundColor(.gray)
                        .font(.system(size: 30, weight: .bold))
                    
//
//                    Spacer()
                    
                    
                }
                
                Spacer()
                    .frame(height: 100)
                
                NavigationLink(
                    destination: MyAccountView(user: user),
                    label: {
                        HStack {
                            Text("Manage My Account")
                                .font(.system(size: 20))
                                .foregroundColor(.purple)
                            
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
//                                .colorInvert()
                        }
                        .padding(.horizontal, 15)
                    })
                
                .navigationBarHidden(true)
                
//                MARK: Set up [Customize my Planet here
                
//                Divider()
                
//                NavigationLink(
//                    destination: EmptyView(),
//                    label: {
//                        HStack {
//                            Text("Set-up PhotoPoP")
//                                .font(.system(size: 20))
//                                .foregroundColor(.purple)
//
//
//                            Spacer()
//
//                            Image("arrowRight")
//                                .resizable()
//                                .frame(width: 25, height: 25)
//                                .scaledToFit()
////                                .colorInvert()
//                        }
//                        .padding(.horizontal, 15)
//                    })
//
//
//                .navigationBarHidden(true)
//
                
                
                Divider()
                
                NavigationLink(
                    destination: ReportAbuseView(),
                    label: {
                        HStack {
                            Text("Report Abusive Behavior")
                                .font(.system(size: 20))
                                .foregroundColor(.purple)
                            
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
//                                .colorInvert()
                        }
                        .padding(.horizontal, 15)
                    })
                
                
                .navigationBarHidden(true)
                
                Divider()
                
                NavigationLink(
                    destination: TermsConditionsView(),
                    label: {
                        HStack {
                            Text("Terms of Service & Privacy Policy")
                                .font(.system(size: 20))
                                .foregroundColor(.purple)
                            
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
//                                .colorInvert()
                        }
                        .padding(.horizontal, 15)
                        .navigationBarHidden(true)     })
                
                VStack {
                    
                    Divider()
                    
                    NavigationLink(
                        destination: ReportIssues(),
                        label: {
                            HStack {
                                Text("Report Technical Issues")
                                    .font(.system(size: 20))
                                    .foregroundColor(.purple)
                                
                                Spacer()
                                
                                Image("arrowRight")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .scaledToFit()
//                                    .colorInvert()
                            }
                            .padding(.horizontal, 15)
                            .navigationBarHidden(true)     })
                    
//                            HStack {
//                                Text("Report issues with BestFriends")
//                                    .font(.system(size: 20))
//                                    .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
////                                    .foregroundColor(ColorManager.red)
//
//                                Spacer()
//
//                                Image("arrowRight")
//                                    .resizable()
//                                    .frame(width: 25, height: 25)
//                                    .scaledToFit()
//                                    .colorInvert()
//                            }
//                            .padding(.horizontal, 15)
//                            .onTapGesture {
//                                RestApi.instance.signOut()
//                                sessionManager.showLogin()
//                            }
//
                    Divider()
                    
                    
                            HStack {
                                Text("Sign Out")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                                Image("arrowRight")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .scaledToFit()
//                                    .colorInvert()
                            }
                            .padding(.horizontal, 15)
                            .onTapGesture {
                                RestApi.instance.signOut()
                                sessionManager.showLogin()
                            }
                    
                    
                    Divider()
                 
                    Spacer()
                        .frame(height: 30)
                    
                    
                    
                    VStack {
                        
                        
                        Text("Getting you STARTED")
                            .foregroundColor(.green)
                            .font(.system(size: 27, weight: .light))
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("1) Add Friends (up to five)")
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 17))
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("2) How to create first Chat Room:")
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 17))
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("- Tap friend's planet \n- Tap [Created New Chat Room] \n - Name Chat Room")
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 17))
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("3) Received Push Notification from Friend: \n- Tap friend's planet \n - Select appropriate dropdown")
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .italic()
                            .font(.system(size: 17))
                        
                }
                
                
                
            }
        }
    }
}

}








//struct SettingsView_Previews : PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}





