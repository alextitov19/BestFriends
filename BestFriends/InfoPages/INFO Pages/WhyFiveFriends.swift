//
//  WhyFiveFriends.swift
//  BestFriends
//
//  Created by Social Tech on 11/24/22.
//

//
//import Foundation
//import SwiftUI
//
//
//struct WhyFiveFriends: View {
//    
//    @EnvironmentObject var sessionManager: SessionManager
// 
//    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let friendAtmospheres: [Atmosphere]
//    let groups: [Group]
//    
//    var body: some View {
//        ZStack {
//            
//    
//            Color.black
//                .opacity(0.9)
//                .ignoresSafeArea()
//            
//            AdPlayerView(name: "background_9")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//           
//            VStack {
//                
//                ZStack {
//                    
//                    Spacer()
//                        .frame(height: 50)
//                    
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .foregroundColor(Color.orange)
//                        .frame(width: 400, height: 400)
//                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
//                        .opacity(0.95)
//                    VStack {
//                        
//                        Text("As we move through life we get new friends.")
//                            .font(.system(size: 17, weight: .bold))
//                            .foregroundColor(Color .black)
//                        //                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                            .opacity(0.50)
//                            .multilineTextAlignment(.center)
//                        
//                        Text("Each year you can add 5 new friends")
//                            .font(.system(size: 17, weight: .bold))
//                            .foregroundColor(Color .black)
//                        //                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                            .opacity(0.50)
//                            .multilineTextAlignment(.center)
//                        
//                        Text("without loosing your old ones.")
//                            .font(.system(size: 17, weight: .bold))
//                            .foregroundColor(Color .black)
//                        //                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                            .opacity(0.50)
//                            .multilineTextAlignment(.center)
//                    }
//                }
//                
//                Spacer()
//                    .frame(height: 10)
//                
//                
//                Text("We are working under the National Science Foundation's iCAP program with George Washington and George Mason Universities where we conducted over 150 (one-on-one) interviews and over 500 surveys of teens worldwide.")
//                    .font(.system(size: 15, weight: .thin))
//                    .foregroundColor(Color.white)
////                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                    .opacity(0.50)
//                    .multilineTextAlignment(.center)
//                    .padding(30)
//            
//                
//                Text("Over 80% said they preferred 5 or less of their closes, most trusted friends to interact with in BestFriends app.")
//                    .font(.system(size: 15, weight: .thin))
//                    .foregroundColor(Color.white)
////                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                    .opacity(0.50)
//                    .multilineTextAlignment(.center)
//                    .padding()
//                
//                
//              
//                
//             
//                
//                  
//                    
//                }
//            }
//            
//        }
//    }
//    
//
//    
//
//
