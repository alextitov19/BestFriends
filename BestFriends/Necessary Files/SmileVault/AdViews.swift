//
//  SmileVaultAdView.swift
//  BestFriends
//
//  Created by Alex Titov on 7/24/21.
//

import SwiftUI

struct SmileVaultAdView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack {
            AdPlayerView(name: "BestFriendsAd1")
                .ignoresSafeArea()
            
            HStack {
                VStack { // Advertisement Buttons
                    ZStack {
                        Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Image("whiteHeart")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                            .foregroundColor(.white)
                    }
                    
                    Spacer().frame(height: 10)
                    
                    ZStack {
                        Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Image("whiteLink")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                            .onTapGesture {
                                openURL(URL(string: "https://socialtechlabs.com/team/")!)
                            }
                    }
                    
                    Spacer().frame(height: 10)
                    
                    Text("Sample Ad")
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 20)
                
                Spacer()
            }
        }
    }
}

struct ShakingCoolAdView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        ZStack {
            AdPlayerView(name: "SplashScreen2")
                .ignoresSafeArea()
            
            HStack {
                VStack { // Advertisement Buttons
                    ZStack {
                        Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Image("whiteHeart")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                            .foregroundColor(.white)
                    }
                    
                    Spacer().frame(height: 10)
                    
                    ZStack {
                        Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1))
                            .frame(width: 60, height: 60)
                            .cornerRadius(30)
                        
                        Image("whiteLink")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFit()
                            .onTapGesture {
                                openURL(URL(string: "https://socialtechlabs.com/beta-team/")!)
                            }
                    }
                    
                    Spacer().frame(height: 10)
                    
                    Text("Sample Ad")
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 20)
                
                Spacer()
            }
        }
    }
}
