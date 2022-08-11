//
//  Sweetheart1.swift
//  BestFriends
//
//  Created by Social Tech on 7/16/22.
//



import Foundation
import Combine
import SwiftUI
import AVKit


struct Sweetheart1: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    let groups: [Group]
    
    @State private var customMessage = "Custom Message"
    @State private var colorChangeTap: String = ""
    @State private var noteTapped = false
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            
            
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
  
            VStack {
           

  
                Text("Facing the")
                    .font(.system(size: 20))
                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(ColorManager.grey1)
                
                Text("M U S I C")
                    .font(.system(size: 40))
                    .italic()
                    .fontWeight(.thin)
                    .foregroundColor(ColorManager.grey1)
                
                Text("- Please do NOT think flowers take the place of the 'Talk' \n- Look them straight in the eyes, or they will look right on through you! \n- Take responsibility \n- If you are just going to do it again - save them the heartache \n- Grow up or move on!")
                    .fontWeight(.thin)
                    .frame(width: 320, height: 210)
                    .foregroundColor(ColorManager.grey2)
                    .font(.system(size: 20))
                    .background(ColorManager.grey4)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    .opacity(0.65)
                
                
                
                
                
                
                
                
                
                
                HStack {
                    Text("ALERT")
                        .font(.system(size: 22))
                        .fontWeight(.regular)
                        .foregroundColor(ColorManager.grey1)
                    
                    Text("Ok, set a time to TALK")
                        .font(.system(size: 20))
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.leading)
                
                Spacer()
                    .frame(height: 15)
//
//                Text("[SAFETY TIP] If you sleep with someone else you un-repariably break their love & trust forever.")
////                    .font(.system(size: 17))
////                    .italic()
////                    .fontWeight(.thin)
////                    .foregroundColor(Color.white)
//                    .fontWeight(.light)
////                    .italic()
//                    .frame(width: 320, height: 75)
//                    .foregroundColor(ColorManager.grey2)
//                    .font(.system(size: 20))
//                    .background(ColorManager.grey4)
//                    .cornerRadius(15)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                    .opacity(0.65)
//
//
                
                
                
                HStack {
                    
                    
                    
//                MARK: The [All] button is not activated. When tap nothing comes up in the bottom output screen
                    if friends.count > 1 {
                        Button(action: {
                            
                        },
                               label: {
                            Text("select >")
                                .fontWeight(.thin)
//                                .fontWeight(.bold)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 20))
                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    }
                    if friends.count > 0 {
                        RectView(user: user, friend: friends[0], color: colors[0])
                            .onTapGesture(perform: {
                                if selectedFriends.contains(friends[0].id) {
                                    selectedFriends = selectedFriends.filter { $0 != friends[0].id }
                                    colors[0] = ColorManager.purple3
                                } else {
                                    selectedFriends.append(friends[0].id)
                                    colors[0] = ColorManager.purple5
                                }
                                print(selectedFriends)
                            })
                    }
                    
                    if friends.count > 1 {
                        RectView(user: user, friend: friends[1], color: colors[1])
                            .onTapGesture(perform: {
                                if selectedFriends.contains(friends[1].id) {
                                    selectedFriends = selectedFriends.filter { $0 != friends[1].id }
                                    colors[1] = ColorManager.purple3
                                } else {
                                    selectedFriends.append(friends[1].id)
                                    colors[1] = ColorManager.purple5
                                }
                                print(selectedFriends)
                            })
                    }
                }
                
                HStack {
                    if friends.count > 2 {
                        RectView(user: user, friend: friends[2], color: colors[2])
                            .onTapGesture(perform: {
                                if selectedFriends.contains(friends[2].id) {
                                    selectedFriends = selectedFriends.filter { $0 != friends[2].id }
                                    colors[2] = ColorManager.purple3
                                } else {
                                    selectedFriends.append(friends[2].id)
                                    colors[2] = ColorManager.purple5
                                }
                                print(selectedFriends)
                            })
                    }
                    
                    if friends.count > 3 {
                        RectView(user: user, friend: friends[3], color: colors[3])
                            .onTapGesture(perform: {
                                if selectedFriends.contains(friends[3].id) {
                                    selectedFriends = selectedFriends.filter { $0 != friends[3].id }
                                    colors[3] = ColorManager.purple3
                                } else {
                                    selectedFriends.append(friends[3].id)
                                    colors[3] = ColorManager.purple5
                                }
                                print(selectedFriends)
                            })
                    }
                    
                    if friends.count > 4 {
                        RectView(user: user, friend: friends[4], color: colors[4])
                            .onTapGesture(perform: {
                                if selectedFriends.contains(friends[4].id) {
                                    selectedFriends = selectedFriends.filter { $0 != friends[4].id }
                                    colors[4] = ColorManager.purple3
                                } else {
                                    selectedFriends.append(friends[4].id)
                                    colors[4] = ColorManager.purple5
                                }
                                print(selectedFriends)
                            })
                        
                    }
                }
                    
                VStack {
                    Spacer()
                        .frame(height: 20)
                
                    Button(action: {
                        shareButtonTapped()
                    },
                           label: {
                        Text("SHARE")
                            .fontWeight(.thin)
                            .frame(width: 100, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(shareColor)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            .alert("Push Notifications sent successfully", isPresented: $showingAlert) {
                                        Button("OK", role: .cancel) { }
                                    }
                    })
                    
                      Spacer ()
                    .frame(height: 15)
                
                Button(action: {
                    sessionManager.showLogin()
                },
                    label: {
                        Text("Home / Chat")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.grey2)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                    
                
                    
                    Spacer()
                    .frame(height: 55)
                }
                
                
            }


        }
    }
    
    func limitText(_ upper: Int) {
        if customMessage.count > upper {
            customMessage = String(customMessage.prefix(upper))
        }
    }
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) is asking if you would consider using a mediator to resolve your fight", APNToken: f.APNToken)
                }
            }
        }
        shareColor = ColorManager.darkGrey
        showingAlert = true
    }
    
    struct RectView: View {
        let user: User
        let friend: User
        let color: Color
        
        var body: some View {
            Text(friend.firstName + " " + String(friend.lastName.first!))
                .fontWeight(.bold)
                .frame(width: 100, height: 30)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.system(size: 10))
                .background(color)
                .cornerRadius(25)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        }
    }
    
    
}





