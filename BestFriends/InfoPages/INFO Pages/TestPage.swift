//
//  TestPage.swift
//  BestFriends
//
//  Created by Social Tech on 4/6/23.
//



import Foundation
import SwiftUI
import AVKit

struct TestPage: View {
    
    
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    var body: some View {
        
        ZStack {
            
            //            ColorManager .purple1
            //                .ignoresSafeArea()
            //                .onAppear()
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            Color .black
                .ignoresSafeArea()
            
            
            AdPlayerView(name: "SlowBlue")
                .ignoresSafeArea()
            
            
            
            
            VStack {
                
                
           
                
                Spacer ()
                    .frame(height: 20)
                
                Text("We keep you safe & sound")
                    .font(.system(size: 15))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .purple1)
                
                Spacer ()
                    .frame(height: 5)
                
                Text("here in Bestfriends, so you can ...")
                    .font(.system(size: 15))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .purple1)
                
                Spacer ()
                    .frame(height: 150)
                
                VStack {
                    
                    Text("Let the outside of you")
                        .font(.system(size: 35))
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .purple1)
                    
                    Spacer ()
                        .frame(height: 5)
                    
                    VStack {
                        
                        Text("match")
                            .font(.system(size: 22))
                            .italic()
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .purple1)
                        
                        Spacer ()
                            .frame(height: 5)
                        
                        Text("the inside of you")
                            .font(.system(size: 35))
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .purple1)
                        
                        
                        Text("with your friends")
                            .font(.system(size: 35))
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .purple1)
                        
                        Spacer ()
                            .frame(height: 100)
                        
                        
                    
                        
                        VStack {
                            
                      
                            
                            
                       
                            
//                            AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups
//
                            
                            
                            NavigationLink( destination: BuiltForTeens(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                            //                               destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                            label: {
                                Text("Connect with friends")
                                    .fontWeight(.thin)
                                    .frame(width: 320, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 23))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                      
                            Spacer ()
                                .frame(height: 20)
                            
                            Text("'Pulled from the wreckage")
                                .font(.system(size: 17))
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .purple1)
                            
                            
                            Text("of your silent reverie.'")
                                .font(.system(size: 17))
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .purple1)
                            
                            
                            Text("-- Sarah McLachlan")
                                .font(.system(size: 12))
                                .italic()
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .purple1)
//
//
//                            VStack {
//
//                                Button(action: {
//                                    mood = 6
//                                }) {
//                                    Spacer()
//                                        .frame(width: 10)
//
//                                    Text("Ready to talk")
//                                        .font(.system(size: 10))
//                                        .foregroundColor(Color.black)
//
//
//
//
//
//
//                                }
//                                .frame(width: 100, height: 80, alignment: .center)
//                                .background(mood == 6 ? Color(.systemYellow) : Color .yellow)
//                                .cornerRadius(7)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//                                Spacer()
//                                    .frame(height: 25)
//
//                                HStack {
//
//        //                            VStack {
//        //
//        //                                Button(action: {
//        //                                    sessionManager.showLogin()
//        //                                },
//        //                                       label: {
//        //                                    Image("home-alt2")
//        //                                        .frame(width: 50, height: 25)
//        //                                        .foregroundColor(.white)
//        //                                        .font(.system(size: 20))
//        //                                        .background(Color .black)
//        //                                        .cornerRadius(15)
//        //                                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//        //                                        .opacity(0.70)
//        //
//        //                                })
//        //
//        //                            }
//                                    Button(action: {
//                                        sessionManager.showLogin()
//                                    },
//                                           label: {
//                                        Image("FaceTime")
//                                            .frame(width: 5, height: 5)
//                                    })
//                                        Spacer()
//                                            .frame(width: 15)
//
//                                    //
//                                    Button(action: {
//                                        sessionManager.showLogin()
//                                    },
//                                           label: {
//                                        Image("home-alt2")
//                                            .frame(width: 50, height: 25)
//                                            .foregroundColor(.white)
//                                            .font(.system(size: 20))
//                                            .background(Color .black)
//                                            .cornerRadius(15)
//                                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                                            .opacity(0.70)
//
//                                    })
//
//                                    Spacer()
//                                        .frame(width: 15)
//
//
//                                    Button(action: {
//                                        sessionManager.showLogin()
//                                    },
//                                           label: {
//                                        Image("download")
//                                            .frame(width: 5, height: 5)
//        //                                    .foregroundColor(.white)
//        //                                    .font(.system(size: 20))
//        //                                    .background(Color .black)
//        //                                    .cornerRadius(15)
//        //                                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//        //                                    .opacity(0.70)
//
//                                    })
                                   
                                }
        //
                            
                            Spacer ()
                                .frame(height: 200)
                            
                        }
                    }
                }
            }
        }
        
    }
    

