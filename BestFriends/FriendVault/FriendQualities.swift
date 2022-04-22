//
//  FriendQualities.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//



import Foundation
import SwiftUI

struct FriendQualities: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 5)
                    
                    Text("Top 3 \nBestFriend Qualities")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 80)
                    
                    Text("Always there when we need them")
                        .font(.system(size: 30, weight: .bold))
                        .italic()
                        .foregroundColor(.orange)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 35)
                    
                    Text("Trustworthy")
                        .font(.system(size: 30, weight: .bold))
                        .italic()
                        
                        .foregroundColor(.orange)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                  
                    
                    Spacer()
                        .frame(height: 35)
                    Text("Makes me feel SAFE")
                        .font(.system(size: 30, weight: .light))
                        .foregroundColor(.orange)
                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 100)
                    
                    
                    VStack {
                        HStack {
                            
                        Image(systemName: "heart.fill")
                                .font(.system(size: 50))
                                .foregroundColor(.pink)
                        
                            Image(systemName: "heart.fill")
                                .font(.system(size: 50)) .foregroundColor(.blue)
                            
                            Image(systemName: "heart.fill")
                                .font(.system(size: 50))
                                .foregroundColor(.purple)

                        }
                            
                       
                        
                        Spacer()
                            .frame(height: 50)
                        
                      NavigationLink(
                         destination: MasterFriendVault(),
                           label: {
                                Text("Send a 'heart' in FriendVault")
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
struct FriendQualities_Previews : PreviewProvider {
    static var previews: some View {
        FriendQualities()
    }
}

