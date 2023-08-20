//
//  INFOPreloadA.swift
//  BestFriends
//
//  Created by Social Tech on 12/16/22.
//



import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit

struct INFOPreloadA: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var counter = 0
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false


    
    var body: some View {
        
        ZStack {
          
            
            if shareTapped {
                
                ColorManager.grey4
                    .opacity(0.8)
                    .ignoresSafeArea()
              
                AdPlayerView(name: "dramaLights")
                    .ignoresSafeArea()
                    .blendMode(.screen)

            } else {
                
                
                
                ColorManager.grey4
                    .opacity(0.8)
                    .ignoresSafeArea()
             
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .opacity(0.99)

                //                Image("FHBackground")
                //                    .resizable()
                //                    .scaledToFill()
                //                    .edgesIgnoringSafeArea(.all)
                //                    .blendMode(.screen)
                
            }
            


            
            VStack{
                
                
                Text("Your Image")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
//                Text("One Friend")
//                    .font(.system(size: 20))
//                    .foregroundColor(Color.white)
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
                
                
                Text("Instantly POPs UP")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                Spacer()
                    .frame(height: 10)
                
                Text("(when your friend 'shakes' their iPhone)")
                    .font(.system(size: 20))
                    .italic()
                    .foregroundColor(ColorManager .grey1)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                
                
                
                
                ZStack {
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 475, height: 475)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.7)
                    VStack {
                        
                        Text("Friend having one of those days!")
                            .font(.system(size: 20))
                        
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("(shoot them a pic that will make them smile")
                            .font(.system(size: 13))
                            .italic()
                            .foregroundColor(Color.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                    
                        
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Text("New relationship - thinking about them \n for the k-zillionth time today!")
                            .font(.system(size: 20))
                        
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Text("(select 'Myself' - upload a pic of them!")
                            .font(.system(size: 13))
                            .italic()
                            .foregroundColor(Color.white)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                        
                        VStack {
                            Spacer()
                                .frame(height: 30)
                            
//                            Text("*   *   *")
//                                .font(.system(size: 20))
//                                .foregroundColor(Color.white)
//                                .fontWeight(.light)
//                                .multilineTextAlignment(.center)
                            
                            NavigationLink( destination:  CH5(user: user, friends: friends),
                                            label: {
                                Text("Please see PhotoPOP instructions")
                                    .fontWeight(.light)
                                    .frame(width: 310, height: 40)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 19))
                                    .background(Color.green)
                                    .glow(color: ColorManager.purple3, radius: 1)
                                    .shadow(color: .white, radius: 3, x: -4, y: 4)
            //                        .opacity(0.9)
                                    .cornerRadius(10)
                                    .shadow(color: Color.white, radius: 2, x: 0, y: 2)
                                
                            })
                            

                            Spacer()
                                .frame(height: 30)
                            
                            Text("OMG, can you believe this!")
                                .font(.system(size: 20))
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                            
                            Text("(yep, they want to see it - PhotoPOP it)")
                                .font(.system(size: 13))
                                .italic()
                                .foregroundColor(Color.white)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                         
                            
                            Spacer()
                                .frame(height: 30)
                            
                            Text("Or, just start a new conversation \nabout what's going on")
                                .font(.system(size: 20))
                            
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)
                        
                            
                        }
                    }
                    
                }
                VStack {
//
//                    Spacer()
//                        .frame(height: 25)
//                    Text("Wondering what your")
//                                            .font(.system(size: 40))
//
//                                            .foregroundColor(ColorManager .grey2)
//                                            .fontWeight(.thin)
//                                            .multilineTextAlignment(.center)
//
//                    Text("friends are doing?")
//                                            .font(.system(size: 40))
//
//                                            .foregroundColor(ColorManager .grey2)
//                                            .fontWeight(.thin)
//                                            .multilineTextAlignment(.center)
//
//                    Spacer()
//                        .frame(height: 50)
//
//                    Text("thumbs tired from texting")
//                                            .font(.system(size: 25))
//
//                                            .foregroundColor(ColorManager .grey1)
//                                            .fontWeight(.thin)
//                                            .multilineTextAlignment(.center)
//
//                    Spacer()
//                        .frame(height: 7)
//
//                    Text("Ask for a 'fresh' PhotoPoP!")
//                                            .font(.system(size: 30))
//
//                                            .foregroundColor(ColorManager .grey1)
//                                            .fontWeight(.thin)
//                                            .multilineTextAlignment(.center)
//
//
                    
                    
                    VStack {

                     
//
//
//                        HStack {
//
////                            Text("select >")
////                                .fontWeight(.thin)
////                                .frame(width: 100, height: 30)
////                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                                .font(.system(size: 20))
////                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
////                                .cornerRadius(25)
////                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            //                                })
//
//                            if friends.count > 0 {
//                                RectView(user: user, friend: friends[0], color: colors[0])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[0].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[0].id }
//                                            colors[0] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[0].id)
//                                            colors[0] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//
//                            if friends.count > 1 {
//                                RectView(user: user, friend: friends[1], color: colors[1])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[1].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[1].id }
//                                            colors[1] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[1].id)
//                                            colors[1] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//                        }
//
//                        Spacer()
//                            .frame(height: 15)
//                        HStack {
//                            if friends.count > 2 {
//                                RectView(user: user, friend: friends[2], color: colors[2])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[2].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[2].id }
//                                            colors[2] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[2].id)
//                                            colors[2] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//                            }
//
//                            if friends.count > 3 {
//                                RectView(user: user, friend: friends[3], color: colors[3])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[3].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[3].id }
//                                            colors[3] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[3].id)
//                                            colors[3] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//
//                            if friends.count > 4 {
//                                RectView(user: user, friend: friends[4], color: colors[4])
//                                    .onTapGesture(perform: {
//                                        if selectedFriends.contains(friends[4].id) {
//                                            selectedFriends = selectedFriends.filter { $0 != friends[4].id }
//                                            colors[4] = ColorManager.purple3
//                                        } else {
//                                            selectedFriends.append(friends[4].id)
//                                            colors[4] = ColorManager.purple5
//                                        }
//                                        print(selectedFriends)
//                                    })
//
//                            }
//                        }
//
//
//
//                        Spacer()
//                            .frame(height: 20)
//
//
//                        Button(action: {
//                            counter += 1
//                            shareTapped = true
//                            shareButtonTapped()
//                        },
//                               label: {
//                            Text("SHARE")
//
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 25))
//                                .background(shareColor)
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                .alert("we're asking your friend for a PhotoPOP", isPresented: $showingAlert) {
//                                    Button("OK", role: .cancel) { }
//                                }
//                        })
////                        .confettiCannon(counter: $counter)

                        
                        VStack {
                            
             
                            Spacer()
                                .frame(height: 160)
                           
                   
                        }
                 
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
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) is asking what you're doing. Send them a PhotoPOP.", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "What are you doing? Send PhotoPoP!", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a kiss notification response code: ", response)
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
