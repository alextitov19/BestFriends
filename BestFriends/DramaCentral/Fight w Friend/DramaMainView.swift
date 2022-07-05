//
//  DramaMainView.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI

struct DramaMainView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var user: User? = nil
    @State private var friends: [User] = []
    
    var body: some View {
        NavigationView {
            ZStack {

                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .onAppear(perform: loadData)
//
//                AdPlayerView(name: "cloud")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//             
              
               
                AdPlayerView(name: "dramaLights")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                
                VStack {
                    
 
                    HStack {
                        VStack {
                            NavigationLink(destination: Step7_TimeToTalk(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.purple7)
//                                        .foregroundColor(ColorManager: purple)
                                      
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                        .opacity(0.65)
           Text("(5) \nHug-it-Out")
                                        .foregroundColor(.white)
                                        .font(.system(size: 17, weight: .bold))
                                        
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                        
                                }
                            })
                            
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(destination: Step6_TextingFirst(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.purple5)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                        .opacity(0.65)
                                   
                                    Text("(4) \nReaching Out \n1st - Anxiety")
                                        .foregroundColor(.white)
                                        .font(.system(size: 17, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                        }
                        
                        VStack {
                            if user != nil {
                            
                                NavigationLink(destination: Step2_FightLandingView(user: user!, friends: friends), label: {
                                    
                                   ZStack {
                                        Circle()
                                            .frame(width: 115, height: 115)
                                            .foregroundColor(ColorManager.grey3)
                                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                                            .opacity(0.65)
                                        
                                        Text("Who was \nFight \nWith?")
                                            .foregroundColor(.white)
                                            .font(.system(size: 17, weight: .bold))
                                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    }
                                })
                            }
                            
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(destination: Step1_NotReadyTalk(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 130, height: 130)
                                        .foregroundColor(ColorManager.grey1)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                        .opacity(0.65)
                                  
                                    Text("Need \nMore \nTIME")
                                        .foregroundColor(.white)
                                        .font(.system(size: 25, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                    
                                }
                            })
                            
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(destination: Step5_Why(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.purple3)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                        .opacity(0.65)
                                   
                                    Text("(3) \nWhy \nFighting?")
                                        .foregroundColor(.white)
                                        .font(.system(size: 17, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                        }
                        
                        VStack {
                            if user != nil {
                            NavigationLink(destination: Step3_BreathInviteView(user: user!, friends: friends), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.purple2)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                        .opacity(0.65)
                                    
                                    Text("STEP (1) \nTake a\nBreath")
                                        .foregroundColor(.white)
                                        .font(.system(size: 17, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            }
                            
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(destination: Step4_NuclearOption(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.purple3)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                        .opacity(0.65)
                                   
                                    
                                    Text("(2) \nNot \n Going \nNuclear")
                                        .foregroundColor(.white)
                                        .font(.system(size: 17, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                }
                                
                            })
                            
                        }
                    }
                    
                    Spacer()
                        .frame(height: 10)
                    
//                    VStack {
//                        
//                        NavigationLink(
//                            destination: WhoFighting(),
//                            label: {
//                                Text("my Journal")
//                                    .fontWeight(.thin)
//                                    .foregroundColor(Color.white)
//                                    .frame(width: 160, height: 40)
//                                    .font(.system(size: 30))
//                                
//                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                
//                            }
//                        )}
                    
                    Button(action: {
                        sessionManager.showHome()
                    }, label: {
                        Text("HOME")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                    
                }
            }
        }
    }
    
    private func loadData() {
        RestApi.instance.getHomeData().then { homeData in
            self.user = homeData.user
            self.friends = homeData.friends
        }
    }
}









struct DramaMainView_Previews: PreviewProvider {
    static var previews: some View {
        DramaMainView()
    }
}



