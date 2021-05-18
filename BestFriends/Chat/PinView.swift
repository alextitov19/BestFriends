//
//  PinView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/17/21.
//

import SwiftUI
import Amplify

struct PinView: View {
    
    @State var title: String = "Enter your pin"
    @State var currentPin: String = ""
    
    var roomID: String
    
    init(roomID: String) {
        self.roomID = roomID
    }
    
    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        
            VStack {
            
                Text(title)
                    .font(.system(size: 40).bold())
                    .foregroundColor(.white)
                
                Spacer().frame(height: 100)
                    
                HStack {
                    Button(action: {
                        currentPin.append("7")
                        numberEntered()
                    }) {
                        Text("7")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: {
                        currentPin.append("8")
                        numberEntered()
                    }) {
                        Text("8")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: {
                        currentPin.append("9")
                        numberEntered()
                    }) {
                        Text("9")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                }
                
                Spacer().frame(height: 20)
                
                HStack {
                    Button(action: {
                        currentPin.append("4")
                        numberEntered()
                    }) {
                        Text("4")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: {
                        currentPin.append("5")
                        numberEntered()
                    }) {
                        Text("5")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: {
                        currentPin.append("6")
                        numberEntered()
                    }) {
                        Text("6")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                }
                
                Spacer().frame(height: 20)
                
                HStack {
                    Button(action: {
                        currentPin.append("1")
                        numberEntered()
                    }) {
                        Text("1")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: {
                        currentPin.append("2")
                        numberEntered()
                    }) {
                        Text("2")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                    
                    Spacer().frame(width: 20)
                    
                    Button(action: {
                        currentPin.append("3")
                        numberEntered()
                    }) {
                        Text("3")
                           .frame(width: 100, height: 100)
                           .foregroundColor(Color.white)
                           .background(Color.clear)
                           .clipShape(Circle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 85)
                                    .stroke(Color.white, lineWidth: 2)
                            )
                    }
                }
                
                Spacer().frame(height: 20)
                
                Button(action: {
                    currentPin.append("0")
                    numberEntered()
                }) {
                    Text("0")
                       .frame(width: 100, height: 100)
                       .foregroundColor(Color.white)
                       .background(Color.clear)
                       .clipShape(Circle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 85)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
            }
            
        }
    }
    
    private func numberEntered() {
        if currentPin.count == 4 {
            let userDataSource = UserDataSource()
            
            guard let userID = Amplify.Auth.getCurrentUser()?.username else {return}
            var user = userDataSource.getUser(id: userID)
            
            if currentPin == user.secretPin {
                // passcode correct -> remove or add current room id to hidden room ids for the current user
                var rooms = user.hiddenRooms ?? []
                if rooms.contains(roomID) {
                    rooms.remove(at: rooms.firstIndex(of: roomID)!)
                } else {
                    rooms.append(roomID)
                }
                
                user.hiddenRooms = rooms
                userDataSource.updateUser(user: user)
                
            } else {
                title = "Wrong pin"
                currentPin = ""
            }
        }
    }
}


struct PinView_Previews : PreviewProvider {
    static var previews: some View {
        PinView(roomID: "")
    }
}
