//
//  HowChatWorks.swift
//  BestFriends
//
//  Created by Social Tech on 12/19/22.
//



import Foundation
import SwiftUI


struct InfoHowChatWorks: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    
    let user: User
    
    
    var body: some View {
        ZStack {
            
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            VStack {
                
                Text("Sharing your life with your BFFs in")
                    .font(.system(size: 23, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
                
                Text("real-time")
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(Color .white)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 10)
                
                
                
                Text("Please 'Allow Notifications' for BestFriends")
                    .font(.system(size: 13, weight: .thin))
                    .italic()
                    .foregroundColor(Color.white)
                    .opacity(0.8)
                    .multilineTextAlignment(.center)
                
                
                ZStack {
                    
                    Spacer()
                        .frame(height: 90)
                    
                    VStack {
                        
                        
                        
                    }
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 450, height: 450)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    VStack {
                        
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Smile")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(Color .white)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("- your friends are here waiting for you \neven on difficult days")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(Color.white)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("- a friend blew you a kiss - jump up & catch it")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(Color.white)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("- grab your HUG \n'litterely' touching your heart")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(Color.white)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                       
                        VStack {
                        
                    
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("- open a Friendship Gift")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(Color.white)
                            .opacity(0.50)
                            .multilineTextAlignment(.center)
                      
                            Spacer()
                                .frame(height: 10)
                            
                            Text("- shake your phone - see a Friendship pic")
                                .font(.system(size: 17, weight: .bold))
                                .foregroundColor(Color.white)
                                .opacity(0.50)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 10)
                            
                            Text("- we even let you know when a friend is \nready to talk after a fight")
                                .font(.system(size: 17, weight: .bold))
                                .foregroundColor(Color.white)
                                .opacity(0.50)
                                .multilineTextAlignment(.center)
                            
                            
                            //                            Text("ALLOW NOTIFICATIONS")
                            //                                .font(.system(size: 19, weight: .bold))
                            //                                .foregroundColor(Color .white)
                            //                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            //                                .opacity(0.50)
                            //                                .multilineTextAlignment(.center)
                        }
                    }
                    
                 
                    
           
                    
                    
                }
            }
            
        }
    }
    
    
}





//
//import Foundation
//import SwiftUI
//import AVKit
//
//struct InfoHowChatWorks: View {
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
//                Text("How Chat Works")
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
//                        .frame(width: 335, height: 335)
//                        .shadow(color: ColorManager .pmbc_blue, radius: 65, x: 30, y: 50)
//                        .opacity(0.95)
//                    
//                    
//                    
//                    VStack {
//                        
//                        
//                        Spacer ()
//                            .frame(height: 75)
//                        
//                        Text("Long-tap messages to:")
//                            .font(.system(size: 20))
//                            .fontWeight(.regular)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey2)
//                        
//                        Text("-save message to SmileVault")
//                            .font(.system(size: 15))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey4)
//                    
//                        
//                        Text("-Report Abuse")
//                            .font(.system(size: 15))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey4)
//                        
//                        Spacer ()
//                            .frame(height: 15)
//                        
//                        Text("Tap [Remove Me] at top of Chat")
//                            .font(.system(size: 20))
//                            .fontWeight(.regular)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey2)
//                        
//                        
//                        Text("to be removed from room")
//                            .font(.system(size: 15))
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(ColorManager .grey4)
//                        
//                        
//                        Spacer ()
//                            .frame(height: 15)
//
//                        VStack {
//                            Text("Sending Images")
//                                .font(.system(size: 20))
//                                .fontWeight(.regular)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey2)
//                            
//                            Text("-image shows as camera icon")
//                                .font(.system(size: 15))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey4)
//                        
//                            
//                            Text("-tap icon to see image \ntap image to reduce size")
//                                .font(.system(size: 15))
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey4)
//                            
//                            Spacer ()
//                                .frame(height: 15)
//
//
//                            Text("*** MANUAL scroll")
//                                .font(.system(size: 20))
//                                .fontWeight(.regular)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(ColorManager .grey2)
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
