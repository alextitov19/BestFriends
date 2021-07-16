//
//  PinView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/17/21.
//

import SwiftUI
import Amplify

struct PinView: View {
    
    //  @State var title: String = "Enter your PIN"
    @State var title: String = "To Restore Chat Messages, \nEnter your PIN"
    @State var currentPin: String = ""
    @State var color = Color(.white)
    @EnvironmentObject var sessionManager: SessionManager

    let room: Room
    
    var body: some View {
        ZStack {
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .font(.system(size: 25, weight: .light))
                    .foregroundColor(color)
                
                Spacer().frame(height: 85)
                
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
                
                Button("Return", action: {sessionManager.showRooms()})
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .light))
                    .padding(20)
            }
            
        }
    }
    
    private func numberEntered() {
        if currentPin.count == 4 {
            let userDataSource = UserDataSource()
            var user = userDataSource.getCurrentUser()
            
            if currentPin == user.secretPin {
                // passcode correct -> remove or add current room id to hidden room ids for the current user
                var rooms = user.hiddenRooms ?? []
                if rooms.contains(room.id) {
                    rooms.remove(at: rooms.firstIndex(of: room.id)!)
                    user.hiddenRooms = rooms
                    userDataSource.updateUser(user: user)
                    title = "Success"
                    color = Color(.green)
                    sessionManager.chat(room: room)
                }
                
                
                
            } else {
                title = "Wrong pin, try again"
                color = Color(.red)
                currentPin = ""
            }
        }
    }
}


struct PinView_Previews : PreviewProvider {
    static var previews: some View {
        PinView(room: Room(name: "", creatorID: "", blueMode: true))
    }
}
