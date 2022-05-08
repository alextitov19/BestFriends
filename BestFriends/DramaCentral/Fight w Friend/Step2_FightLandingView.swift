//
//  FightLandingView.swift
//  BestFriends
//
//  Created by Social Tech on 4/30/22.
//

import Foundation

import SwiftUI
import AVKit

struct Step2_FightLandingView: View {
    
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
                    
                    
                    Text("FIX THIS?")
                        .font(.system(size: 65))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.purple)
                        .kerning(10)
                    
                    
                    VStack {
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Text("Who are you fighting with?")
                            .font(.system(size: 25))
                            .italic()
                            .foregroundColor(.gray)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                        
                        
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
                                NavigationLink(
                                    destination: BreathInView(),
                                    label: {
                                        Text(friends[0].firstName + " " + String(friends[0].lastName.first!))
                                            .fontWeight(.bold)
                                            .frame(width: 100, height: 30)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 10))
                                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                            .cornerRadius(25)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    })
                            }
                            
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
                                .frame(height: 45)
                            
                        }
                        Text("Let them know you're \nready to talk")
                            .font(.system(size: 35))
                            .fontWeight(.light)
                            .foregroundColor(Color.purple)
                            .multilineTextAlignment(.center)
                        
                        VStack {
                            
                            NavigationLink(
                                destination: DramaMainView(),
                                label: {
                                    Text("INVITE via push notification")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        .frame(width: 275.0, height: 50)
                                        .font(.system(size: 20))
                                    
                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                    
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                }
                                
                            )}
                        VStack {
                            
                            
                            Spacer ()
                                .frame(height: 80)
                            
                            NavigationLink(
                                destination: Step3_BreathInviteView(),
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
    
}



struct FightLandingView_Previews : PreviewProvider {
    static var previews: some View {
        Step2_FightLandingView(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [])
    }
}


