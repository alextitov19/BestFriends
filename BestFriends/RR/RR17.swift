//
//  RR17.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 8/18/23.
//

//import SwiftUI
//
//struct RR17: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct RR17_Previews: PreviewProvider {
//    static var previews: some View {
//        RR19()
//    }
//}
//



import Foundation
import SwiftUI

struct RR17: View {
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
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            Image("SocialLogos")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.2)
            
            VStack {
                
   
                
                ZStack {
                    
                
//
//                    Image(systemName: "circle.fill")
//                        .resizable()
//                        .foregroundColor(Color.purple)
//                        .frame(width: 375, height: 375)
//                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
//                        .opacity(0.5)
//
                    VStack {
                        
                        
                        Text("We not trying to keep you")
                            .font(.system(size: 25))
//                            .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        Text("from your favorites.")
                            .font(.system(size: 25))
//                            .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 15)
                        
                        Text("BFs is but a safe decompression chamber")
                            .font(.system(size: 17))
                            .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("outside the ruling relm")
                            .font(.system(size: 17))
                            .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("of social media")
                            .font(.system(size: 17))
                            .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        

               
                      
                    }
                }
                

                    
                    Spacer()
                        .frame(height: 400)
              
               
        VStack {
            
           
        
                
                    Text("From the Heart of us,")
                        .font(.system(size: 25))
                        .italic()
                        .foregroundColor(ColorManager.grey1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
                    Text("we sincerly hope we helped!")
                        .font(.system(size: 25))
                        .italic()
                        .foregroundColor(ColorManager.grey1)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    
            Text("-- your friends at BFs")
                .font(.system(size: 12))
                .italic()
                .foregroundColor(ColorManager.grey1)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 150)
                    
                }
                
            }
            
        }
    }
    
                          }
        


















