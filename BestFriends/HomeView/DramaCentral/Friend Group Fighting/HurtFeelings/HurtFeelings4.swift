//
//  HurtFeelings4.swift
//  BestFriends
//
//  Created by Social Tech on 7/9/22.
//

//
//import Foundation
//import Combine
//import SwiftUI
//import AVKit
//
//
//struct HurtFeelings4: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    let user: User
//    let friends: [User]
//    let groups: [Group]
//
//    @State private var customMessage = "Custom Message"
//    @State private var colorChangeTap: String = ""
//    @State private var noteTapped = false
//    @State private var selectedFriends: [String] = []
//    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
//    @State private var shareColor = ColorManager.purple5
//    @State private var showingAlert = false
//
//
//    var body: some View {
//        ZStack {
//
//
//            ColorManager .purple5
//                .ignoresSafeArea()
//
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//
//            VStack {
//
//
//                Spacer()
//                    .frame(height: 20)
//
//                VStack {
//                    Text("It's been")
//                        .font(.system(size: 30))
//                    //                        .italic()
//                        .foregroundColor(ColorManager .grey2)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//                    Text("bugging you all week")
//                        .font(.system(size: 35))
//                    //                        .italic()
//                        .foregroundColor(ColorManager .grey2)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//
//
//                    Spacer()
//                        .frame(height: 20)
//
//                    VStack {
//
//                        Text("But, maybe you're just a")
//                            .font(.system(size: 17))
//                            .foregroundColor(ColorManager .grey1)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//
//                        Text("little nervious to say something")
//                            .font(.system(size: 17))
//                            .foregroundColor(ColorManager .grey1)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//
//
//                        Spacer()
//                            .frame(height: 40)
//
//
//
//                    }

//                    HStack {
//
//                        //                MARK: The [All] button is not activated. When tap nothing comes up in the bottom output screen
//                        if friends.count > 1 {
//                            Button(action: {
//
//                            },
//                                   label: {
//                                //                                Text("select >")
//                                //                                    .fontWeight(.thin)
//                                //                                //                                .fontWeight(.bold)
//                                //                                    .frame(width: 100, height: 30)
//                                //                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                //                                    .font(.system(size: 20))
//                                //                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                //                                    .cornerRadius(25)
//                                //                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            })
//                        }
//                        if friends.count > 0 {
//                            RectView(user: user, friend: friends[0], color: colors[0])
//                                .onTapGesture(perform: {
//                                    if selectedFriends.contains(friends[0].id) {
//                                        selectedFriends = selectedFriends.filter { $0 != friends[0].id }
//                                        colors[0] = ColorManager.purple3
//                                    } else {
//                                        selectedFriends.append(friends[0].id)
//                                        colors[0] = ColorManager.purple5
//                                    }
//                                    print(selectedFriends)
//                                })
//                        }
//
//                        if friends.count > 1 {
//                            RectView(user: user, friend: friends[1], color: colors[1])
//                                .onTapGesture(perform: {
//                                    if selectedFriends.contains(friends[1].id) {
//                                        selectedFriends = selectedFriends.filter { $0 != friends[1].id }
//                                        colors[1] = ColorManager.purple3
//                                    } else {
//                                        selectedFriends.append(friends[1].id)
//                                        colors[1] = ColorManager.purple5
//                                    }
//                                    print(selectedFriends)
//                                })
//                        }
//                    }
//                }
//                Spacer()
//                    .frame(height: 15)
//
//
//                HStack {
//                    if friends.count > 2 {
//                        RectView(user: user, friend: friends[2], color: colors[2])
//                            .onTapGesture(perform: {
//                                if selectedFriends.contains(friends[2].id) {
//                                    selectedFriends = selectedFriends.filter { $0 != friends[2].id }
//                                    colors[2] = ColorManager.purple3
//                                } else {
//                                    selectedFriends.append(friends[2].id)
//                                    colors[2] = ColorManager.purple5
//                                }
//                                print(selectedFriends)
//                            })
//                    }
//
//                    if friends.count > 3 {
//                        RectView(user: user, friend: friends[3], color: colors[3])
//                            .onTapGesture(perform: {
//                                if selectedFriends.contains(friends[3].id) {
//                                    selectedFriends = selectedFriends.filter { $0 != friends[3].id }
//                                    colors[3] = ColorManager.purple3
//                                } else {
//                                    selectedFriends.append(friends[3].id)
//                                    colors[3] = ColorManager.purple5
//                                }
//                                print(selectedFriends)
//                            })
//                    }
//
//                    if friends.count > 4 {
//                        RectView(user: user, friend: friends[4], color: colors[4])
//                            .onTapGesture(perform: {
//                                if selectedFriends.contains(friends[4].id) {
//                                    selectedFriends = selectedFriends.filter { $0 != friends[4].id }
//                                    colors[4] = ColorManager.purple3
//                                } else {
//                                    selectedFriends.append(friends[4].id)
//                                    colors[4] = ColorManager.purple5
//                                }
//                                print(selectedFriends)
//                            })
//                    }
//
//
//                }
//
//
//
//                VStack {
//
//                    //                        Spacer()
//                    //                            .frame(height: 10)
//                    //                        Text("And the Best Part;")
//                    //                            .font(.system(size: 15))
//                    //                            .italic()
//                    //                            .foregroundColor(Color .black)
//                    //                            .fontWeight(.light)
//                    //                            .multilineTextAlignment(.center)
//                    //
//                    //                        Text("we'll say it for you in a push notification")
//                    //                            .font(.system(size: 15))
//                    //                            .italic()
//                    //                            .foregroundColor(Color .black)
//                    //                            .fontWeight(.light)
//                    //                            .multilineTextAlignment(.center)
//
//                    Spacer()
//                        .frame(height: 30)
//
//                    Button(action: {
//                        shareButtonTapped()
//                    },
//                           label: {
//                        Text("SHARE")
//                            .fontWeight(.thin)
//                            .frame(width: 100, height: 30)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 25))
//                            .background(shareColor)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            .alert("You got this! \n\nSometimes something so simple is so hard!", isPresented: $showingAlert) {
//                                Button("OK", role: .cancel) { }
//                            }
//
//                    })
//
//
//
//
//                    Button(action: {
//                        sessionManager.showLogin()
//                    },
//                           label: {
//                        Image("home-alt2")
//                            .frame(width: 50, height: 25)
//                            .foregroundColor(.white)
//                            .font(.system(size: 20))
//                            .background(Color .black)
//                            .cornerRadius(15)
//                            .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
//                            .opacity(0.70)
//
//                    })
//
//                    Spacer()
//                        .frame(height: 30)
//
//
//                    Text("We can help you")
//                        .font(.system(size: 30))
//                        .italic()
//                        .foregroundColor(ColorManager .grey2)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//                    Text("send a message")
//                        .font(.system(size: 30))
//                        .italic()
//                        .foregroundColor(ColorManager .grey2)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//

