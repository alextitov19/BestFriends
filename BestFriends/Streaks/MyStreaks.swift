//
//  MyStreaks.swift
//  BestFriends
//
//  Created by Social Tech on 4/25/22.
//


import Foundation
import SwiftUI

struct MyStreaks: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
//                Image("Star Page")
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
               
//                Image("FatGuy")
                Image("2 weeks")
               
                VStack {
                    
//                 Image("FatGuy")
                    
                    Text("My Streaks")
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 10)
                    Text("Friend Streaks")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    
                    NavigationLink(
                        destination: BreathInviteView(),
                        label: {
                            Text("Friend 1")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 325, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color(hue: 0.128, saturation: 0.086, brightness: 1.0))
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                               
                           
                        })
                     
                    NavigationLink(
                        destination: BreathInviteView(),
                        label: {
                            Text("Friend 2")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 325, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color(hue: 0.128, saturation: 0.086, brightness: 1.0))
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                               
                           
                        })
                    
                    NavigationLink(
                        destination: BreathInviteView(),
                        label: {
                            Text("Friend 3")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 325, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color(hue: 0.128, saturation: 0.086, brightness: 1.0))
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                               
                           
                        })
                    
                    NavigationLink(
                        destination: BreathInviteView(),
                        label: {
                            Text("Friend 4")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 325, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color(hue: 0.128, saturation: 0.086, brightness: 1.0))
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                               
                           
                        })
                    NavigationLink(
                        destination: BreathInviteView(),
                        label: {
                            Text("Friend 5")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 325, height: 30, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color(hue: 0.128, saturation: 0.086, brightness: 1.0))
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        })
                    VStack {
                    
                    Spacer()
                        .frame(height: 10)
                    Text("Goal Streaks")
                        .font(.system(size: 30))
                        .foregroundColor(.green)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                  
                        NavigationLink(
                            destination: BreathInviteView(),
                            label: {
                                Text("Finished (xx) Goals")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 325, height: 30, alignment: .leading)
                                    .font(.system(size: 20))
                                    .padding(10)
                                    .background(Color(hue: 0.128, saturation: 0.086, brightness: 1.0))
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                   
                               
                            })
                         
                        NavigationLink(
                            destination: BreathInviteView(),
                            label: {
                                Text("Finished (xx) Rockets ")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 325, height: 30, alignment: .leading)
                                    .font(.system(size: 20))
                                    .padding(10)
                                    .background(Color(hue: 0.128, saturation: 0.086, brightness: 1.0))
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                   
                               
                            })
                     
                        
                        
                        
                        
                        Spacer()
                        .frame(height: 300)
           
                        
                        
                        
                        
                        
                        
                    }
                }
            }
        }

    }
}
                    struct MyStreaks_Previews : PreviewProvider {
                        static var previews: some View {
                            MyStreaks()
                        }
                    }
