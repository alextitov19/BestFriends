//
//  SafeChat.swift
//  BestFriends
//
//  Created by Social Tech on 1/4/23.
//


//
//import Foundation
//import SwiftUI
//import AVKit
//
//struct InfoSafeChat: View {
//   
//    let user: User
//   
//    var body: some View {
//        
//        ZStack {
//            
//            ColorManager .purple1
//                .ignoresSafeArea()
//                .onAppear()
//            
//        
//            
//            
//            VStack {
//                
//                
//                Text("Protected Chat Rooms")
//                    .font(.system(size: 35))
//                
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager.grey2)
//             
//                
//                ZStack {
//                    
//                    
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .foregroundColor(ColorManager .purple1)
//                        .frame(width: 325, height: 325)
//                        .shadow(color: ColorManager .grey4, radius: 65, x: 30, y: 50)
//                        .opacity(0.95)
//                    
//                    
//                    
//                    VStack {
//                        
//                        
//                        Spacer ()
//                            .frame(height: 70)
//                      
//                      
//                        
//                        Text("Tap [Lock] icon at top of Chat")
//                            .font(.system(size: 20))
//                            .fontWeight(.regular)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey2)
//                           
//                        
//                        VStack {
//                        
//                            Text("-hide Chat from prying eyes")
//                                .font(.system(size: 15))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager.grey4)
//                           
//                            Text("-set secret 4 digit PIN")
//                                .font(.system(size: 15))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager.grey4)
//                            
//                            
//                            Text("-enter 4 digit PIN to un-hide")
//                                .font(.system(size: 15))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager.grey4)
//                        
//                        
//                            
//                            
//                            Spacer ()
//                                .frame(height: 100)
//                            
//                        }
//                        
//                    }
//                }
//            }
//        }
//    }
//    
//}
// 
