//
//  HurtFeelings.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//





import Foundation
import SwiftUI


struct HurtFeelings: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    //    let atmosphere: Atmosphere
    let friends: [User]
    //    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
            
            Color .black
                .ignoresSafeArea()
                .onAppear()
            
            //            Image("purpleBackground")
            //                 .resizable()
            //                 .ignoresSafeArea()
            //                 .scaledToFill()
            //
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                
                Text("PhotoPOP")
                    .font(.system(size: 65))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Text("Just shake your phone \nwhile in BestFriends")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("And the image your friends just sent you ")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                
                Text("Pops Up")
                    .font(.system(size: 40))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("Full screen")
                    .font(.system(size: 50))
                    .italic()
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                VStack {
                    Spacer()
                        .frame(height: 100)
                   
                    
                    Text("you're alerted via \npush notification")
                        .font(.system(size: 22))
                    
                        .foregroundColor(ColorManager.grey1)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        .frame(height: 70)
                    
                    VStack {
                        
                        
                        
                        NavigationLink(
                            
                            destination: PhotoPopView(user: user, friends: friends),
                            label: {
                                Text("TAP")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.white)
                                    .frame(width: 230, height: 60)
                                    .font(.system(size: 25))
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        
                        
                        Spacer()
                            .frame(height: 15)
                        
                        
                        
                    }
                }
                
            }
        }
    }
    
}
    
 
