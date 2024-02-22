//
//  HorizonPromoPage.swift
//  BestFriends
//
//  Created by Social Tech on 7/2/22.
//



import Foundation
import SwiftUI
import AVKit

struct HorizonPromoPage: View {
    
    
    let user: User
    let friends: [User]
    let atmosphere: Atmosphere
    
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
            Color .black
                .ignoresSafeArea()
            
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
            
            
            
            
            
            VStack {
//
//                Text("something bad")
//                    .font(.system(size: 40))
////                    .italic()
//                    .fontWeight(.regular)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager .grey3)
//
//
//
//                Text("just happend")
//                    .font(.system(size: 35))
//                    .italic()
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                    .foregroundColor(ColorManager .grey3)
//
//                Spacer ()
//                    .frame(height: 80)
                
                Text("Welcome to the coolest Journal on")
                    .font(.system(size: 25))
//                    .italic()
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager .grey3)
                
                Spacer ()
                    .frame(height: 10)
               
                VStack {
                    
                    Text("the Planet")
                        .font(.system(size: 35))
                    //                    .italic()
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey3)
                    Spacer ()
                        .frame(height: 10)
                    
                    Text("with your friends")
                        .font(.system(size: 25))
                    //                    .italic()
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorManager .grey3)
                    
          
                    
                }
                
                
                
                Spacer ()
                    .frame(height: 20)
                
                ZStack {
                    
                    
                                        Image(systemName: "heart.fill")
                                            .resizable()
                                            .foregroundColor(ColorManager .purple2)
                                            .frame(width: 360, height: 330)
                                            .shadow(color: ColorManager .purple5, radius: 65, x: 30, y: 50)
                                            .opacity(0.8)
                    
                    
                    
                    VStack {
                        
                        Spacer ()
                            .frame(height: 80)
                        
              
                     

                        Text("Yep, a unique Journal designed to")
                            .font(.system(size: 20))
                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey3)

                        Text("Fix Problems")
                            .font(.system(size: 30))
//                            .italic()
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey3)

                    
                        
                        VStack {
                            
                            
                            
                            NavigationLink( destination:   HorizonHomeView(user: user, friends: friends, atmosphere: atmosphere),
                                            label: {
                                Text("My Journal")
                                    .fontWeight(.thin)
                                    .frame(width: 250, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 23))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                            
                           
                            Spacer ()
                                .frame(height: 10)
                            
                            Text("with your friends help")
                                .font(.system(size: 20))
    //                            .italic()
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey3)

                            
                            Spacer ()
                                .frame(height: 100)
              
                            
                        }
                    }
                }
            }
        }
        
    }
    
    
}





//**********************************************
//***********************************************************


//
//import Foundation
//import SwiftUI
////import AVKit
//
//
//struct HorizonsPromoPage: View {
//
//
//    let user: User
//    let friends: [User]
//    let atmosphere: Atmosphere
//
//
//    var body: some View {
//
//        ZStack {
//
//            ColorManager.grey4
//                  .ignoresSafeArea()
//
//
//            VStack {
//
//
//                Text("Building Dreams")
//                    .font(.system(size: 70))
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(Color.blue)
//
//                Text("with best friends")
//                    .font(.system(size: 40))
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(Color.blue)
//
////
////                Link(destination: URL(string: "https://socialtechlabs.com/team/")!) {
////                        Text("Built by Teens")
////                            .fontWeight(.thin)
////                            .frame(width: 330, height: 40)
////                            .font(.system(size: 30))
////                            .foregroundColor(.white)
////                            .background(ColorManager.purple3)
////                            .cornerRadius(15)
////                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////
////
////                }
//                Text("(comming this fall)")
//
//                    .font(.system(size: 15))
//                    .italic()
//                    .fontWeight(.ultraLight)
//                    .foregroundColor(Color.white)
//
///
//
//            Spacer()
//                .frame(height: 75)
//
//
//
//
//            }//VStack
//        }//ZStack
//    }//body
//}//struct
//
//
//
