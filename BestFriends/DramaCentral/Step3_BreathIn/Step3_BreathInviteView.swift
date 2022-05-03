//
//  BreathInviteView.swift
//  BestFriends
//
//  Created by Social Tech on 4/16/22.
//

import Foundation
import SwiftUI
import AVKit

struct Step3_BreathInviteView: View {
    
    var body: some View {
        
        ZStack {
            
            Image("in bushes")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .onAppear {
                    
                    
                }
            
            // Stars animation...
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack{
                HStack {
                    Text("Calming")
                        .font(.system(size: 60, weight: .ultraLight))
                        .foregroundColor(Color.purple)
                        .kerning(25)
                }
                
                VStack {
                    
                    Text("breaths")
                        .font(.system(size: 60, weight: .bold))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.purple)
                        .kerning(10)
                    
                    
                    Spacer()
                        .frame(height: 1)
                    
                    VStack {
                        NavigationLink(
                            destination: BreathInView(),
                            label: {
                                Text("Take a beather alone")
                                    .fontWeight(.thin)
                                    .frame(width: 300, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        
                        
                        
                        Spacer()
                            .frame(height: 100)
                        
                        Text("With a Friend")
                            .font(.system(size: 40, weight: .thin))
                            .foregroundColor(Color.black)
                        
                        Spacer()
                            .frame(height: 20)
                    }
                    
                    
                    VStack {
                        HStack {
                            NavigationLink(
                                destination: BreathInView(),
                                label: {
                                    Text("Invite ALL")
                                        .fontWeight(.bold)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 15))
                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                        .cornerRadius(25)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            
                            NavigationLink(
                                destination: BreathInView(),
                                label: {
                                    Text("Friend 1")
                                        .fontWeight(.bold)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 15))
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            NavigationLink(
                                destination: BreathInView(),
                                label: {
                                    Text("Firend 2")
                                        .fontWeight(.bold)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 15))
                                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                        .cornerRadius(25)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                        }
                        VStack {
                            HStack {
                                NavigationLink(
                                    destination: BreathInView(),
                                    label: {
                                        Text("Friend 3")
                                            .fontWeight(.bold)
                                            .frame(width: 100, height: 30)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 15))
                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    })
                                NavigationLink(
                                    destination: BreathInView(),
                                    label: {
                                        Text("Friend 4")
                                            .fontWeight(.bold)
                                            .frame(width: 100, height: 30)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 15))
                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    })
                                
                                NavigationLink(
                                    destination: BreathInView(),
                                    label: {
                                        Text("Friend 5")
                                            .fontWeight(.bold)
                                            .frame(width: 100, height: 30)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 15))
                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    })
                            }
                            Spacer()
                                .frame(height: 20)
                            
                        }
                        
                        VStack {
                            
                            NavigationLink(
                                destination: DramaMainView(),
                                label: {
                                    Text("Invite")
                                        .fontWeight(.thin)
                                        .font(.system(size: 30))
                                        .foregroundColor(Color.white)
                                        .frame(width: 150.0, height: 50)
                                        .font(.system(size: 20))
                                    
                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                    
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                }
                                
                            )}
                        
                        Spacer ()
                            .frame(height: 30)
                        
                        NavigationLink(
                            destination: Step4_NuclearOption(),
                            label: {
                                Text("Step-4")
                                    .fontWeight(.thin)
                                    .frame(width: 120, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                    }
                    
                }
                
            }
            
        }
    }
    
    
}
struct BreathInviteView_Previews : PreviewProvider {
    static var previews: some View {
        Step3_BreathInviteView()
    }
}




