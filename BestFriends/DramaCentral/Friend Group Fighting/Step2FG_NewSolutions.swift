//
//  Step2FG_NewSolutions.swift
//  BestFriends
//
//  Created by Social Tech on 5/8/22.
//



import Foundation
import SwiftUI

struct Step2FG_NewSolutions: View {
    
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
                    
                    
//                    Text("BlueMode")
//                        .font(.system(size: 80))
//                        .foregroundColor(.blue)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)

                    Text("Friend Groups")
                        .font(.system(size: 60))
                        .foregroundColor(.blue)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)

                    
                    HStack {
                        VStack {
                            NavigationLink(destination: Step7_TimeToTalk(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_green)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
//
//                                    Text("7")
//                                    //                            .background()
//                                        .foregroundColor(.purple)
//                                        .font(.system(size: 120, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//
                                    Text("Plan \nGroup \nActivity")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(destination: Step6_TextingFirst(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_blue)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
//                                    Text("6")
//                                    //                            .background()
//                                        .foregroundColor(.purple)
//                                        .font(.system(size: 120, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//
                                    
                                    Text("Group \nChating \nvs.1-on-1")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                        }
                        
                        VStack {
                            NavigationLink(destination: EmptyView(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_blue)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
//                                    Text("2")
//                                    //                            .background()
//                                        .foregroundColor(.purple)
//                                        .font(.system(size: 120, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//
                                    
                                    Text("assign \nmediator")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(destination: Step1_NotReadyTalk(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 130, height: 130)
                                        .foregroundColor(ColorManager.pmbc_pink)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
//                                    Text("1")
//                                    //                            .background()
//                                        .foregroundColor(.purple)
//                                        .font(.system(size: 130, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//
                                    Text("Friend \nGroup \nDRAMA")
                                    //                            .background()
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
                                        .foregroundColor(ColorManager.pmbc_green)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
                                    
//
//                                    Text("5")
//                                    //                            .background()
//                                        .foregroundColor(.purple)
//                                        .font(.system(size: 120, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//
                                    Text("sign \ncontracts")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                        }
                        
                VStack {
                            NavigationLink(destination: EmptyView(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_green)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
//
//                                    Text("3")
//                                    //                            .background()
//                                        .foregroundColor(.purple)
//                                        .font(.system(size: 120, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//
//
                                    Text("Who \nFighting \n in Group?")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                }
                            })
                            
                            Spacer()
                                .frame(height: 20)
                            
                            NavigationLink(destination: Step4_NuclearOption(), label: {
                                ZStack {
                                    Circle()
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(ColorManager.pmbc_blue)
                                        .shadow(color: .black, radius: 2, x: 0, y: 2)
//                                    Text("4")
//                                    //                            .background()
//                                        .foregroundColor(.purple)
//                                        .font(.system(size: 120, weight: .bold))
//                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//
                                    
                                    Text("Not \n Going \nNuclear")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20, weight: .bold))
                                        .shadow(color: .black, radius: 1, x: 0, y: 1)
                                    
                                }
                                
                            })
                            
                        }
                    }
                    
                    Spacer()
                        .frame(height: 10)
                    
                VStack {
                        
                        NavigationLink(
                            destination: WhoFighting(),
                            label: {
                                Text("my Journal")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 160, height: 40)
                                    .font(.system(size: 30))
                                
                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            }
                        )}
                    
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
}









struct Step2FG_NewSolutions_Previews: PreviewProvider {
    static var previews: some View {
        Step2FG_NewSolutions()
    }
}



