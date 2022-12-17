//
//  INFOPreload3.swift
//  BestFriends
//
//  Created by Social Tech on 12/17/22.
//



import Foundation
import SwiftUI


struct INFOPreload3: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    //    let atmosphere: Atmosphere
    //    let friends: [User]
    //    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]
    //
    var body: some View {
        ZStack {
            
            //            Color .black
            //              .ignoresSafeArea()
            //              .onAppear()
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.75)
            
            //            AdPlayerView(name: "PaperAirplanes")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //                .opacity(0.75)
            
            ZStack {
                //                Circle()
                //                    .frame(width: 300, height: 300)
                //                    .foregroundColor(ColorManager.purple3)
                //                    .offset(x: 200, y: -450)
                //
                //                Circle()
                //                    .frame(width: 300, height: 300)
                //                    .foregroundColor(ColorManager.purple3)
                //                    .offset(x: -200, y: 400)
                
                
            }
            
            
            
            VStack {
                
                

//                Spacer()
//                    .frame(height: 12)
//
                
                
                VStack {
                    
                    
                    Text("- social influencers screamiong for \na protected, non-toxic - safe hideout")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 15)
                    
                    Text("- populars at school wanting \ncloser connections with \nfewer trusted friends")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text(".  .  .")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(ColorManager .grey2)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                    //                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 50)
                    
                    VStack {
                        
                        Text("- teens uncomfortable with \nhow to fix a huge fight")
                            .font(.system(size: 20))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 15)
                        
                        Text("- anyone worldwide that knows \nmoments of kindness, \nget noticed the most")
                            .font(.system(size: 20))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        
                        Spacer()
                            .frame(height: 50)
                        
                  
                  
                        Text("leaving life better, \neven in the slience ...")
                            .font(.system(size: 25))
                            .italic()
                            .fontWeight(.thin)
                            .foregroundColor(ColorManager .purple3)
                            .multilineTextAlignment(.center)
                        
                        
                        Spacer()
                            .frame(height: 100)
                        
                        
                        
                        
                        
                    }
                    
                }
                
            }
        }
        
    }
}
