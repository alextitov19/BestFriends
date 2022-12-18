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
            
            ColorManager .purple2
                .ignoresSafeArea()
                .onAppear()
            
            //
            //            AdPlayerView(name: "dramaLights")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            //                .opacity(0.75)
            
            
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple1)
                .offset(x: 200, y: -450)
            
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(ColorManager.purple1)
                .offset(x: -200, y: 400)
            
            
            
            
            
            VStack {
                
                
                VStack {
                    
                    
                    Text("- social influencers screaming for \na protected, non-toxic")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    Text("decompression hideout")
                        .font(.system(size: 27))
                        .fontWeight(.thin)
                        .foregroundColor(ColorManager .purple4)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text(".  .  .")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(ColorManager .grey2)
                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                    //                        .opacity(0.50)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 10)
                    
                    
                    VStack {
                        
                        Text("- populars at school wanting \ncloser connections")
                            .font(.system(size: 20))
                            .fontWeight(.thin)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        Text("with fewer trusted friends")
                            .font(.system(size: 27))
                            .fontWeight(.thin)
                            .foregroundColor(ColorManager .purple4)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text(".  .  .")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(ColorManager .grey2)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        //                        .opacity(0.50)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        VStack {
                            
                            Text("- teens uncertain about how to")
                                .font(.system(size: 23))
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            Text("fix a huge fight")
                                .font(.system(size: 27))
                                .fontWeight(.thin)
                                .foregroundColor(ColorManager .purple4)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 10)
                            
                            Text(".  .  .")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(ColorManager .grey2)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            //                        .opacity(0.50)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 10)
                            
                            Text("- guys wanting friends to")
                                .font(.system(size: 23))
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("have their backs!")
                                .font(.system(size: 27))
                                .fontWeight(.thin)
                                .foregroundColor(ColorManager .purple4)
                                .multilineTextAlignment(.center)
                            
                            VStack {
                            
                            Spacer()
                                .frame(height: 10)
                            
                            Text(".  .  .")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(ColorManager .grey2)
                                .shadow(color: .black, radius: 1, x: 0, y: 1)
                            //                        .opacity(0.50)
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                                .frame(height: 10)
                            
                        
                                
                                Text("And, all of us wanting to feel")
                                    .font(.system(size: 23))
                                
                                    .fontWeight(.thin)
                                    .foregroundColor(Color .white)
                                    .multilineTextAlignment(.center)
                                
                                Text("safe in the slience ...")
                                    .font(.system(size: 27))
                                
                                    .fontWeight(.thin)
                                    .foregroundColor(ColorManager .purple4)
                                    .multilineTextAlignment(.center)
                                Spacer()
                                    .frame(height: 100)
                                
                                
                                
                                
                                
                            }
                            
                        }
                        
                    }
                }
                
            }
        }
    }
}
