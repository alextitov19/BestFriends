//
//  DramaCentralView.swift
//  BestFriends
//
//  Created by Social Tech on 4/29/22.
//

import Foundation

import SwiftUI
import AVKit

struct DramaCentralView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("purpleBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .onAppear {
                 
                     
                    }
                
                // Stars animation...
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                
//                VStack {
//                    HStack {
//                        Button(action: {
//                            self.presentationMode.wrappedValue.dismiss()
//                        }) {
//
//
//
//                            NavigationLink(
//                                destination: MasterFriendVault(),
//                                label: {
//                                    Text("<")
//                                        .foregroundColor(.white)
//                                        .frame(width: 50, height: 30)
//                                        .font(.system(size: 30))
//                                        .multilineTextAlignment(.leading)
//                                    Spacer()
//                                        .frame(width: 250)
//
//
////                                    NavigationLink(
////                                        destination: HomeView(),
////                                        label: {
//                                    Image("home-alt2")
//                                        .resizable()
//                                        .frame(width: 35, height: 35)
//                                        .scaledToFit()
//                                        .foregroundColor(.white)
//                                })
//                            }
//                        }
//
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
                                        Text("Invite to 'Fix-a-Fight'")
                                            .fontWeight(.thin)
                                            .frame(width: 325, height: 50)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 30))
                                            .background(ColorManager.purple3)
                                        //                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                            .cornerRadius(15)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    })
                                
                                Spacer()
                                    .frame(height: 160)
                                
                                Text("Invite to 'FIX-a-FIGHT'")
                                    .font(.system(size: 25, weight: .bold))
                                    .italic()
                                    .foregroundColor(.gray)
                                    .fontWeight(.semibold)
                                
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 0)
                                
                                Spacer()
                                    .frame(height: 20)
                            }
                            
                            
                            VStack {
                                HStack {
                                    NavigationLink(
                                        destination: BreathInView(),
                                        label: {
                                            Text("Too Soon")
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
                                        .frame(height: 25)
                                    
                                }
                                
                                VStack {
                                    
                                    NavigationLink(
                                        destination: DramaMainView(),
                                        label: {
                                            Text("Send Push Notification")
                                                .fontWeight(.semibold)
                                                .foregroundColor(Color.white)
                                                .frame(width: 275.0, height: 50)
                                                .font(.system(size: 20))
                                            
                                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                            
                                                .cornerRadius(25)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            
                                            
                                        }
                                        
                                    )}
                            }
                            
                        }
                    }
                    
                }
                
            }
            
        }
    }
    



struct DramaCentralView_Previews : PreviewProvider {
    static var previews: some View {
        DramaCentralView()
    }
}




