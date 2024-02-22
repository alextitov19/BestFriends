//
//  CH5.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/11/23.
//



import Foundation
import SwiftUI

struct CH5: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    
    let user: User
    //      let friend: User
    let friends: [User]
    
    
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
            
            //            Image("FHBackground")
            //                .resizable()
            //                .scaledToFill()
            //                .edgesIgnoringSafeArea(.all)
            //                .blendMode(.screen)
            
            
            
            ColorManager.grey4
                .opacity(0.8)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.99)
            
    VStack {
  
               
                
        ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 450, height: 450)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.3)
                    
        
                    ZStack {
                        
                        
                        VStack {
                       
                            
                            Spacer()
                                .frame(height: 10)
                            
                            
                            Text("SENDING IMAGES: \n1) Tap 'camera' \n2) Select friend \n\nNote: \nYou can only send ONE image at a time \n\n\nSENDING NEW IMAGE:  \n1) DELETE current image (just tap it) \n2) Repeat above steps.")
                                .fontWeight(.regular)
                                .frame(width: 275, height: 300)
                                .foregroundColor(Color.white)
                                .font(.system(size: 15))
                                .background(ColorManager .grey4)
                                .cornerRadius(15)
                                .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                            
                            
                            
                            
                            Text("If you get a 'loading' icon,")
                                .foregroundColor(Color.white)
                                .italic()
                                .font(.system(size: 14, weight: .light))
                            
                            Text("friend has deleted image,")
                                .foregroundColor(Color.white)
                                .italic()
                                .font(.system(size: 14, weight: .light))
                            
                            Text("just exit page and return")
                                .foregroundColor(Color.white)
                                .italic()
                                .font(.system(size: 14, weight: .light))
                            
                        }
                        
                    }
                    VStack {
                        
                        
                        
                        Spacer()
                            .frame(height: 40)
                        
                    }
                    
                }
                
            }
            
        }
    }
}
 

















