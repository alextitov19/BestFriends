//
//  HideMyRoom.swift
//  BestFriends
//
//  Created by Social Tech on 12/7/22.
//

import Foundation

import SwiftUI

struct HideMyRoom: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
//    let group: Group
    
    @State private var pin = ""
    @State private var errorString = ""
    
    var body: some View {
        ZStack {
           
            
            ColorManager.grey4
                .ignoresSafeArea()
            
            VStack {
               
                VStack
                {
                   
                    
                    Text(user.chatPin.count == 0 ? "Create 4 digit PIN" : "Enter your PIN")
                        .font(.title2)
                        .foregroundColor(.purple)
                        .fontWeight(.light)
                    
                    Text(errorString)
                        .font(.title3)
                        .foregroundColor(.red)
                        .fontWeight(.light)
                    
                    HStack
                    {
                        Button(action: {
                            onTap(n: 1)
                        }, label: {
                            ZStack
                            {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                
                                Text("1")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .fontWeight(.ultraLight)
                            }//1
                        })
                        .padding()
                        
                        Button(action: {
                            onTap(n: 2)
                        }, label: {
                            ZStack
                            {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                
                                Text("2")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .fontWeight(.ultraLight)
                            }//2
                        })
                        .padding()
                        
                        Button(action: {
                            onTap(n: 3)
                        }, label: {
                            ZStack
                            {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                
                                Text("3")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .fontWeight(.ultraLight)
                            }//1
                        })
                        .padding()
                        
                    }//1,2,3
                    
                    HStack
                    {
                        Button(action: {
                            onTap(n: 4)
                        }, label: {
                            ZStack
                            {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                
                                Text("4")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .fontWeight(.ultraLight)
                            }//1
                        })
                        .padding()
                        
                        Button(action: {
                            onTap(n: 5)
                        }, label: {
                            ZStack
                            {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                
                                Text("5")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .fontWeight(.ultraLight)
                            }//2
                        })
                        .padding()
                        
                        Button(action: {
                            onTap(n: 6)
                        }, label: {
                            ZStack
                            {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                
                                Text("6")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .fontWeight(.ultraLight)
                            }//1
                        })
                        .padding()
                        
                    }//1,2,3
                    
                    HStack
                    {
                        Button(action: {
                            onTap(n: 7)
                        }, label: {
                            ZStack
                            {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                
                                Text("7")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .fontWeight(.ultraLight)
                            }//1
                        })
                        .padding()
                        
                        Button(action: {
                            onTap(n: 8)
                        }, label: {
                            ZStack
                            {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                
                                Text("8")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .fontWeight(.ultraLight)
                            }//2
                        })
                        .padding()
                        
                        Button(action: {
                            onTap(n: 9)
                        }, label: {
                            ZStack
                            {
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundColor(ColorManager.purple3)
                                
                                Text("9")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .fontWeight(.ultraLight)
                            }//1
                            
                        
                        })
                        .padding()
                        
                    }//1,2,3
                }
                
                          Text("Your Room is Locked, \nrestore with secret PIN")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .fontWeight(.ultraLight)
                                .multilineTextAlignment (.center)
                                .padding()
                
                
                Spacer ()
                    .frame(height: 20)
                
                Button(action: {
                    sessionManager.showLogin()
                },
                    label: {
                        Text("Home")
                            .fontWeight(.thin)
                            .frame(width: 150, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                Spacer ()
                    .frame(height: 50)
                
            }
        }
    }
    
    private func onTap(n: Int) {
        pin.append(String(n))
        if pin.count == 4 {
            submitPin()
        }
    }
    
    private func submitPin() {
        if user.chatPin.count == 0 {
            // Create new chat pin
            let updatedUser = User(id: user.id, firstName: user.firstName, lastName: user.lastName, APNToken: user.APNToken, friends: user.friends, groups: user.groups, hiddenGroups: user.hiddenGroups, atmosphere: user.atmosphere, chatPin: pin, chatBackground: user.chatBackground, smileNotes: user.smileNotes, roomHidden: true)
            RestApi.instance.updateUser(user: updatedUser).then({ response in
                print("Got update response: ", response)
                sessionManager.showHome()
            })
        } else {
            // Check in pins are equal, unhide room
            if user.chatPin == pin {
                let updatedUser = User(id: user.id, firstName: user.firstName, lastName: user.lastName, APNToken: user.APNToken, friends: user.friends, groups: user.groups, hiddenGroups: user.hiddenGroups, atmosphere: user.atmosphere, chatPin: user.chatPin, chatBackground: user.chatBackground, smileNotes: user.smileNotes, roomHidden: false)
                RestApi.instance.updateUser(user: updatedUser).then({ response in
                    print("Got update response: ", response)
                    sessionManager.showHome()
                })
            } else {
                errorString = "Wrong pin"
                pin = ""
            }
        }
    }
}


//
//struct HideChatView_Previews : PreviewProvider {
//    static var previews: some View {
//        HideChatView()
//    }
//}

