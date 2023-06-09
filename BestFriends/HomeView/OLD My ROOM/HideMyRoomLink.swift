//
//  HideMyRoomLink.swift
//  BestFriends
//
//  Created by Social Tech on 12/7/22.
//



import Foundation
import SwiftUI


struct HideMyRoomLink: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let groups: [Group]
//    let friendAtmospheres: [Atmosphere]
//
    var body: some View {
        ZStack {

            
//            Image("ShaylaBest")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()


            
            Color .black
              .ignoresSafeArea()
              .onAppear()
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()

            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .opacity(0.75)
            
            
            VStack {

                        
                        Text("(comming soon)")
        //                    .font(.system(size: 25, weight: .bold))
                            .font(.system(size: 18, weight: .light))
                            .italic()
                            .foregroundColor(ColorManager .grey1)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
        //                    .foregroundColor(ColorManager.purple5)
        //                    .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)

                                        Spacer()
                                            .frame(height: 30)
                        
                        
                        Text("Lock the door to your room")
        //                    .font(.system(size: 25, weight: .bold))
                            .font(.system(size: 25, weight: .light))
                            .foregroundColor(ColorManager .purple3)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                            .opacity(0.50)
        //                    .foregroundColor(ColorManager.purple5)
        //                    .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                
                
                
                
                
                Text("keep your personal stuff private")
//                    .font(.system(size: 25, weight: .bold))
                    .font(.system(size: 25, weight: .light))
                    .foregroundColor(ColorManager .purple3)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
//                    .foregroundColor(ColorManager.purple5)
//                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                
                
                    }
                }
                
            }
}
    
    
    


