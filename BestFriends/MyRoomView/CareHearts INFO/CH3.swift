//
//  CH3.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/11/23.
//




import Foundation
import SwiftUI

struct CH3: View {
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
            
            ColorManager.grey4
                .opacity(0.99)
                .ignoresSafeArea()
     

            Image("CareHeartBalloon 1")
                .ignoresSafeArea()
                .scaledToFit()
                .opacity(0.6)
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            //                ScrollView {
            
            VStack {
                
                //                    Text("Emotional Support")
                //                        .font(.system(size: 35))
                //                        .foregroundColor(ColorManager .grey1)
                //                        .fontWeight(.thin)
                //                        .multilineTextAlignment(.center)
                
                Text("CareHearts")
                    .font(.system(size: 45))
                    .foregroundColor(Color.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 10)
                
                Text("perfect for any occasion")
                    .font(.system(size: 27))
                    .foregroundColor(Color.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
          
                
                Text("showing you care!")
                    .font(.system(size: 27))
                    .foregroundColor(Color.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
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
                        
                        
                        
                    
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Especially powerful when sending")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                       
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Emotional Support")
                            .font(.system(size: 28))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        
                        Text("to friends struggling with a")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("difficult day")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 50)
                        
                        
                        
                    }
                    
                }
                VStack {
                    
             
                    
                    
                    //
                    //                            NavigationLink(
                    //                                destination: FH7(),
                    //                                label: {
                    //                                    Text("->")
                    //                                        .fontWeight(.thin)
                    //                                        .foregroundColor(Color.white)
                    //                                        .frame(width: 40, height: 40)
                    //                                        .font(.system(size: 30))
                    //                                        .background(ColorManager .grey2)
                    //                                        .opacity(0.95)
                    //                                        .cornerRadius(5)
                    //                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    //                                }
                    //
                    //                            )}
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 40)
                    
                }
                
            }
            
        }
        
    }
    
}
