//
//  RR50.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 10/29/23.
//

//import SwiftUI
//
//struct RR50: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR50_Previews: PreviewProvider {
//    static var previews: some View {
//        RR50()
//    }
//}
//


import Foundation
import SwiftUI

struct RR50: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
//     let atmosphere: Atmosphere
//     let friends: [User]
//     let friendAtmospheres: [Atmosphere]
//     let groups: [Group]
    
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
         
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
                VStack {

                    
                       NavigationLink(
                           destination: ChangeChatBackgroundView(user: user),
                           label: {
                               Text("Customize \nChat Backgrounds")
                                   .fontWeight(.light)
                                   .frame(width: 280, height: 80)
                                   .foregroundColor(Color.white)
                                   .font(.system(size: 25))
                                   .background(Color.cyan)
                                   .cornerRadius(15)
                                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                   .opacity(0.5)
                           })
                    
                    ZStack {
                        
                        Image(systemName: "circle.fill")
                            .resizable()
                            .foregroundColor(Color.purple)
                            .frame(width: 550, height: 550)
                            .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                            .opacity(0.25)
                        
                        VStack {
                            NavigationLink(
                                destination: ProfessionalHelp(user: user),
                                label: {
                                    Text("1-on-1 \nSetUP")
                                        .fontWeight(.light)
                                        .frame(width: 100, height: 100)
                                        .foregroundColor(ColorManager .purple7)
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            
                            Spacer()
                                .frame(height: 50)
                            
                            Text("Build & Access")
                                .fontWeight(.medium)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.15)


                            Text("Chat Rooms")
                                .fontWeight(.medium)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .glow(color: ColorManager.purple4, radius: 3)
                                .opacity(0.15)
                       
                            Spacer()
                                .frame(height: 50)
                            
                            
                            NavigationLink(
                                destination: InfoCreateChatRooms(user: user),
                                label: {
                                    Text("Group \nSetUP")
                                        .fontWeight(.light)
                                        .frame(width: 100, height: 100)
                                        .foregroundColor(ColorManager .purple7)
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            
                        }
                  
                    }
                }

                            Spacer()
                                .frame(height: 90)
                  
                    }
                    
                }
                
            }
        
        
 















