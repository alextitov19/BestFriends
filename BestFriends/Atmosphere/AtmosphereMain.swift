//
//  AtmosphereMain.swift
//  BestFriends
//
//  Created by Social Tech on 5/12/22.
//

import Foundation

import SwiftUI
import AVKit

struct AtmosphereMain: View {
    
    let user: User
    let friends: [User]
    
    var body: some View {
        
        ZStack {
            
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
            
            
            //
            VStack{
                HStack {
                }
                
                VStack {
                    
                    Text("Ready to")
                        .font(.system(size: 50))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.purple)
                    
                    
                    Text("BEGIN?")
                        .font(.system(size: 60))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.purple)
                        .kerning(10)
                    
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("By tapping their name you're \nsending a push notification")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(.gray)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                        Spacer()
                            .frame(height: 20)
                        
                        Text("asking them to try to \nfix this fight in BlueMode.")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(.gray)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                        Spacer()
                            .frame(height: 60)
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
                        
                        Spacer()
                            .frame(height: 40)
                        
                        
                        Text("Tip")
                            .font(.system(size: 27))
                            .fontWeight(.light)
                            .foregroundColor(Color.green)
                            .multilineTextAlignment(.center)
                        
                        Text("If they fail to respond they \nmost likely need more time - stay calm.")
                            .font(.system(size: 20))
                            .italic()
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        VStack {
                            
                            
                            Spacer ()
                                .frame(height: 20)
                            
                            NavigationLink(
                                destination: Step3_BreathInviteView(user: user, friends: friends),
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
        
    }
    
    private struct RectView: View {
        let user: User
        let friend: User
        
        var body: some View {
            Button(action: {
                RestApi.instance.sendPushNotification(title: "BlueMode", body: "\(user.firstName) invited you to BlueMode!", APNToken: friend.APNToken ?? "").then { response in
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





struct AtmosphereMain_Previews : PreviewProvider {
    static var previews: some View {
        AtmosphereMain(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [])
    }
}


