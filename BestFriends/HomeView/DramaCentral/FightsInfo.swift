//
//  FightsInfo.swift
//  BestFriends
//
//  Created by Social Tech on 7/28/22.
//

//
//import Foundation
//import SwiftUI
//
//struct FightsInfo: View {
//    
//    @EnvironmentObject var sessionManager: SessionManager
//    
//    let user: User
//    let friends: [User]
//    let groups: [Group]
//    let atmosphere: Atmosphere
//
//    var body: some View {
//       
//        VStack {
//    
//            
//            ZStack {
//               
//                ColorManager.grey4
//                    .ignoresSafeArea()
//                    .onAppear()
//        
//            
//        VStack {
//            
////            NavigationLink(destination: FightsDVid(user: user, friends: friends, groups: groups), label: {
////                Text("Demo Video")
////                    .fontWeight(.thin)
////                    .frame(width: 200, height: 40)
////                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                    .font(.system(size: 30))
////                    .background(ColorManager.pmbc_blue)
////                    .cornerRadius(15)
////                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////            })
//            
//            Text("Welcome to ")
//                .font(.system(size: 40))
//                .fontWeight(.thin)
//                .multilineTextAlignment(.center)
//                .foregroundColor(Color.blue)
//         
//            Text("Drama Central")
//                .font(.system(size: 55))
//                .fontWeight(.thin)
//                .multilineTextAlignment(.center)
//                .foregroundColor(Color.blue)
//            
//         
//            VStack {
//           
//                    VStack {
//            
//                        
//                        Spacer()
//                        .frame(height: 50)
//
//                        Text("Helping you get back to")
//                            .font(.system(size: 25))
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.blue)
//                        
//                        Text("Being Friends")
//                            .font(.system(size: 40))
//                            .fontWeight(.thin)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.blue)
//
//              
//            }
//            
//      
//        VStack {
//  
//                Spacer()
//                    .frame(height: 35)
//            
//
//            
//            NavigationLink(
//                destination: WhoFighting(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
//                label: {
//                    Text("NEXT")
//                        .fontWeight(.thin)
//                        .frame(width: 100, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 20))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//              
//                })
//          
//            Spacer()
//                .frame(height: 60)
//        
//            
//            Text("Photosensitive warning: The next page \ncontains flashes of light that could \ntrigger seizures for people \nwith visual sensitivities.")
//                .font(.system(size: 15))
//                .italic()
//                .fontWeight(.thin)
//                .multilineTextAlignment(.center)
//                .foregroundColor(Color.white)
//            
//            NavigationLink(
//                destination: IntroBluemodeFriend(user: user, friends: friends, groups: groups, atmosphere: atmosphere),
//                label: {
//                    Text("Skip Fights Landing page")
//                        .fontWeight(.thin)
//                        .frame(width: 310, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 20))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//              
//                })
//            
//            
//            Spacer()
//                 .frame(height: 125)
//        }
//    }
//    
//}
//}
//}
//}
//}
//
//
