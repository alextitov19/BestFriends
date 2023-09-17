//
//  RR23.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 9/10/23.
//

//import SwiftUI
//
//struct RR23: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR23_Previews: PreviewProvider {
//    static var previews: some View {
//        RR23()
//    }
//}



import Foundation
import SwiftUI

struct RR23: View {
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
        //        ScrollView {
        
        ZStack {
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "background_9")
                .ignoresSafeArea()
                .blendMode(.screen)
 

            VStack {
                
 
                ZStack {
                    
                    Spacer()
                        .frame(height: 70)
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 375, height: 375)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.5)
                    
                    VStack {
                        
                        
                        Spacer()
                            .frame(height: 40)
                        
                        Text("Best Days")
                            .font(.system(size: 27))
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Text("")
                            .font(.system(size: 19))
                               .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Text("coming soon")
                            .font(.system(size: 22))
                            .foregroundColor(Color.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
              
                        
                        Spacer()
                            .frame(height: 20)
                        
                        
                        Text("Our newest 'reels type' feature")
                            .font(.system(size: 19))
                               .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)

                        Text("where you and your friends celebrate")
                            .font(.system(size: 19))
                               .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        Text("your best days together!")
                            .font(.system(size: 19))
                               .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                  
                    }
                    
                }
                VStack {
                    
              
                    
                    Spacer()
                        .frame(height: 30)
                    
                    

                    NavigationLink(
                        destination: RR12(user: user, friend: user, friends: friends, groups: groups),
                        label: {
                            Text("send congratulations \nCareHeart")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .frame(width: 250, height: 40)
                                .font(.system(size: 15))
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
        


















