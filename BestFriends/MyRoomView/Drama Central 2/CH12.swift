//
//  CH12.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/17/23.
//



import Foundation
import SwiftUI

struct CH12: View {
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
            
            
            ColorManager .grey4
                .ignoresSafeArea()
            
//            AdPlayerView(name: "Galaxy2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.9)
            
            
            
            VStack {
    
                
              
                
                Spacer ()
                    .frame(height: 10)
                
                
                Text("Friendship Quote Contest")
                    .font(.system(size: 20))
                    .foregroundColor(ColorManager .grey1)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
            
                Text("(send us you 15 or less quote you invented and we will post it for a month")
                    .font(.system(size: 15))
                    .italic()
                    .foregroundColor(ColorManager .grey1)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
          
                ZStack {
                    
            
                    VStack {
                        
                        
                        Spacer()
                            .frame(height: 10)
                        
                        //                        NavigationLink(
                        //                            destination: PhotoPop3(user: user, friends: friends),
                        //                            label: {
                        Text("INSTRUCTIONS: \n\n1) tap 'camera' or 'gallery' icon \n2) select friend from dropdown menu  \n3) add gallery or camera image \n4) tap [Alert Friend: Send Push Notification], select friend - tap [Share] \n\nNOTE: \nYou can only send ONE real-time image \nto ONE friend at a time \n\n\nSENDING NEW IMAGE:  \n1) First, 'MUST DELETE' current image (just tap it) \n2) Then repeat above steps.")
                            .fontWeight(.regular)
                            .frame(width: 360, height: 340)
                            .foregroundColor(ColorManager .grey4)
                            .font(.system(size: 13))
                            .background(Color.orange)
                            .cornerRadius(15)
                            .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                        
                          
                      
                        
                        Text("(if get 'loading' icon - friend has deleted image)")
                            .foregroundColor(Color.white)
                            .italic()
                            .font(.system(size: 14, weight: .light))
    
                    
                        
                    }
                    
                }
                VStack {
                    
                    Spacer()
                        .frame(height: 30)
           
                    
                    Spacer()
                        .frame(height: 40)
                    
                }
                
            }
            
        }
        
    }
}
        
 

















