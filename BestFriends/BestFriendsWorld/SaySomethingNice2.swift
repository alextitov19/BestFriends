//
//  SaySomethingNice2.swift
//  BestFriends
//
//  Created by Social Tech on 8/22/22.
//


//
//import Foundation
//import SwiftUI
//
//
//struct SaySomethingNice2: View {
//    
//    @EnvironmentObject var sessionManager: SessionManager
//    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    
//    var body: some View {
//        ZStack {
//            ColorManager.grey3
//                .ignoresSafeArea()
//                .onAppear()
//            
////            Image("purpleBackground")
////                .resizable()
////                .ignoresSafeArea()
////                .scaledToFill()
////
////            AdPlayerView(name: "Planet6")
////                .ignoresSafeArea()
////                .blendMode(.screen)
//            
////            AdPlayerView(name: "PaperAirplanes")
////                .ignoresSafeArea()
////                .blendMode(.screen)
////
////            AdPlayerView(name: "Atmosphere2")
////                .ignoresSafeArea()
////                .blendMode(.screen)
//            
//            VStack {
//                
//                Text("Building Stronger")
//                    .font(.system(size: 30))
//                    .italic()
//                    .foregroundColor(ColorManager.orange2)
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
//                
//                Text("FRIENDSHIPS")
//                    .font(.system(size: 55))
//                    
//                    .foregroundColor(ColorManager.orange2)
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
//                Spacer()
//                    .frame(height:20)
//                
//                Text("Yep, your friend")
//                    .font(.system(size: 25))
//                    .italic()
//                    .foregroundColor(ColorManager.orange5)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//                
//                
//                Text("did or said something")
//                    .font(.system(size: 25))
//                    .italic()
//                    .foregroundColor(ColorManager.orange5)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//                
//              
//                
//                Text("that's been bugging you")
//                             .font(.system(size: 25))
//                             .italic()
//                             .fontWeight(.thin)
//                             .multilineTextAlignment(.center)
//                             .foregroundColor(ColorManager.orange5)
//                
//                Text("all week")
//                             .font(.system(size: 25))
//                             .italic()
//                             .fontWeight(.thin)
//                             .multilineTextAlignment(.center)
//                             .foregroundColor(ColorManager.orange5)
//               
//                VStack {
//                
//                Spacer()
//                    .frame(height:40)
//            
//                Text("For the next 3 minutes, this is your chance to \nget this off your chest, out in the open")
//                             .font(.system(size: 15))
//                             .fontWeight(.thin)
//                             .multilineTextAlignment(.center)
//                             .foregroundColor(ColorManager.purple1)
//                             .padding()
//                Text("Under the safety of everyone else \non BestFriends is doing it\n right now as well")
//                             .font(.system(size: 15))
//                             .fontWeight(.thin)
//                             .multilineTextAlignment(.center)
//                             .foregroundColor(ColorManager.purple1)
//                             .padding()
//                VStack {
//                 
//                    
//                    Spacer()
//                        .frame(height: 20)
//                    
//                    Button(action: {
//                        sessionManager.showLogin()
//                    },
//                        label: {
//                            Text("Say it in Chat")
//                                .fontWeight(.thin)
//                                .frame(width: 150, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 20))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        })
//                    
//                    
//                    VStack {
//                                            Text("You Got This!")
//                                                         .font(.system(size: 20))
//                                                         .fontWeight(.thin)
//                                                         .multilineTextAlignment(.center)
//                                                         .foregroundColor(Color.white)
//                        
////                    Text("Cheering each other")
////                                 .font(.system(size: 20))
////                                 .fontWeight(.thin)
////                                 .multilineTextAlignment(.center)
////                                 .foregroundColor(Color.white)
////                    Text("in good times,")
////                                 .font(.system(size: 20))
////                                 .fontWeight(.thin)
////                                 .multilineTextAlignment(.center)
////                                 .foregroundColor(Color.white)
////                             Text("supporting in bad.")
////                                 .font(.system(size: 20))
////                                 .fontWeight(.thin)
////                                 .multilineTextAlignment(.center)
////                                 .foregroundColor(Color.white)
//                   
//                    
//                        Spacer()
//                            .frame(height: 50)
//                 
//                        
//                    }
//                }
//                
//            }
//            
//        }
//        
//    }
//    
//
//}
//}
