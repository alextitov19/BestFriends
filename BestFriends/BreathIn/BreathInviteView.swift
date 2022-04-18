//
//  BreathInviteView.swift
//  BestFriends
//
//  Created by Social Tech on 4/16/22.
//

import Foundation
import SwiftUI
import AVKit

struct BreathInviteView: View {
    var body: some View {
       
//     @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

        NavigationView {
        
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("blueBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .onAppear {
//                        getHomeData()
                    }
                
                // Stars animation...
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
//                    .onTapGesture(perform: backgroundTapped)
//
                
                VStack {
                  
               HStack {
                       Button(action: {
//                           self.presentationMode.wrappedValue.dismiss()
                       }) {
                           Image("arrowRight")
                                .resizable()
                              .frame(width: 25, height: 25)
                               .scaledToFit()
                             
                               .foregroundColor(.white)
                              .colorInvert()
                                .rotationEffect(Angle(degrees: 180))
                       }

                       Spacer()

                       Text("C a l m i n g")
                            .font(.system(size: 30))
                            .offset(x: -25, y: 50);
                   Spacer()
                 }



                    Text("C a l m i n g")
                        .font(.system(size: 45, weight: .bold))
                        .foregroundColor(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Text("breaths")
                        .font(.system(size: 35, weight: .bold))
                        .foregroundColor(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 15)

                    
                    Text("Taking a much needed breather")
                        .font(.system(size: 20, weight: .bold))
                        .italic()
                        
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                 
                    Spacer()
                        .frame(height: 50)
             
                    VStack {
                    NavigationLink(
                        destination: BreathInView(),
                        label: {
                            Text("Take a breather alone")
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                 
                    Spacer()
                        .frame(height: 60)
                    
                    Text(". . . or, take a breather with a friend")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .italic()
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
                                        .frame(height: 80)
                                   
                        }
                            
                                    VStack {
                                         
//                                                NavigationLink(
//                                                    destination: FriendVaultView(),
//                                                    label: {
//                                                        Text("<")
//                                                            .frame(width: 25, height: 50)
//                                                           .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                                           .font(.system(size: 30))
////
                                                        
                                                        NavigationLink(
                                                            destination: BreathInView(),
                                                            label: {
                                                                Text("SHARE")
                                                                    .fontWeight(.semibold)
                                                                    .foregroundColor(Color.white)
                                                                    .frame(width: 350.0, height: 50)
                                                                   .font(.system(size: 20))
                           
                      .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                 
                                                                                    .cornerRadius(15)
                                                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                                
                                                        
                                                  }
                                                
                                                
                                           ) }
                                            
                                
                            
                        }
                    }
                }
            }
//            .padding(10)
            .navigationBarHidden(true)
        }
    }


    
    
    
struct BreathInviteView_Previews : PreviewProvider {
    static var previews: some View {
        BreathInviteView()
    }
}

    
