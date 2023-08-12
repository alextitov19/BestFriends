//
//  MyAccountView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//

import Foundation

import SwiftUI

struct MyAccountView: View {
    
    let user: User
    let friends: [User]
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            
            
            
            ColorManager.grey4
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                    .frame(height: 70)
                
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
                    
                    Text("Manage My Account")
                        .font(.system(size: 30))
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                Spacer()
                    .frame(height: 20)
                
                Divider()
                NavigationLink(
                    destination: ResetPasswordView(user: user),
                    label: {
                        HStack {
                            Text("Reset Password")
                                .font(.system(size: 20))
                                .foregroundColor(.purple)
                                .offset(x: 25)
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                                .scaledToFit()
                            //                              .colorInvert()
                        }
                    })
                
                Divider()
                
                if user.friends?.count ?? 0 > 0 {
                    NavigationLink(
                        destination: RemoveFriend(user: user, friends: friends),
                        label: {
                            HStack {
                                Text("Remove a Friend")
                                    .font(.system(size: 20))
                                    .foregroundColor(.purple)
                                    .offset(x: 25)
                                Spacer()
                                
                                Image("arrowRight")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.gray)
                                    .scaledToFit()
                                //                              .colorInvert()
                            }
                        })
                    
                    Divider()
                }
                NavigationLink(
                    destination: ChangePin(user: user),
                    label: {
                        HStack {
                            Text("Change PIN - Hide Chat & Private Room")
                                .font(.system(size: 20))
                                .foregroundColor(.purple)
                                .offset(x: 25)
                            
                            Spacer()
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                                .scaledToFit()
                            //                              .colorInvert()
                        }
                    })
                
                VStack {
//                    Divider()
//                    
//                    NavigationLink(
//                        destination: RemoveFriend2(user: user, removeFriend: RemoveFriend()),
//                        label: {
//                            HStack {
//                                Text("Remove Friend")
//                                    .font(.system(size: 20))
//                                    .foregroundColor(.purple)
//                                    .offset(x: 25)
//                                
//                                Spacer()
//                                
//                                Image("arrowRight")
//                                    .resizable()                 .frame(width: 25, height: 25)
//                                    .foregroundColor(.gray)
//                                    .scaledToFit()
//                                //                                 .colorInvert()
//                            }
//                        })
                    
                    Divider()
                    
                    NavigationLink(
                        destination: SettingsNotificationsView(user: user),
                        label: {
                            HStack {
                                Text("Change Notifications Status")
                                    .font(.system(size: 20))
                                    .foregroundColor(.purple)
                                    .offset(x: 25)
                                
                                Spacer()
                                
                                Image("arrowRight")
                                    .resizable()              .frame(width: 25, height: 25)
                                    .foregroundColor(.gray)
                                    .scaledToFit()
                                //                                 .colorInvert()
                            }
                        })
                    
                    
                    
                    VStack {
                        Divider()
                        
                        NavigationLink(
                            destination: DeleteMyAccount(),
                            label: {
                                HStack {
                                    Text("Delete My Account")
                                        .font(.system(size: 20))
                                        .foregroundColor(.purple)
                                        .offset(x: 25)
                                    
                                    Spacer()
                                    
                                    Image("arrowRight")
                                        .resizable()              .frame(width: 25, height: 25)
                                        .foregroundColor(.gray)
                                        .scaledToFit()
                                    //                                 .colorInvert()
                                }
                            })
                        Divider()
                            .navigationBarHidden(true)
                        
                        Spacer ()
                            .frame(height: 480)
                        
                    }
                }
                
            }
        }
    }
}


