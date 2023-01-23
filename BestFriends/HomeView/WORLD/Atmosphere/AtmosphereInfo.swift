//
//  AtmosphereInfo.swift
//  BestFriends
//
//  Created by Social Tech on 6/30/22.
//
//


//
//import Foundation
//import SwiftUI
//
//struct AtmosphereInfo: View {
//    
//    @EnvironmentObject var sessionManager: SessionManager
//    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    
//    var body: some View {
//        
//        VStack {
//            
//            
//            ZStack {
//                
////                ColorManager.grey4
////                    .ignoresSafeArea()
////                    .onAppear()
//              
//                
//                Color .black
//                  .ignoresSafeArea()
//                  .onAppear()
//                
//    //            Image("purpleBackground")
//    //                .resizable()
//    //                .ignoresSafeArea()
//    //                .scaledToFill()
//
//                AdPlayerView(name: "sky2")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//                    .opacity(0.75)
//                
//                
//                VStack {
//
//                    Text("Want to tell firinds")
//                        .font(.system(size: 30))
//                        .foregroundColor(Color.white)
//                        .italic()
//                        .fontWeight(.regular)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//                    
//                    Text("so they can")
//                        .font(.system(size: 30))
//                        .foregroundColor(Color.white)
//                        .italic()
//                        .fontWeight(.regular)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//                    
//                    
//                    
//                    
//                    Text("Cheer you in good times")
//                        .font(.system(size: 25))
//                        .foregroundColor(Color.white)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//                    
//                    Text("and lend Support in bad")
//                        .font(.system(size: 25))
//                        .foregroundColor(Color.white)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(ColorManager .purple3)
//                    
//                    VStack {
//                        
//                        
//                        Spacer()
//                            .frame(height: 30)
//                        
//                        
//                        NavigationLink(
//                            destination: AtmosphereInfo2(user: user, atmosphere: atmosphere, friends: friends),
//                            label: {
//                                Text("How feature works")
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color.white)
//                                    .font(.system(size: 17))
//                                    .italic()
//                                    .frame(width: 75, height: 75)
//                                    .background(ColorManager .purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            })
//                        
//                    
//                        
//                        VStack {
//                            
//                            
//                            Spacer()
//                                .frame(height: 40)
//                            
//                            
//                            NavigationLink(
//                                destination: AtmosphereMain2(user: user, atmosphere: atmosphere, friends: friends),
//                                label: {
//                                    Text("Enter")
//                                        .fontWeight(.thin)
//                                        .frame(width: 150, height: 40)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 30))
//                                        .background(ColorManager.purple3)
//                                        .cornerRadius(15)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                    
//                                })
//   
//                 
//                            
//                        }
//                    }
//                    
//                }
//            }
//        }
//    }
//    
//    
//}
//
//
//
