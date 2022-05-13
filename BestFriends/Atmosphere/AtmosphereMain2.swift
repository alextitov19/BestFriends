//
//  AtmosphereMain2.swift
//  BestFriends
//
//  Created by Social Tech on 5/12/22.
//


import Foundation
import SwiftUI


struct AtmosphereMain2: View {
    
    let user: User
    let friends: [User]
    
    @State private var feelings: [String] = []
    @State private var reason = ""
    
    var body: some View {
        ZStack {

            ColorManager.purple2
                .ignoresSafeArea()
                .onAppear()
//                .onAppear(perform: initLoadData)
            
            VStack {
                HStack {
                    Text("Today I'm Feeling ...")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                HStack {
                    Text("(Select your current mood)")
                        .font(.system(size: 15))
                        .italic()
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                
                HStack {
                    VStack {
                        Button(action: {
                            feelingsButtonTapped(feeling: "upset")
                        }) {
                            
                            Text("Upset")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("upset") ? Color.blue : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            feelingsButtonTapped(feeling: "stressed")
                        }) {
                            
                            Text("Stressed")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("stressed") ? Color.blue : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            feelingsButtonTapped(feeling: "sad")
                        }) {
                            
                            Text("Sad")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("sad") ? Color.blue : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            feelingsButtonTapped(feeling: "lonely")
                        }) {
                            
                            Text("Lonely")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("lonely") ? Color.blue : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                    }
                    
                    Spacer()
                        .frame(width: 40)
                    
                    VStack {
                        Button(action: {
                            feelingsButtonTapped(feeling: "okay")
                        }) {
                            
                            Text("Okay")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("okay") ? Color.green : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            feelingsButtonTapped(feeling: "bored")
                        }) {
                            
                            Text("Bored")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("bored") ? Color.orange : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        
                    }
                    
                    Spacer()
                        .frame(width: 40)
                    
                    VStack {
                        
                        Button(action: {
                            feelingsButtonTapped(feeling: "happy")
                        }) {
                            
                            Text("Happy")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("happy") ? Color.yellow : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            feelingsButtonTapped(feeling: "excited")
                        }) {
                            
                            Text("Excited")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("excited") ? Color.yellow : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            feelingsButtonTapped(feeling: "powerful")
                        }) {
                            
                            Text("Powerful")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("powerful") ? Color.yellow : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            feelingsButtonTapped(feeling: "carefree")
                        }) {
                            
                            Text("Carefree")
                                .font(.system(size: 17))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: 80, height: 30, alignment: .center)
                        .background(feelings.contains("carefree") ? Color.yellow : Color.gray)
                        .cornerRadius(7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        
                        
                    }
                }
                
                
                
                // MARK: End of feeling buttons
                HStack {
                    Text("Why?")
                        .font(.system(size: 30))
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .padding()
                
                TextField("If you want; type your reason here", text: $reason)
                    .padding(.horizontal)
                
                
                HStack {
                    Text("I want to tell ...")
                        .font(.system(size: 30))
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                    
                    
                    Spacer()
                }
                .padding()
                
                HStack {
                    if friends.count > 1 {
                        Button(action: {
                            
                        },
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
                    }
                    if friends.count > 0 {
                        RectView(user: user, friend: friends[0])
                    }
                    
                    if friends.count > 1 {
                        RectView(user: user, friend: friends[1])
                    }
                }
                
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
                
                Button(action: {},
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
                .padding()
                
                Spacer()
            }
        }
    }
    
    private struct RectView: View {
        let user: User
        let friend: User
        
        var body: some View {
            Button(action: {
                RestApi.instance.sendPushNotification(title: "BestFriends - Atmosphere", body: "\(user.firstName) Just changed thier Temperament!", APNToken: friend.APNToken ?? "").then { response in
                    print("Got send APN repsonse: ", response)
//                RestApi.instance.sendPushNotification(title: "BlueMode", body: "\(user.firstName) invited you to BlueMode!", APNToken: friend.APNToken ?? "").then { response in
//                    print("Got send APN repsonse: ", response)
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
    
    private func feelingsButtonTapped(feeling: String) {
        if feelings.contains(feeling) {
            if let index = feelings.firstIndex(of: feeling) {
                feelings.remove(at: index)
            }
        } else {
            feelings.append(feeling)
        }
    }
}







struct AtmosphereMain2_Previews : PreviewProvider {
    
    static var previews: some View {
        AtmosphereMain2(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [])
        
    }
}



