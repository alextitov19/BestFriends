//
//  HowChatWorks.swift
//  BestFriends
//
//  Created by Social Tech on 12/19/22.
//


import Foundation
import SwiftUI
import AVKit

struct InfoHowChatWorks: View {
   
    let user: User
   
    var body: some View {
        
        ZStack {
            
            ColorManager .purple1
                .ignoresSafeArea()
                .onAppear()
            
        
            
            
            VStack {
                
                
                Text("How Chat Works")
                    .font(.system(size: 35))
                    
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.grey2)
             
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .purple1)
                        .frame(width: 335, height: 335)
                        .shadow(color: ColorManager .pmbc_blue, radius: 65, x: 30, y: 50)
                        .opacity(0.95)
                    
                    
                    
                    VStack {
                        
                        
                        Spacer ()
                            .frame(height: 75)
                        
                        Text("Long-tap messages to:")
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey2)
                        
                        Text("-save message to SmileVault")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey4)
                    
                        
                        Text("-Report Abuse")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey4)
                        
                        Spacer ()
                            .frame(height: 15)
                        
                        Text("Tap [Remove Me] at top of Chat")
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey2)
                        
                        
                        Text("to be removed from room")
                            .font(.system(size: 15))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(ColorManager .grey4)
                        
                        
                        Spacer ()
                            .frame(height: 15)

                        VStack {
                            Text("Sending Images")
                                .font(.system(size: 20))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey2)
                            
                            Text("-image shows as camera icon")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey4)
                        
                            
                            Text("-tap icon to see image \ntap image to reduce size")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey4)
                            
                            Spacer ()
                                .frame(height: 15)


                            Text("*** MANUAL scroll")
                                .font(.system(size: 20))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .foregroundColor(ColorManager .grey2)
                            
                            
                            Spacer ()
                                .frame(height: 100)
                            
                        }
                        
                    }
                }
            }
        }
    }
    
}
 
