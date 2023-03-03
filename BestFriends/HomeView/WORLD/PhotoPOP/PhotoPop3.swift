//
//  PhotoPop3.swift
//  BestFriends
//
//  Created by Social Tech on 10/10/22.
//


import Foundation
import SwiftUI
import ConfettiSwiftUI


struct PhotoPop3: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
 
    @State private var counter = 0
    @State private var shareTapped: Bool = false
    
//    @State private var mood: Int = -1
//    @State private var summary = ""
//    @State private var sharedWith: [String] = []
//    @State private var colorChangeTap: String = ""
  

    
    
    
    var body: some View {
        
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
           
            
            VStack{
         
                VStack {
                      
                 
                    Text("Up-loading to PhotoPOP:")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.green)
                    
                    Text("-Select friend, tap image from photo gallery")
                        .font(.system(size: 13, weight: .light))
                        .italic()
                        .foregroundColor(.white)
                    Spacer()
                        .frame(height: 20)
                    
              
                    
                    Text("Replacing image:")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.green)
                    
                    
                    Text("-Tap image, then exit & re-enter page")
                        .font(.system(size: 13, weight: .light))
                        .italic()
                        .foregroundColor(.white)
                    Text("* (can only have ONE 'active' image at a time)")
                        .italic()
                        .font(.system(size: 13, weight: .light))
                        .foregroundColor(Color .green)
                  
                    Spacer()
                        .frame(height: 60)
                    
                    Text("Who are you")
                        .font(.system(size: 35, weight: .ultraLight))
                        .foregroundColor(Color.white)
                    Text("sending picture to?")
                        .font(.system(size: 35, weight: .ultraLight))
                        .foregroundColor(Color.white)
                    
                  
                   
                    VStack {
                        

           
                        HStack {
//
//                            Text("select >")
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 20))
//                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            //                                })
                            
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
                        
                        Spacer()
                            .frame(height: 15)
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
                        
                        Spacer()
                            .frame(height: 20)
               
                        Button(action: {
                            counter += 1
                            shareTapped = true
                            shareButtonTapped()
                        },
                               label: {
                            Text("SHARE")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 30)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(shareColor)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                .alert("Image sent. \n\nWhen your friend shakes their phone they will see it full screen.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        })
 
                        .confettiCannon(counter: $counter)
                        
                        }

//                    Spacer()
//                        .frame(height: 150)
                    
                }
                
            }
            
        }
        
    }
    
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends PhotoPOP", body: "\(user.firstName) just posted a new pic to PhotoPOP - Shake your iPhone. Then send one back!", APNToken: f.APNToken)
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
            .frame(width: 90, height: 90)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .font(.system(size: 8))
            .background(color)
            .cornerRadius(75)
            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
    }
}
}
