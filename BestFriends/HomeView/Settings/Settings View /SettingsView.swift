//
//  SettingsView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//



import Foundation

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var loadingShowing = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            
            Image("settingsBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                    }
                    .padding(.trailing, 20)
                    
                    Text("Settings")
                        .font(.system(size: 30))
                    
                    Spacer()
                    
                    
                }
                
                Spacer()
                    .frame(height: 100)
                
                NavigationLink(
                    destination: MyAccountView(),
                    label: {
                        HStack {
                            Text("Manage My Account")
                                .font(.system(size: 20))
                            //                               .foregroundColor(.black)
                                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                        .padding(.horizontal, 15)
                    })
                
                .navigationBarHidden(true)
                
                //          Adding Photopop
                Divider()
                
                NavigationLink(
                    destination: EmptyView(),
                    label: {
                        HStack {
                            Text("Set-up PhotoPoP")
                                .font(.system(size: 20))
                            //                               .foregroundColor(.black)
                                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                        .padding(.horizontal, 15)
                    })
                
                
                .navigationBarHidden(true)
                
                
                
                Divider()
                
                NavigationLink(
                    destination: ReportAbuseView(),
                    label: {
                        HStack {
                            Text("Report Abusive Behavior")
                                .font(.system(size: 20))
                            //                               .foregroundColor(.black)
                                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
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
                                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .scaledToFit()
                                .colorInvert()
                        }
                        .padding(.horizontal, 15)
                        .navigationBarHidden(true)     })
                
                VStack {
                    Divider()
                    
                    
                            HStack {
                                Text("Sign Out")
                                    .font(.system(size: 20))
                                    .foregroundColor(ColorManager.red)
                                
                                Spacer()
                                
                                Image("arrowRight")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .scaledToFit()
                                    .colorInvert()
                            }
                            .padding(.horizontal, 15)
                            .onTapGesture {
                                RestApi.instance.signOut()
                                sessionManager.showLogin()
                            }
                    
                    
                    Divider()
                    Spacer()
                        .frame(height: 400)
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




//import SwiftUI
//
//struct SettingsView: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    @State private var loadingShowing = false
//
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Image("SignUpPinBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
//                VStack {
//                    ScrollView(showsIndicators: false) {
//                        Spacer().frame(height: 50)
//
//                        VStack {
//
//                            Text("Settings")
//                                .font(.system(size: 50))
//                                .fontWeight(.ultraLight)
//                                .foregroundColor(.white)
//                                .multilineTextAlignment(.center)
//                                .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
//                                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
//
//                            Spacer().frame(height: 30)
//
//
//                            Text("We'd Love to Hear from You")
//                                .font(.system(size: 32))
//                                .fontWeight(.ultraLight)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .multilineTextAlignment(.center)
//                                .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                            Spacer().frame(height: 20)
//
//                            Link("User Survey (5 mins.)", destination: URL(string: "https://form.jotform.com/211977332357158")!)
//                                .frame(width: 225, height: 50)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 17))
//                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//
//
//                            Spacer().frame(height: 20)
//
//                            Link("BlueMode Survey (5 mins.)", destination: URL(string: "https://form.jotform.com/212061817666457")!)
//                                .frame(width: 225, height: 50)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 17))
//                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//
//
//
//                            Spacer().frame(height: 30)
//                        }
//
//                        VStack {
//
//                            Text("Ambassadorships")
//                                .font(.system(size: 32))
//                                .fontWeight(.ultraLight)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .multilineTextAlignment(.center)
//                                .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//
//                            Link("Be 1st to test new features before made public", destination: URL(string: "https://socialtechlabs.com/beta-team/")!)
//                                .frame(width: 225, height: 50)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 17))
//                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//                            Spacer().frame(height: 30)
//
//
//
//                        }
//
//                        Text("BestFriend's Features")
//                            .font(.system(size: 32))
//                            .fontWeight(.ultraLight)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .multilineTextAlignment(.center)
//                            .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
////                        NavigationLink(
////                            destination: SettingsInfoViewPage1().environmentObject(sessionManager),
////                            label: {
////                                Text("BestFriends Walk-through")
////                            })
////                            .frame(width: 225, height: 50)
////                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                            .font(.system(size: 17))
////                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
////                            .cornerRadius(25)
////                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        //
//                        //                        Spacer().frame(height: 20)
//                        //
//                        //
//                        //                        NavigationLink(
//                        //                            destination: BlueModePage1(),
//                        //                            label: {
//                        //                                Text("BlueMode")
//                        //                            })
//                        //                            .frame(width: 225, height: 50)
//                        //                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        //                            .font(.system(size: 17))
//                        //                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                        //                            .cornerRadius(25)
//                        //                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        //
//                        VStack {
//
//                            Spacer().frame(height: 20)
//
////                            Button(action: {
////                                loadingShowing = true
////                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
////                                    sessionManager.showShakingCool()
////                                }
////                            }) {
////                                Text("Setup Phone Shake")
////                                    .frame(width: 225, height: 50)
////                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                    .font(.system(size: 17))
////                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
////                                    .cornerRadius(25)
////                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////                            }
////
//
//
//                            Spacer().frame(height: 45)
//
//                            Text("Manage Friends")
//                                .font(.system(size: 32))
//                                .fontWeight(.ultraLight)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .multilineTextAlignment(.center)
//                                .frame(width: 285, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//
//
//                            NavigationLink(
//                                destination: InviteView().environmentObject(sessionManager),
//                                label: {
//                                    Text("Add Friends")
//                                        .frame(width: 225, height: 50)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 17))
//                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                        .cornerRadius(25)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                })
//
//
//                            Spacer().frame(height: 20)
//
//
//                            VStack {
//                                NavigationLink(
//                                    destination: DeleteFriendView(),
//                                    label: {
//                                        Text("Remove Friends")
//                                            .frame(width: 225, height: 50)
//                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                            .font(.system(size: 17))
//                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                            .cornerRadius(25)
//                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                    })
//
//                                VStack {
//                                    Spacer()
//                                        .frame(height: 45)
//
//                                    Text("Privacy / Reporting Abuse")
//                                        .font(.system(size: 32))
//                                        .fontWeight(.ultraLight)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .multilineTextAlignment(.center)
//                                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//
//                                    Link("Privacy Policy / Terms of Service", destination: URL(string: "https://socialtechlabs.com/privacy/")!)
//                                        .frame(width: 325, height: 50)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 17))
//                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                        .cornerRadius(25)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                                    Spacer()
//                                        .frame(height: 20)
//
//
//                                    Link("Report Objectional Content & Behavior", destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!)
//                                        .frame(width: 325, height: 50)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 17))
//                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                        .cornerRadius(25)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//
//                                    Spacer()
//                                        .frame(height: 20)
//
//
//                                    VStack {
//
//
//                                        Link("Report Copyright Infringment", destination: URL(string: "https://socialtechlabs.com/report-copyright-infringements/")!)
//                                            .frame(width: 325, height: 50)
//                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                            .font(.system(size: 17))
//                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                            .cornerRadius(25)
//                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                                        Spacer()
//                                            .frame(height: 45)
//
//
//                                        Text("Manage my Account")
//
//                                            .font(.system(size: 32))
//                                            .fontWeight(.ultraLight)
//
//                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                            .multilineTextAlignment(.center)
//                                            .frame(width: 385, height: 50, alignment: .center)
//
//                                        Spacer()
//                                            .frame(height: 20)
//
//                                        NavigationLink(
//                                            destination: MyAccountView(),
//                                            label: {
//                                                Text("Reset Password")
//                                                    .frame(width: 325, height: 50)
//                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                                    .font(.system(size: 17))
//                                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                                    .cornerRadius(25)
//                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                            })
//
//
//                                        VStack {
//                                            VStack {
//                                                Spacer()
//                                                    .frame(height: 20)
//
//                                                NavigationLink(
//                                                    destination: NotificationsView(),
//                                                    label: {
//                                                        Text("Notification Settings")
//                                                            .frame(width: 325, height: 50)
//                                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                                            .font(.system(size: 17))
//                                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                                            .cornerRadius(25)
//                                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                                    })
//
//                                                Spacer()
//                                                    .frame(height: 20)
//
//                                                NavigationLink(
//                                                    destination: ChangeChatPinView(),
//                                                    label: {
//                                                        Text("Change pin for Hide Chat")
//                                                            .frame(width: 325, height: 50)
//                                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                                            .font(.system(size: 17))
//                                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                                            .cornerRadius(25)
//                                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                                    })
//
//
//                                                Spacer()
//                                                    .frame(height: 20)
//
//                                                NavigationLink(
//                                                    destination: MyAccountView(),
//                                                    label: {
//                                                        Text("Change Ad Preference")
//                                                            .frame(width: 325, height: 50)
//                                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                                            .font(.system(size: 17))
//                                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                                            .cornerRadius(25)
//                                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                                    })
//
//
//                                                Spacer()
//                                                    .frame(height: 20)
//
//                                                NavigationLink(
//                                                    destination: MyAccountView(),
//                                                    label: {
//                                                        Text("Delete Account")
//                                                            .frame(width: 325, height: 50)
//                                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                                            .font(.system(size: 17))
//                                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                                            .cornerRadius(25)
//                                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                                    })
//
//
//                                            }
//
//                                            Spacer()
//                                                .frame(height: 45)
//
//                                            Text("Customize my Chat Rooms")
//
//                                                .font(.system(size: 32))
//                                                .fontWeight(.ultraLight)
//
//                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                                .multilineTextAlignment(.center)
//                                                .frame(width: 385, height: 50, alignment: .center)
//
////                                            NavigationLink(
////                                                destination: ChangeBackground(),
////                                                label: {
////                                                    Text("Customize Chat Backgrounds")
////                                                        .frame(width: 325, height: 50)
////                                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                                        .font(.system(size: 17))
////                                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
////                                                        .cornerRadius(25)
////                                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////                                                })
//
//
//
//                                            Spacer()
//                                                .frame(height: 20)
//
////                                            NavigationLink(
////                                                destination: ChangeChatFontSize(),
////                                                label: {
////                                                    Text("Chat Font Size")
////                                                        .frame(width: 325, height: 50)
////                                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                                        .font(.system(size: 17))
////                                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
////                                                        .cornerRadius(25)
////                                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////                                                })
////
//                                            VStack {
//
//                                                Spacer()
//                                                    .frame(height: 45)
//
////                                                Text("Outside Resources")
////
////                                                    .font(.system(size: 32))
////                                                    .fontWeight(.ultraLight)
////
////                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                                    .multilineTextAlignment(.center)
////                                                    .frame(width: 385, height: 50, alignment: .center
////                                                    )
////
////                                                Link("In crisis? Anonymously chat w/ trained teens on 'TeenLine'", destination: URL(string: "https://teenlineonline.org/")!)
////                                                    .frame(width: 325, height: 50)
////                                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                                    .font(.system(size: 17))
////                                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
////                                                    .cornerRadius(25)
////                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////
////
////                                                Spacer()
////                                                    .frame(height: 45)
////
//
//                                                VStack {
//
////                                                    Spacer()
////                                                        .frame(height: 100)
////
////                                                    Button(action: {
////                                                        sessionManager.signOut()
////                                                    }) {
////                                                        Text("Sign Out")
////                                                            .frame(width: 325, height: 50)
////                                                            .frame(width: 325, height: 50)
////                                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                                            .font(.system(size: 17))
////                                                            .background(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
////                                                            .cornerRadius(25)
////                                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////
////                                                    }
////
//                                                    Spacer()
//                                                        .frame(height: 50)
//                                                }
//                                            }
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                        .navigationBarTitle("")
//                        .navigationBarHidden(true)
////
////                        HStack {
////
////                            Image("home-alt2")
////                                .resizable()
////                                .frame(width: 40, height: 40)
////                                .scaledToFill()
////                                .onTapGesture {
////                                    sessionManager.getCurrentAuthUser()
////                                }
////                                .padding(20)
////
////                            Image("chat icon")
////                                .resizable()
////                                .frame(width: 40, height: 40)
////                                .scaledToFill()
////                                .onTapGesture {
////                                    sessionManager.getCurrentAuthUser()
////                                }
////                                .padding(20)
////
////                            Image("happy-face icon")
////                                .resizable()
////                                .frame(width: 40, height: 40)
////                                .scaledToFill()
////                                .onTapGesture {
////                                    sessionManager.showSmileNotes()
////                                }
////                                .padding(20)
////
////                        }
////                    }
////
////                    HStack {
////
////                        Image("home-alt2")
////                            .resizable()
////                            .frame(width: 40, height: 40)
////                            .scaledToFill()
////                            .onTapGesture {
////                                sessionManager.getCurrentAuthUser()
////                            }
////                            .padding(20)
////
////                        Image("chat icon")
////                            .resizable()
////                            .frame(width: 40, height: 40)
////                            .scaledToFill()
////                            .onTapGesture {
////                                sessionManager.getCurrentAuthUser()
////                            }
////                            .padding(20)
////
////                        Image("happy-face icon")
////                            .resizable()
////                            .frame(width: 40, height: 40)
////                            .scaledToFill()
////                            .onTapGesture {
////                                sessionManager.showSmileNotes()
////                            }
////                            .padding(20)
////
////                    }
////                }
//
//                if loadingShowing == true {
//                    ZStack {
//                        Image("Firstname")
//                            .resizable()
//                            .ignoresSafeArea()
//                            .scaledToFill()
//
//                        Text("Loading...")
//                            .frame(width: 200, height: 40, alignment: .center)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 30, weight: .ultraLight))
//                            .cornerRadius(25)
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 75)
//                                    .stroke(Color.white, lineWidth: 1)
//                            )
//                            .offset(y: 100)
//
//                    }
//                }
//            }
//        }
//    }
//}
//
//
//
//    }
//}
//struct SettingsView_Preview : PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}



