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
    
    let user: User
    let friends: [User]
    
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
                        .font(.system(size: 47, weight: .ultraLight))
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
                                    Text("ALL")
                                        .fontWeight(.bold)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 15))
                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                        .cornerRadius(25)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            
                            if friends.count > 0 {
                                RectView(user: user, friend: friends[0])
                            }
                            
                            if friends.count > 1 {
                                RectView(user: user, friend: friends[1])
                            }
                        }
                     
                        Spacer()
                            .frame(height: 35)
                        HStack {
                            if friends.count > 2 {
                                RectView(user: user, friend: friends[2])
                            }
                            
                            if friends.count > 3 {
                                RectView(user: user, friend: friends[3])
                            }
                            
                            if friends.count > 4 {
                                RectView(user: user, friend: friends[4])
                            }
                        }
                        
                        VStack {
                            
                            NavigationLink(
                                destination: EmptyView(),
                                label: {
                                    Text("Invite")
                                        .fontWeight(.thin)
                                        .font(.system(size: 30))
                                        .foregroundColor(Color.white)
                                        .frame(width: 160, height: 40)
                                        .font(.system(size: 30))
                                    
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
                                Text("NEXT")
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
    
    private struct RectView: View {
        let user: User
        let friend: User
        
        var body: some View {
            Button(action: {
                RestApi.instance.sendPushNotification(title: "Take a breath", body: "\(user.firstName) invited you to take a breath with them!", APNToken: friend.APNToken ?? "").then { response in
                    print("Got send APN repsonse: ", response)
                }
            },
                   label: {
                Text(friend.firstName + " " + String(friend.lastName.first!))
                    .fontWeight(.bold)
                    .frame(width: 100, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 10))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            })
        }
    }
}



//struct Step3_BreathInviteView_Previews : PreviewProvider {
//    static var previews: some View {
//        Step3_BreathInviteView()
//    }
//}


