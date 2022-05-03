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
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                VStack {
                    HStack {
                        VStack {
                            NavigationLink(destination: Step7_TimeToTalk(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_green)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
                                    Text("7")
                                    //                            .background()
                                        .foregroundColor(.purple)
                                        .font(.system(size: 120, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                    
                                    Text("Meet face \n-to- \nface")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                            Spacer()
                                .frame(height: 1)
                            
                            NavigationLink(destination: Step6_TextingFirst(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_blue)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
                                    Text("6")
                                    //                            .background()
                                        .foregroundColor(.purple)
                                        .font(.system(size: 120, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                    
                                    Text("Texting \nFirst \nAnxiety")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                        }
                        
                        VStack {
                            NavigationLink(destination: Step2_FightLandingView(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_blue)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
                                    Text("2")
                                    //                            .background()
                                        .foregroundColor(.purple)
                                        .font(.system(size: 120, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                    
                                    Text("Who did \nyou fight \nwith?")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                            Spacer()
                                .frame(height: 1)
                            
                            NavigationLink(destination: Step1_NotReadyTalk(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 130, height: 130)
                                        .foregroundColor(ColorManager.pmbc_pink)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
                                    Text("1")
                                    //                            .background()
                                        .foregroundColor(.purple)
                                        .font(.system(size: 130, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                    Text("Am I \nREADY \nto TALK")
                                    //                            .background()
                                        .foregroundColor(.white)
                                        .font(.system(size: 25, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                    
                                }
                            })
                            
                            Spacer()
                                .frame(height: 1)
                            
                            NavigationLink(destination: Step5_Why(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_green)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
                                    
                                    Text("5")
                                    //                            .background()
                                        .foregroundColor(.purple)
                                        .font(.system(size: 120, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                    
                                    Text("Cause \nof \nFight")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                        }
                        
                        VStack {
                            NavigationLink(destination: Step3_BreathInviteView(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_green)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
                                    Text("3")
                                    //                            .background()
                                        .foregroundColor(.purple)
                                        .font(.system(size: 120, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                    
                                    Text("Take \na \nBreath")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                            Spacer()
                                .frame(height: 1)
                            
                            NavigationLink(destination: Step4_NuclearOption(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_blue)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    Text("4")
                                    //                            .background()
                                        .foregroundColor(.purple)
                                        .font(.system(size: 120, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                    
                                    Text("Stop \nNuclear \nOption")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                }
                                
                            })
                            
                        }
                    }
                    
                    
                        NavigationLink(
                            destination: JournalFight(),
                            label: {
                                Text("My Journal")
                                    .fontWeight(.thin)
                                    .frame(width: 200, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        .padding()
                    
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
                    .padding()
                    
                    
                }
            }
        }
        
    }
}









struct DramaMainView_Previews: PreviewProvider {
    static var previews: some View {
        DramaMainView()
    }
}



