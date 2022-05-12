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
                    
                    Text("Today I'm Feeling ...")
                        .font(.system(size: 23))
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 160.0)
                    
                    Text("(Select your current mood)")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 160.0)
              
                    
//                    I just put in a image of what is supposed to look like in this section.
//                    Do we use 'buttons' or Navigation link, I am thinking buttons
//                    when you tap the mood button it will change color. I does not take the user anywhere.
                    
                    
                    Image("atmosphereTop")
                    
                    
                 
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Text("Why?")
                        .font(.system(size: 23))
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 290.0)
                    
                    Text("(You may type your reason here)")
                        .font(.system(size: 15))
                        .italic()
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 125.0)
                    
                    
//               We need a text box here like in Chat
                    
//                    When the push notification goes out to the users they selected below and hit [Share] when the user that received the push notification taps it it goes to another page where they can send 'hug' back, etc.
                    
                    
                    VStack {
                        Spacer()
                            .frame(height: 235)
                 
                    }
                    
                    
                    VStack {
                        
                        Text("I want to tell ...")
                            .font(.system(size: 23))
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, 230.0)
                        
                        Spacer()
                            .frame(height: 20)
                        
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
                            .frame(height: 100)
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
                            
                            
                            Spacer ()
                                .frame(height: 20)
                            
                            NavigationLink(
                                destination: Step3_BreathInviteView(user: user, friends: friends),
                                label: {
                                    Text("SHARE")
                                        .fontWeight(.thin)
                                        .frame(width: 110, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 30))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                    
                                })
                            
                            Spacer ()
                                .frame(height: 0)
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


