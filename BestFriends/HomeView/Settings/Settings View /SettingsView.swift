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
    let friends: [User]
    let atmosphere: Atmosphere
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var loadingShowing = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
          
            
            ColorManager.grey4
                .ignoresSafeArea()
            
            VStack {
               
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                            .scaledToFit()
                        //                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                    }
                    
                    Spacer()
                        .frame(width: 30)
                    
                    Text("Settings")
                        .font(.system(size: 30))
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
   
                Spacer()
                    .frame(height: 20)
                
                NavigationLink(
                    destination: MyAccountView(user: user, friends: friends),
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
                
                Divider()
                
//                Spacer()
//                    .frame(height: 20)
                
                NavigationLink(
                    destination: CustomizeMyPlanetView(user: user, atmosphere: atmosphere),
                    label: {
                        HStack {
                            Text("Select Planet type")
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
                
                Divider()
                
//                Spacer()
//                    .frame(height: 20)
                
                NavigationLink(
                    destination: ChangeChatBackgroundView(user: user),
                    label: {
                        HStack {
                            Text("Customize my Chat Background")
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
                
                VStack {
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
                            .navigationBarHidden(true)
                        })
                    
                }
                VStack {
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
                                .foregroundColor(.red)
                            
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.red)
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
                        
                    }
                    
                    VStack {
                        
 
//                        
//                        Spacer()
//                            .frame(height: 10)
//                        
//                        NavigationLink(
//                            destination: BuiltByTeens2(),
//                            label: {
//                                Text("BestFriends Team")
//                                    .fontWeight(.thin)
//                                    .frame(width: 200, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 25))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                
//                            })
//                        
//                        Spacer()
//                            .frame(height: 20)
//                        
//                        NavigationLink(
//                            destination: BetaTestVideo(),
//                            label: {
//                                Text("Help Test Prototypes")
//                                    .fontWeight(.thin)
//                                    .frame(width: 260, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 25))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                
//                            })
//                        
//                        Spacer()
//                            .frame(height: 20)
//                        
//                        
//                        NavigationLink(
//                            destination: PurpleNoAdInfoView(),
//                            label: {
//                                Text("Purple Premium (avail. 2023)")
//                                    .fontWeight(.thin)
//                                    .frame(width: 320, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 22))
//                                    .background(ColorManager.pmbc_green)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                
//                            })
//                        
//     
//                        NavigationLink(
//
//                            destination: INFOMainHowWorks(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
//                            label: {
//                                Text("Walk-through")
//                                    .fontWeight(.light)
//                                    .foregroundColor(Color.white)
//                                    .frame(width: 220, height: 60)
//                                    .font(.system(size: 25))
//                                    .background(Color.green)
//                                    .cornerRadius(7)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                            })
//                     
                        
                        Text("3D - Illustrations by Alzel Arafat")
                            .font(.system(size: 20))
                            .foregroundColor(.purple)
                        
                        Image("3-D")
                            .resizable()
                            .frame(width: 150, height: 70)
      
                      
                        Text("Disclaimer: The BestFriends app does not claim to offer clinical or professional psychological advice to the users. BestFriends strives to make friends better friends and help users during difficult times connect with friends and celebrate good times. If users are experiencing depression we recommend you consult a professional.")
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                        
                            .padding()
                       
                        
                        Spacer()
                            .frame(height: 100)
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





