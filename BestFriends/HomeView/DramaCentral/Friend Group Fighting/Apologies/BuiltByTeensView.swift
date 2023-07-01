//
//  Apologies.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//



import Foundation
import SwiftUI


struct BuiltByTeensView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    //    let atmosphere: Atmosphere
    let friends: [User]
    //    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
            
            //            Color .black
            //                .ignoresSafeArea()
            //                .onAppear()
            //
            //
            //            AdPlayerView(name: "sky2")
            //                .ignoresSafeArea()
            //                .blendMode(.screen)
            
            ColorManager.grey4
                .ignoresSafeArea()
                .onAppear()
            
            ZStack {
                
                Spacer()
                    .frame(height: 10)
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(Color.orange)
                    .frame(width: 400, height: 400)
                    .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                    .opacity(0.95)
                VStack {
                    
                    
                    
 
                    
                    Spacer()
                        .frame(height: 50)
                    
                    
                    
                    Text("see our story")
                        .font(.system(size: 18))
                        .italic()
                        .foregroundColor(ColorManager.grey1)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                    
                    VStack {
                        
                        VStack {
                       
                            NavigationLink(
                                
                                destination: ShaylaPage(user: user),
                                label: {
                                    Text("Built by over \n130 teens worldwide")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 300, height: 60)
                                        .font(.system(size: 20))
                                        .background(ColorManager .grey2)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                            
                            
                            
                            
                            VStack {
                                
                                Spacer()
                                    .frame(height: 100)
                                
                                Text("now you can let the outside of you")
                                                   .font(.system(size: 22))
                                                   .italic()
                                                   .foregroundColor(ColorManager.grey1)
                                                   .fontWeight(.thin)
                                                   .multilineTextAlignment(.center)
                                               
                                               Text("match the inside of you")
                                                   .font(.system(size: 22))
                                                   .italic()
                                                   .foregroundColor(ColorManager.grey1)
                                                   .fontWeight(.thin)
                                                   .multilineTextAlignment(.center)
                                               
                                               
                                               Text("on social media")
                                                   .font(.system(size: 22))
                                                   .italic()
                                                   .foregroundColor(ColorManager.grey1)
                                                   .fontWeight(.thin)
                                                   .multilineTextAlignment(.center)
                                               
                               
                                
                                
                                Spacer()
                                    .frame(height: 50)
                                
                                NavigationLink(
                                    
                                    destination: INFOPreload3(user: user),
                                    label: {
                                        Text("Free Stickers")
                                            .fontWeight(.light)
                                            .foregroundColor(Color.white)
                                            .frame(width: 250, height: 60)
                                            .font(.system(size: 35))
                                            .background(Color.purple)
                                            .cornerRadius(15)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                        
                                    })
                                
                               Spacer()
                                    .frame(height: 250)
                                
                                
                                
                            }
                        }
                        
                    }
                }
            }
        }
        
    }
    
}
