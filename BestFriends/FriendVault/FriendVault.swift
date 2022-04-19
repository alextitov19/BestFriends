//
//  FriendVault.swift
//  BestFriends
//
//  Created by Social Tech on 4/18/22.
//


import Foundation
import SwiftUI

struct FriendVault: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("Star Page")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text("TODAY")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 80)
                    
                    Text("Say something nice")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.orange)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("to your freind in chat")
                        .font(.system(size: 20, weight: .bold))
                        .italic()
                        
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                  
                    
                    Spacer()
                        .frame(height: 40)
                    Text("Get a smile back")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.orange)
                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 100)
                    
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 5)
                        
                        Text("You just started a streak")
                            .font(.system(size: 25,
                    weight: .bold))
                            .foregroundColor(.green)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 0)
                        
                        Spacer()
                           .frame(height: 50)
                        
                        
                        
//                        Image("ChatBlue")
//
//
                      NavigationLink(
                         destination: HomeView(),
                           label: {
                                Text("take me to CHAT")
                                   .fontWeight(.semibold)
                                   .foregroundColor(Color.white)
                                   .frame(width: 350.0, height: 50)
                                  .font(.system(size: 20))
                                  .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))

                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)


      
                                    
                        }
                      )}
                    
                }
            }
        }
    }
}
struct FriendVault_Previews : PreviewProvider {
    static var previews: some View {
        FriendVault()
    }
}




//Button(action: {
//    sessionManager.showBreathInviteView()
//}) {
//    ZStack {
//        Circle()
//            .frame(width: 100, height: 100)
//            .foregroundColor(ColorManager.pmbc_green)
//            .shadow(color: .black, radius: 2, x: 0, y: 2)
//
//        Text("User\nVault")
//            .foregroundColor(.white)
//            .font(.system(size: 15, weight: .bold))
//            .shadow(color: .black, radius: 1, x: 0, y: 1)
//
    
    
