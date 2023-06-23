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
                        
                        Text("Up-loading to PhotoPOP")
                            .font(.system(size: 30, weight: .light))
                            .foregroundColor(ColorManager .grey1)
//
//                        Spacer()
//                            .frame(height: 10)
                        
                        Text("1) Tap 'camera' or 'gallary' icon to upload NEW image")
                            .font(.system(size: 20, weight: .light))
                            .foregroundColor(ColorManager .grey2)
                        
                        Text("2) Delete OLD image")
                            .font(.system(size: 20, weight: .light))
                            .foregroundColor(ColorManager .grey2)
                        
                     
                        
                        Text("before uploading NEW image")
                            .font(.system(size: 20, weight: .light))
                            .foregroundColor(ColorManager .grey2)
                        
                        Spacer()
                            .frame(height: 60)
                        
                        Text("Alert Friend(s)")
                            .font(.system(size: 30, weight: .light))
                            .foregroundColor(ColorManager .grey1)
                        
                  
                    
                        
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
                    
                                        Spacer()
                                            .frame(height: 40)
                VStack {
                    
     
                    
                    Text("If get loading icon - exit page and return")
                        .font(.system(size: 20, weight: .light))
//                        .italic()
                        .foregroundColor(.red)
                    
                    Spacer()
                        .frame(height: 5)
                    
            
                    
            VStack {
                    
             
           
                    
                    
                
                
                
                }
                
            }
            
        }
        
    }
}
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends PhotoPOP", body: "\(user.firstName)  says 'shake' your iPhone", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Shake your phone!", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a photopop notification response code: ", response)
                    })
                    
                    RestApi.instance.createStreakLog(friendID: f.id)
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
