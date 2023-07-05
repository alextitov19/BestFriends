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
    //    let atmosphere: Atmosphere
    let friends: [User]
    //    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
            
            //            Color .black
            //                .ignoresSafeArea()
            //                .onAppear()
            //
            //
            //            AdPlayerView(name: "sky2")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            
         
            
            Image("BuiltByTeens 1")
                .resizable()
                .ignoresSafeArea()
                .onAppear()
            
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
            
            
            
            ZStack {
                
                Spacer()
                    .frame(height: 10)
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(ColorManager .purple3)
                    .frame(width: 350, height: 100)
                    .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50)
                    .opacity(0.9)
                VStack {
                    
                    
//
//
//
//                    Spacer()
//                        .frame(height: 50)
//
//
//
                 
                    
                    VStack {
                        
                        VStack {
                       
                            NavigationLink(
                                
                                destination: ShaylaPage(user: user),
                                label: {
                                    Text("Built by over \n140 teens worldwide \n\n(see our story)")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 300, height: 100)
                                        .font(.system(size: 20))
                                        .background(ColorManager .grey4)
                                        .cornerRadius(15)
                                        .opacity(0.9)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                            
                  
                            
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 100)
                                
                      
                                
                                Spacer()
                                    .frame(height: 50)
                                
                                NavigationLink(
                                    
                                    destination: INFOPreload3(user: user),
                                    label: {
                                        Text("Free Stickers")
                                            .fontWeight(.light)
                                            .foregroundColor(Color.white)
                                            .frame(width: 250, height: 60)
                                            .font(.system(size: 35))
                                            .background(Color.purple)
                                            .cornerRadius(15)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                        
                                    })
                                
                               Spacer()
                                    .frame(height: 250)
                                
                                
                                
                            }
                        }
                        
                    }
                }
            }
        }
        
    }
    
}
