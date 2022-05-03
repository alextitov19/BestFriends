//
//  FiightWithFriend.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//


import Foundation
import SwiftUI


struct FightWithFriend: View {
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            //
            //
            //                AdPlayerView(name: "backgroundAnimation")
            //                    .ignoresSafeArea()
            //                    .blendMode(.screen)
            //                    .offset(y: -250)
            //
            VStack {
                
                
                Text("we'll pull you")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                
                Spacer()
                    .frame(height: 20)
                
                
                Text("through this drama -")
                    .font(.system(size: 30))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 0)
                
                Spacer()
                    .frame(height: 20)
                
                Text("minimizing the wreckage")
                    .font(.system(size: 30, weight: .bold))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 10)
                
                VStack {
                    
                    
                    Spacer()
                        .frame(height: 115)
                    
                    
                    NavigationLink(
                        destination: DramaCentralView(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    
                    Text("while helping you find")
                        .font(.system(size: 35, weight: .bold))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.gray)
                    
                    Text("your SMILE again")
                        .font(.system(size: 35, weight: .bold))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.gray)
                    
                    
                    
                    
                }
            }
            
        }
    }
}


struct FightWithFriend_Previews : PreviewProvider {
    static var previews: some View {
        FightWithFriend()
    }
}