//                        Spacer()
//                            .frame(height: 20)
//
//                        Text("Every Sunday at 8pm EDT join teens everywhere ")
//                            .font(.system(size: 17))
//                            .italic()
//                            .foregroundColor(ColorManager .grey2)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//
//
//                        Text("asking their friends to talk about it, ")
//                            .font(.system(size: 17))
//                            .italic()
//                            .foregroundColor(ColorManager .grey2)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//
//
//                        Text("now you're no longer alone!")
//                            .font(.system(size: 17))
//                            .italic()
//                            .foregroundColor(ColorManager .grey2)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)

//
//
//                    }
//
//                }
//
//
//            }
//
//
//        }
//
//        func limitText(_ upper: Int) {
//            if customMessage.count > upper {
//                customMessage = String(customMessage.prefix(upper))
//            }
//        }
//
//        func shareButtonTapped() {
//            if selectedFriends.count == 0 { return }
//            for id in selectedFriends {
//                for f in friends {
//                    if f.id == id {
//                        RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName): You hurt my feelings. Can we talk?", APNToken: f.APNToken)
//                    }
//                }
//            }
//            shareColor = ColorManager.darkGrey
//            showingAlert = true
//        }
//
//        struct RectView: View {
//            let user: User
//            let friend: User
//            let color: Color
//
//            var body: some View {
//                Text(friend.firstName + " " + String(friend.lastName.first!))
//                    .fontWeight(.bold)
//                    .frame(width: 90, height: 90)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 8))
//                    .background(color)
//                    .cornerRadius(75)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//            }
//        }
//
//
//
//
//        func defaultMessageButtonTapped(defaultMessage: String) {
//            self.colorChangeTap = defaultMessage
//        }
//
//
//
//    }
//






import Foundation
import SwiftUI
import ConfettiSwiftUI
import AVKit

