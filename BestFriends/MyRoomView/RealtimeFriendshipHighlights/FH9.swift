//
//  FH9.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/7/23.
//

//import SwiftUI
//
//struct FH9: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct FH9_Previews: PreviewProvider {
//    static var previews: some View {
//        FH9()
//    }
//}




import Foundation
import SwiftUI

struct FH9: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var counter = 0
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    
    var body: some View {
        //        ScrollView {
        
        ZStack {
         
            Image("CareHeartBalloon 1")
                .ignoresSafeArea()
                .scaledToFit()
                .opacity(0.4)
        
//            Color.black
//                .ignoresSafeArea()
//
//            AdPlayerView(name: "Galaxy2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.9)
            
            
//            if shareTapped {
//
//                ColorManager.grey4
//                    .opacity(0.8)
//                    .ignoresSafeArea()
//
//                AdPlayerView(name: "dramaLights")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//
//            } else {
//
//                Image("FHBackground")
//                    .resizable()
//                    .scaledToFill()
//                    .edgesIgnoringSafeArea(.all)
                
                //                ScrollView {
                
                VStack {

                    
//                    Text("Your real-time")
//                        .font(.system(size: 35))
//                        .foregroundColor(ColorManager .grey1)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//
//                    Text("Friendships")
//                        .font(.system(size: 45))
//                        .foregroundColor(ColorManager .grey1)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
                    
                    ZStack {
                        
                        Spacer()
                            .frame(height: 70)
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 375, height: 375)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.4)
                        VStack {
                            
                            
                            Spacer()
                                .frame(height: 30)
                            
                            Text("Your friends are 'always' here")
                                .font(.system(size: 27))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("when you need them.")
                                .font(.system(size: 27))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            
                            Spacer()
                                .frame(height: 20)
                            
//                            Image("CoolGuy")
//                                .resizable()
//                                .frame(width: 150, height: 150)
                            
                        }
                        
                    }
                        VStack {
                            
                            Spacer()
                                .frame(height: 30)
                           
                               
                          
                            NavigationLink(
                                destination: FH8(),
                                label: {
                                    Text("->")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 40, height: 40)
                                        .font(.system(size: 30))
                                        .background(ColorManager .grey2)
                                        .opacity(0.95)
                                        .cornerRadius(5)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                }
                                
                            )}
                            
                            
                            
                            
                                Spacer()
                                    .frame(height: 40)

                        }
                        
                    }
                    
                }
                
            }
        
        
    

//
//
//
//"Yes, yes, yes!: \n\nYour friends are 'always' \nhere for you on \n\nBestFriends",
//"Look Up: \n\nYour friend just blew a kiss \nin your direction \n\njump up high and catch it",
//"Your friend sent a PhotoPOP: \n\nShake you iPhone and friend's \nimage pops up full-screen",
//"Tough day? \n\nYour friend sent a HUG, \nhold phone to your heart \n\nyep, it vibrates",
//"That's Right: \n\nWe even let you know when \na friend is ready to talk \nafter a fight",
//"Your friends love you: \n\nRedeem a Friendship Coupon",


















