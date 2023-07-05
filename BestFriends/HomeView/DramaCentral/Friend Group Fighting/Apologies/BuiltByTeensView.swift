//
//  Apologies.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//



import Foundation
import SwiftUI


struct BuiltByTeensView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
  
    
    var body: some View {
        ZStack {
    
            Image("BuiltByTeens 1")
                .resizable()
                .ignoresSafeArea()
                .onAppear()
            
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
            
            
            
            ZStack {
                
                Spacer()
                    .frame(height: 30)
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .purple3)
                    .frame(width: 420, height: 170)
                    .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50)
                    .opacity(0.9)
                      
                            VStack {
                                
//                                Spacer()
//                                    .frame(height: 170)
                              
                                NavigationLink(
                                    
                                    destination: ShaylaPage(user: user),
                                    label: {
                                        Text("Built by over \n130 teens worldwide \n(see our story)")
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.white)
                                            .frame(width: 300, height: 80)
                                            .font(.system(size: 23))
                                            .background(Color.purple)
                                            .cornerRadius(15)
//                                            .opacity(0.95)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                        
                                    })
                                
                                Text("see our story...")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25, weight: .bold))
                                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    .opacity(0.50)
                                
//                               Spacer()
//                                    .frame(height: 250)
                                
//                                NavigationLink(
//
//                                    destination: INFOPreload3(user: user),
//                                    label: {
//                                        Text("Free Stickers")
//                                            .fontWeight(.light)
//                                            .foregroundColor(Color.white)
//                                            .frame(width: 250, height: 60)
//                                            .font(.system(size: 35))
//                                            .background(Color.purple)
//                                            .cornerRadius(15)
//                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                                    })
                                
                            }
                        }
                        
                    }
                }
            }
