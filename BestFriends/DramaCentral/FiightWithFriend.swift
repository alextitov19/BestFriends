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
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
//                Image("purpleBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
                Image("ballons")
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
                    
             
//                    Text("go ahead")
//                        .font(.system(size: 100))
//                        .foregroundColor(.white)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                        .padding(.horizontal, 0)
//
                    Spacer()
                        .frame(height: 250)
                    
                    Text("We hope to change the ")
                        .font(.system(size: 30))
                        .italic()
                        .foregroundColor(.black)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("way you feel right now")
                        .font(.system(size: 30, weight: .bold))
                        .italic()
                        .foregroundColor(.black)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                  
                    
                    Spacer()
                        .frame(height: 40)
                    
                    Text("Let's once again, \nfind that smile of yours")
                        .font(.system(size: 20, weight: .bold))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
//                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(
                        destination: HomeView(),
                        label: {
                            Text("Ok, let's try")
                                .fontWeight(.light)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 190, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color.gray)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                               
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


