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
    
                
                Text("(When BestFriends app is OPEN)")
                    .font(.system(size: 13))
                    .italic()
                    .foregroundColor(ColorManager .grey1)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Spacer ()
                    .frame(height: 10)
                
                
                Text("View friend's images by,")
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                Text("'Skaking' your iPhone")
                    .font(.system(size: 35))
                    .foregroundColor(Color.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
          
                ZStack {
                    
            
                    VStack {
                        
                        
                        Spacer()
                            .frame(height: 10)
                        
                        //                        NavigationLink(
                        //                            destination: PhotoPop3(user: user, friends: friends),
                        //                            label: {
                        Text("INSTRUCTIONS: \n1) tap 'camera' or 'gallery' \n2) select friend \n3) add image \n4) tap [Alert Alert] \n\nNOTE: \nYou can only send ONE real-time image \nto ONE friend at a time \n\n\nSENDING NEW IMAGE:  \n1) DELETE current image (just tap it) \n2) Then repeat above steps.")
                            .fontWeight(.regular)
                            .frame(width: 275, height: 300)
                            .foregroundColor(Color.black)
                            .font(.system(size: 15))
                            .background(ColorManager .grey2)
                            .cornerRadius(15)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        
                          
                      
                        
                        Text("(if you get a 'loading' icon - friend has deleted image)")
                            .foregroundColor(Color.white)
                            .italic()
                            .font(.system(size: 14, weight: .light))
    
                    
                        
                    }
                    
                }
                VStack {
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink( destination:  PhotoPopView(user: user, friends: friends),
                                    label: {
                        Text("Go to 'Send PhotoPOP'")
                            .fontWeight(.light)
                            .frame(width: 220, height: 40)
                            .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .background(Color.green)
                            .glow(color: ColorManager.purple3, radius: 1)
                            .shadow(color: .white, radius: 3, x: -4, y: 4)
                            .opacity(0.9)
                            .cornerRadius(10)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                    })
              
                    
                    Spacer()
                        .frame(height: 40)
                    
                }
                
            }
            
        }
        
    }
}
        
 

















