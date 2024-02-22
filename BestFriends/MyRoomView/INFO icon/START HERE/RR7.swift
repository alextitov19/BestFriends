//
//  RR7.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/15/23.
//

//import SwiftUI
//
//struct RR7: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR7_Previews: PreviewProvider {
//    static var previews: some View {
//        RR7()
//    }
//}


import Foundation
import SwiftUI

struct RR7: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
     let atmosphere: Atmosphere
     let friends: [User]
     let friendAtmospheres: [Atmosphere]
     let groups: [Group]
    
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
    
        
        ZStack {
         
            Image("CareHeartBalloon 1")
                .ignoresSafeArea()
                .scaledToFit()
                .opacity(0.8)
        

                
                VStack {

          
                    
                    ZStack {
                        
                        Spacer()
                            .frame(height: 70)
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 375, height: 375)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.9)
                        VStack {
                            
                            
                            Spacer()
                                .frame(height: 30)
                            
                            Text("A friend may well be reckoned \nthe masterpiece of nature.")
                                .font(.system(size: 27))
                                .italic()
                                .foregroundColor(Color.white)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("- - Emerson")
                                .font(.system(size: 13))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            
                            Spacer()
                                .frame(height: 20)
                            

                        }
                        
                    }
                        VStack {
                            
                            Spacer()
                                .frame(height: 30)
                           
                               
                          
                            NavigationLink(
                                destination: FH8(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
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
        
        
 
