struct HurtFeelings4: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
//    let user: User
//    let friends: [User]
    
    let user: User
     let friends: [User]
     let groups: [Group]
    
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
                
                
                
                            ColorManager.purple5
                                .ignoresSafeArea()
                                .onAppear()

                AdPlayerView(name: "sky2")
                    .opacity(0.5)
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {

                ColorManager.purple7
                    .opacity(0.5)
                    .ignoresSafeArea()
                    .onAppear()

    AdPlayerView(name: "sky2")
        .ignoresSafeArea()
        .blendMode(.screen)
                
                
            }
            
            VStack{
                
                HStack {
                    VStack {
                   
                        
                        
                        Spacer()
                            .frame(height: 10)
                        
                        ZStack {
                            
//                                Image("KissesHeart")
//                                    .resizable()
//                                    .frame(width: 400, height: 325)
//                                    .opacity(0.15)
                                
                                
                            VStack {
                                
                                
                                    Text("It's been")
                                        .font(.system(size: 30))
                                    //                        .italic()
                                        .foregroundColor(ColorManager .grey2)
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)

                                    Text("bugging you all week")
                                        .font(.system(size: 35))
                                    //                        .italic()
                                        .foregroundColor(ColorManager .grey2)
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.center)



                                    Spacer()
                                        .frame(height: 20)

                                    VStack {

                                        Text("But, maybe you're just a")
                                            .font(.system(size: 17))
                                            .foregroundColor(ColorManager .grey1)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)

                                        Text("little nervious to say something")
                                            .font(.system(size: 17))
                                            .foregroundColor(ColorManager .grey1)
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.center)


                                        Spacer()
                                            .frame(height: 40)



                                    }

                            }
                        }
                      
                        
                    }
                    
//                    Image("BalloonGuy")
//                        .resizable()
//                        .frame(width: 200, height: 200)
                }
             
         
                VStack {
//
//                    Text("Jump up on a chair,")
//                                            .font(.system(size: 23))
//
//                                            .foregroundColor(ColorManager .grey2)
//                                            .fontWeight(.thin)
//                                            .multilineTextAlignment(.center)
//                    Text("then blow your kiss high up into ")
//                                            .font(.system(size: 23))
//
//                                            .foregroundColor(ColorManager .grey2)
//                                            .fontWeight(.thin)
//                                            .multilineTextAlignment(.center)
//
//                    Text("the atmosphere towards your friend")
//                                            .font(.system(size: 23))
//
//                                            .foregroundColor(ColorManager .grey2)
//                                            .fontWeight(.thin)
//                                            .multilineTextAlignment(.center)
                    VStack {

                        Spacer()
                            .frame(height: 25)
                        
                        
                        HStack {
                      
//                            Text("select >")
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 20))
//                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //                                })
                            
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
                                .cornerRadius(25)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                .alert("Your friend just got a push notification asking them talk about how you hurt their feelings.", isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        })
//                        .confettiCannon(counter: $counter)

                        
                        VStack {
                            
                            
                                 Button(action: {
                                     sessionManager.showLogin()
                                 },
                                     label: {
                                     Image("home-alt2")
                                         .frame(width: 50, height: 25)
                                         .foregroundColor(.white)
                                         .font(.system(size: 20))
                                         .background(Color .black)
                                         .cornerRadius(15)
                                         .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                         .opacity(0.70)
                                     
                                 })
                            
                            
                            Spacer()
                                .frame(height: 30)


                            Text("We can help you")
                                .font(.system(size: 30))
                                .italic()
                                .foregroundColor(ColorManager .grey2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)

                            Text("send a message")
                                .font(.system(size: 30))
                                .italic()
                                .foregroundColor(ColorManager .grey2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)

                            Spacer()
                                .frame(height: 20)

                            Text("Every Sunday at 8pm EDT join teens everywhere ")
                                .font(.system(size: 17))
                                .italic()
                                .foregroundColor(ColorManager .grey2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)


                            Text("asking their friends to talk about it, ")
                                .font(.system(size: 17))
                                .italic()
                                .foregroundColor(ColorManager .grey2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)


                            Text("now you're no longer alone!")
                                .font(.system(size: 17))
                                .italic()
                                .foregroundColor(ColorManager .grey2)
                                .fontWeight(.light)
                                .multilineTextAlignment(.center)


                            
                            
                            
                            
                            Spacer()
                                .frame(height: 80)
                            
                            
//                            Image("KissesHeart")
//                                .resizable()
//                                .frame(width: 200, height: 150)
//                                .opacity(0.5)
                   
                        }
                        
                     
                        
                        }
                    
//
//
//

                    
                }
                
            }
            
        }
        
    }
    
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) feelings were hurt. They want to know if you can talk.", APNToken: f.APNToken)
                    
                    //MARK: The code below creates an in-app notification for your friend (f.id)
                    //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                    RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "You hurt their feelings, they want to talk.", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                        print("Create a hurt feelings notification response code: ", response)
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
