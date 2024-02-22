//
//  RRLoveTarts3.swift
//  BestFriends
//
//  Created by Social Tech on 12/25/23.
//


//
//import Foundation
//import SwiftUI
//import ConfettiSwiftUI
//import AVKit
//import Combine
//
//
//struct RRLoveTarts3: View {
//    
//    @EnvironmentObject var sessionManager: SessionManager
//    
//    let user: User
//    let friend: User
//    let friends: [User]
//    let groups: [Group]
//    let atmosphere: Atmosphere
//    let friendAtmospheres: [Atmosphere]
// 
//    
////   let atmosphere: Atmosphere
////   let friendAtmospheres: [Atmosphere]
// 
//    
//    @State private var selectedFriends: [String] = []
//    @State private var colors: [Color] = [ColorManager.grey2, ColorManager.grey2, ColorManager.grey2, ColorManager.grey2, ColorManager.grey2]
//    @State private var shareColor = ColorManager.purple5
//    @State private var showingAlert = false
//    
//    @State private var counter = 0
//    
//    @State private var mood: Int = -1
//    @State private var summary = ""
//    @State private var sharedWith: [String] = []
//    @State private var colorChangeTap: String = ""
//    @State private var shareTapped: Bool = false
//    
//    
//    @State private var customMessage = ""
//    
//    @State private var showingHeart = true;
//    
//    
//    private func limitText(_ upper: Int) {
//        if customMessage.count > upper {
//            customMessage = String(customMessage.prefix(upper))
//        }
//    }
//    private func sendMessage() {
//        if customMessage.count == 0 { return }
//        
//        //        let arr = [user.id, friend.id]
//        if selectedFriends.count == 0 {return}
//        
//        customMessage = "Love Tart; " + user.firstName + " : " + customMessage;
//        
//        for friendID in selectedFriends {
//            let arr = [user.id, friendID]
//            var found = false;
//            for g in groups {
//                if g.members.containsSameElements(as: arr) {
//                    // Send chat message to this existing group
//                    RestApi.instance.createChatMessage(groupId: g.id, body: customMessage).then({ response in
//                        sessionManager.showChat(user: user, group: g)
//                    })
//                    found = true;
//                    break;
//                }
//            }
//            
//            // Create new group
//            if found == false {
//                for f in friends {
//                    if f.id == friendID {
//                        RestApi.instance.createGroup(name: "\(user.firstName), \(f.firstName)", members: arr).then { responseGroup in
//                            // Send chat message to this group
//                            RestApi.instance.createChatMessage(groupId: responseGroup.id, body: customMessage).then({ response in
//                                sessionManager.showChat(user: user, group: responseGroup)
//                            })
//                        }
//                    }
//                }
//            }
//        }
//    }
//  
//    
//    //**************************
//        @State var animate: Bool = false
//        let animation: Animation = Animation.linear(duration: 5.0).repeatForever(autoreverses: false)
//
//            
//    var body: some View {
//            ZStack {
//              
//                    if shareTapped {
//                        
//                        Color.black
//                            .opacity(0.9)
//                            .ignoresSafeArea()
//                
//                        AdPlayerView(name: "dramaLights")
//                            .opacity(0.5)
//                            .ignoresSafeArea()
//                            .blendMode(.screen)
////
////
////                        AdPlayerView(name: "BlowingKisses2")
////                            .ignoresSafeArea()
////                            .blendMode(.screen)
////                            .opacity(0.25)
//                        
//                    } else {
//
//
//                        Color.black
//                           .opacity(0.9)
//                            .ignoresSafeArea()
//                        
//                        
//                        AdPlayerView(name: "sky2")
//                            .ignoresSafeArea()
//                            .blendMode(.screen)
//                            .opacity(0.9)
//                        
////                        AdPlayerView(name: "missingYou3")
////                            .ignoresSafeArea()
////                            .blendMode(.screen)
////                            .opacity(0.1)
//                        
//                        AdPlayerView(name: "easyHearts2")
//                            .ignoresSafeArea()
//                            .blendMode(.screen)
//                            .opacity(0.7)
//                        
//                        AdPlayerView(name: "TaylorSwift2")
//                                      .ignoresSafeArea()
//                                      .blendMode(.screen)
//                                      .opacity(0.0)
//                   
//                      
//                        
//                    }
//            
//                
//                
//VStack {
//    
//    
//        VStack {
//                
//            
//            
//            
//                Spacer ()
//                    .frame(height: 40)
//                
//                HStack {
//                    
//                    
//                    Spacer ()
//                        .frame(width: 20)
//                    
//                    
//                    VStack {
//                        Text("Two souls whose stories")
//                            .font(.system(size: 10))
//                            .fontWeight(.bold)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
//                            .rotationEffect(.degrees(-20))
//                        //                            .blinking(duration: 3.0)
//                            .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
//                            .opacity(0.5)
//                        
//                        Text("forever etched in the laugh lines and")
//                            .font(.system(size: 10))
//                            .fontWeight(.bold)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
//                            .rotationEffect(.degrees(-20))
//                        //                            .blinking(duration: 3.0)
//                            .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
//                            .opacity(0.5)
//                        
//                        Text("dreams swiriling behind their eyes.")
//                            .font(.system(size: 10))
//                            .fontWeight(.bold)
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
//                            .rotationEffect(.degrees(-20))
//                        //                            .blinking(duration: 3.0)
//                            .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
//                            .opacity(0.5)
//                        
//                        
//                        Text("-- Thays from Brazil")
//                            .font(.system(size: 10))
//                            .fontWeight(.bold)
//                            .italic()
//                            .multilineTextAlignment(.center)
//                            .foregroundColor(Color.white)
//                            .rotationEffect(.degrees(-20))
////                            .blinking(duration: 3.0)
//                            .shadow(color: ColorManager .grey3, radius: 0.7, x: 0.5, y: 0.5)
//                            .opacity(0.5)
//                        
//                        
//                    }
//                    
//                    
//                    Spacer ()
//                        .frame(width: 30)
//                    
//                    
//                    
//                    ZStack {
////                        Image(systemName: "heart.fill")
////                            .rotationEffect(.degrees(10))
//                        
//                        
////    Link(destination: URL(string: "https://socialtechlabs.com/tips/")!) {
//                        
//                        Image(systemName: "heart.fill")
//                            .resizable()
//                            .foregroundColor(ColorManager .grey2)
//                            .frame(width: 140, height: 110)
//                            .shadow(color: ColorManager .grey1, radius: 3, x: 3, y: 3)
//                            .rotationEffect(.degrees(-10))
//                            .opacity(0.4)
//
//                      
//                        NavigationLink(
//                            destination: RRPoemContest(user: user, friends: friends, groups: groups),
//                            label: {
//                            VStack {
//                                Text("Poem \nContest")
//                                    .font(.system(size: 22))
//                                    .fontWeight(.light)
//                                    .multilineTextAlignment(.center)
//                                    .foregroundColor(ColorManager .grey1)
//                                    .rotationEffect(.degrees(-10))
//                                    .opacity(0.99)
//
//                            }
//                        }
//                    )}
//                }
//            
//            Spacer ()
//                .frame(height: 5)
//            }
//        }
//        
//                
//                
//                
//                
//                
////        Spacer()
////            .frame(height: 100)
//        
//        //                **************************************
//        
//        HStack {
//            ZStack{
//                
//                VStack {
//                    
//                    Text("  feel your lover's")
//                        .font(.system(size: 17))
//                        .italic()
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(Color.white)
//                        .rotationEffect(.degrees(10))
////                        .blinking(duration: 3.0)
//                        .shadow(color: Color.white, radius: 6, x: 3, y: 5)
//                        .opacity(0.5)
//                    
//                    Spacer ()
//                        .frame(height: 30)
//                    
//                    Text("Hearbeat")
//                        .font(.system(size: 15))
//                        .italic()
//                        .fontWeight(.regular)
//                        .multilineTextAlignment(.center)
//                        .foregroundColor(Color.white)
//                       .rotationEffect(.degrees(10))
////                        .blinking(duration: 3.0)
//                        .shadow(color: Color.white, radius: 6, x: 3, y: 5)
//                        .opacity(0.6)
//                }
//                
//                Spacer ()
//                    .frame(height: 10)
//                
//                //
//                Image(systemName: "heart.fill")
//                    .resizable()
//                    .foregroundColor(ColorManager .purple3)
//                    .frame(width: 140, height: 110)
//                    .shadow(color: ColorManager .purple1, radius: 3, x: 3, y: 3)
//                    .rotationEffect(.degrees(10))
//                    .opacity(0.4)
//                
//                // ***********************************************
//                // *********** Audio to the TAP on the Heartbeat *****************
//                
//                Button(action: {
//                    counter += 1
//                    shareTapped = true
//                    shareButtonTapped()
//                    sendMessage()
//                },
//                       label: {
//                    //                        Image("iconShare")
//                    //
//                    Image(systemName: "heart.fill")
//                        .resizable()
//                        .foregroundColor(.purple)
//                        .frame(width: 150, height: 110)
//                        .shadow(color: .blue, radius: 65, x: 30, y: 50)
//                        .opacity(0.25)
//                        .alert("", isPresented: $showingAlert) {
//                            Button("", role: .cancel) { }
//                        }
//                    
//                    
//                })
//                
//                
//                
//                
//                // *********************************
//                
//                VStack {
//                    
//                    Spacer()
//                        .frame(height: 30)
//                    
//                    ZStack {
//                        Image(systemName: "heart.fill")
//                            .resizable()
//                            .foregroundColor(ColorManager .purple3)
//                            .frame(width: 140, height: 110)
//                            .shadow(color: ColorManager .purple1, radius: 3, x: 3, y: 3)
//                            .rotationEffect(.degrees(10))
//                            .opacity(0.4)
//                        
//                        Text("TAP")
//                        
//                            .font(.system(size: 25))
//                            .fontWeight(.light)
//                            .foregroundColor(.cyan)
//                            .frame(width: 70, height: 30)
//                            .background(Color.cyan)
//                            .multilineTextAlignment(.center)
//                            .rotationEffect(.degrees(10))
//                            .cornerRadius(5)
//                            .foregroundColor(Color.white)
//                        //                                       .blinking(duration: 3.0)
//                            .opacity(0.6)
//                            .padding()
//                            .onTapGesture {
//                                showingHeart = false
//                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                                                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                                                                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                                                                                            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                                                                AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                                                                    AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                                                                        
//                                                                                                        AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) {
//                                                                                                            showingHeart = true
//                                                                                                            
//                                                                                                        }
//                                                                                                    }
//                                                                                                }
//                                                                                            }
//                                                                                        }
//                                                                                    }
//                                                                                }
//                                                                            }
//                                                                        }
//                                                                    }
//                                                                }
//                                                            }
//                                                        }
//                                                    }
//                                                }
//                                            }
//                                        }
//                                    }
//                                }
//                            }
//                    }
//                    
//                    Spacer()
//                        .frame(height: 30)
//                }
//            }
//        Spacer ()
//                .frame(width: 40)
//            
////            RRBrokenHeart(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups
//            NavigationLink(
//                destination: EmptyView(),
//                label: {
//                    
//                    ZStack {
//                        Text("Dented \nHeart")
//                            .font(.system(size: 14))
//                            .foregroundColor(ColorManager .grey4)
//                            .fontWeight(.bold)
//                            .rotationEffect(.degrees(-10))
//                            .opacity(0.99)
//                            .multilineTextAlignment(.center)
//                        //                        .blinking(duration: 2.0)
//                        
//                        Image(systemName: "heart")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 120, height: 120)
//                            .foregroundColor(Color.cyan)
//                            .opacity(0.1)
//                            .rotationEffect(.degrees(-10))
//                            .glow(color: Color.purple, radius: 1)
//                            .shadow(color: Color.purple, radius: 2, x: 0, y: 3)
//                        
//                        Image(systemName: "heart.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 110, height: 110)
//                            .foregroundColor(ColorManager .purple3)
//                            .opacity(0.1)
//                        //                                        .rotationEffect(.degrees(10))
//                            .glow(color: Color.white, radius: 1)
//                            .shadow(color: Color.white, radius: 2, x: 0, y: 3)
//                    }
//                         
//                })
//            }
//
//     
//                
//        //                **************************************
//        
//       
//                
//                
//    VStack {
//            
//            HStack {
//                
//
//
//                NavigationLink(
//                    destination:  SendKisses(user: user, friends: friends),
//                    label: {
//                        ZStack {
//
//                            Image(systemName: "circle.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 60, height: 60)
//                                .foregroundColor(Color.cyan)
//                                .opacity(0.95)
//
//                            Image(systemName: "heart.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 50, height: 50)
//                                .foregroundColor(Color.purple)
//                                .glow(color: Color.white, radius: 0.3)
//                                .shadow(color: .white, radius: 1, x: 3, y: -0.5)
//                                .opacity(0.95)
//
//                            Text("blowing \nkisses")
//                                .font(.system(size: 10))
//                                .fontWeight(.medium)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color.white)
//                                .opacity(0.99)
//
//                        }
//                    })
//
//
//
//
//                //                        ********************** Hugs ********************
//
//                NavigationLink(
//                    destination: SaySomethingNice5(user: user, friends: friends),
//                    label: {
//                        HStack {
//                            ZStack {
//                                Image(systemName: "circle.fill")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 60, height: 60)
//                                    .foregroundColor(Color.cyan)
//                                    .opacity(0.95)
//
//                                Image(systemName: "heart.fill")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 50, height: 50)
//                                    .foregroundColor(Color.purple)
//                                    .glow(color: Color.white, radius: 0.3)
//                                    .shadow(color: .white, radius: 1, x: 3, y: -0.5)
//                                    .opacity(0.95)
//
//                                Text("send \nhearts")
//                                    .font(.system(size: 10))
//                                    .fontWeight(.medium)
//                                    .multilineTextAlignment(.center)
//                                    .foregroundColor(Color.white)
//                                //                                                .rotationEffect(.degrees(-10))
//                                    .opacity(0.99)
//
//                            }
//                        }
//                    })
//
//
//
//
//
//
//                //                        ********************** Missing You ********************
////                NavigationLink(
////                    destination:  HugPushNotification(user: user, friends: friends),
////                    label: {
////                        ZStack {
////                            Image(systemName: "circle.fill")
////                                .resizable()
////                                .scaledToFit()
////                                .frame(width: 60, height: 60)
////                                .foregroundColor(Color.cyan)
////                                .opacity(0.95)
////
////                            Image(systemName: "heart.fill")
////                                .resizable()
////                                .scaledToFit()
////                                .frame(width: 50, height: 50)
////                                .foregroundColor(Color.purple)
////                                .glow(color: Color.white, radius: 0.3)
////                                .shadow(color: .white, radius: 1, x: 3, y: -0.5)
////                                .opacity(0.95)
////
////                            Text("send \nhugs")
////                                .font(.system(size: 10))
////                                .fontWeight(.medium)
////                                .multilineTextAlignment(.center)
////                                .foregroundColor(Color.white)
////                                .opacity(0.99)
////
////                        }
////                    })
//
//                //                ************************* Hugs ****************************
//
//                NavigationLink(
//                    destination: NEWSFeedPergion(user: user, friends: friends),
//                    label: {
//                        ZStack {
//                            Image(systemName: "circle.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 60, height: 60)
//                                .foregroundColor(Color.cyan)
//                                .opacity(0.95)
//
//                            Image(systemName: "heart.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 50, height: 50)
//                                .foregroundColor(Color.purple)
//                                .glow(color: Color.white, radius: 0.3)
//                                .shadow(color: .white, radius: 1, x: 3, y: -0.5)
//                                .opacity(0.95)
//
//                            Text("missing \nyou")
//                                .font(.system(size: 10))
//                                .fontWeight(.medium)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color.white)
//                                .opacity(0.99)
//
//                        }
//                    })
//
//                //  ****************************** Missing You **************
//
//                NavigationLink(
//                    destination:  HugPushNotification(user: user, friends: friends),
//                    label: {
//                        ZStack {
//                            
//                            Image(systemName: "circle.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 60, height: 60)
//                                .foregroundColor(Color.cyan)
//                                .opacity(0.95)
//                            
//                            Image(systemName: "heart.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 50, height: 50)
//                                .foregroundColor(Color.purple)
//                                .glow(color: Color.white, radius: 0.3)
//                                .shadow(color: .white, radius: 1, x: 3, y: -0.5)
//                                .opacity(0.95)
//                            
//                            Text("send \nhugs")
//                                .font(.system(size: 10))
//                                .fontWeight(.medium)
//                                .multilineTextAlignment(.center)
//                                .foregroundColor(Color.white)
//                                .opacity(0.99)
//                            
//                        }
//                    })
//                }
//            }
//        
//        Spacer()
//            .frame(height: 10)
//            
//            ZStack {
//                
//                VStack {
//                    Spacer()
//                    // TextField for userInput
//                    TextField("", text: $customMessage)
//                        .placeholder(when: customMessage.isEmpty) {
//                            HStack {
//                                Text("say something romatic - take a chance, trust your heart...")
//                                    .foregroundColor(Color.white)
//                                    .fontWeight(.thin)
//                                Spacer()
//                            }
//                        }
//                        .foregroundColor(.white)
//                        .font(.system(size: 11))
//                        .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
//                        .submitLabel(.done)
//                        .onReceive(Just(customMessage)) { _ in limitText(65) }
//                        .padding(.top, 20)
//                        .padding(.horizontal, 42)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 10)
//                                .stroke(Color.purple)
//                            //                                                            .background(ColorManager.purple3)
//                                .frame(height: 50)
//                                .padding(.horizontal, 25)
//                        )
//                        .padding(.bottom, 5)
//                }
//            }
//            
//            
//            
//            //                **************************************
//            
//            VStack {
//                
//                Spacer()
//                    .frame(height: 10)
//                
//                Text("(alert them to your message in Chat)")
//                    .font(.system(size: 15))
//                    .italic()
//                    .fontWeight(.light)
//                    .foregroundColor(ColorManager .grey1)
//                    .multilineTextAlignment(.center)
//                
//                VStack {
//                    
//                    Spacer()
//                        .frame(height: 10)
//                    
//  
//                    HStack {
//                        
//                        if friends.count > 0 {
//                            RectView(user: user, friend: friends[0], color: colors[0])
//                                .onTapGesture(perform: {
//                                    if selectedFriends.contains(friends[0].id) {
//                                        selectedFriends = selectedFriends.filter { $0 != friends[0].id }
//                                        colors[0] = ColorManager.grey2
//                                    } else {
//                                        selectedFriends.append(friends[0].id)
//                                        colors[0] = ColorManager.grey3
//                                    }
//                                    print(selectedFriends)
//                                })
//                            
//                        }
//                        
//                        if friends.count > 1 {
//                            RectView(user: user, friend: friends[1], color: colors[1])
//                                .onTapGesture(perform: {
//                                    if selectedFriends.contains(friends[1].id) {
//                                        selectedFriends = selectedFriends.filter { $0 != friends[1].id }
//                                        colors[1] = ColorManager.grey2
//                                    } else {
//                                        selectedFriends.append(friends[1].id)
//                                        colors[1] = ColorManager.grey3
//                                    }
//                                    print(selectedFriends)
//                                })
//                            
//                        }
//                    }
//                    
//                    Spacer()
//                        .frame(height: 15)
//                    HStack {
//                        if friends.count > 2 {
//                            RectView(user: user, friend: friends[2], color: colors[2])
//                                .onTapGesture(perform: {
//                                    if selectedFriends.contains(friends[2].id) {
//                                        selectedFriends = selectedFriends.filter { $0 != friends[2].id }
//                                        colors[2] = ColorManager.grey2
//                                    } else {
//                                        selectedFriends.append(friends[2].id)
//                                        colors[2] = ColorManager.grey3
//                                    }
//                                    print(selectedFriends)
//                                })
//                        }
//                        
//                        if friends.count > 3 {
//                            RectView(user: user, friend: friends[3], color: colors[3])
//                                .onTapGesture(perform: {
//                                    if selectedFriends.contains(friends[3].id) {
//                                        selectedFriends = selectedFriends.filter { $0 != friends[3].id }
//                                        colors[3] = ColorManager.grey2
//                                    } else {
//                                        selectedFriends.append(friends[3].id)
//                                        colors[3] = ColorManager.grey3
//                                    }
//                                    print(selectedFriends)
//                                })
//                            
//                        }
//                        
//                        if friends.count > 4 {
//                            RectView(user: user, friend: friends[4], color: colors[4])
//                                .onTapGesture(perform: {
//                                    if selectedFriends.contains(friends[4].id) {
//                                        selectedFriends = selectedFriends.filter { $0 != friends[4].id }
//                                        colors[4] = ColorManager.grey2
//                                    } else {
//                                        selectedFriends.append(friends[4].id)
//                                        colors[4] = ColorManager.grey3
//                                    }
//                                    print(selectedFriends)
//                                })
//                            
//                        }
//                    }
//                    
//                    
//                    
//                    Spacer()
//                        .frame(height: 20)
//                    
//                    
//                    Button(action: {
//                        counter += 1
//                        shareTapped = true
//                        shareButtonTapped()
//                        sendMessage()
//                    },
//                           label: {
//                        Image("iconShare")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 90, height: 90)
//                            .rotationEffect(.degrees(20))
//                            .foregroundColor(ColorManager .purple5)
//                            .glow(color: Color.purple, radius: 2)
//                            .opacity(0.6)
//                            .blinking(duration: 3.0)
//                            .alert("Your message has been sent", isPresented: $showingAlert) {
//                                Button("OK", role: .cancel) { }
//                            }
//                        
//                        
//                    })
//                    
//        VStack {
//                   
//                        HStack {
//                            
//                            ZStack {
//                                
//                                Image(systemName: "heart.fill")
//                                    .rotationEffect(.degrees(-10))
//                                
//                                Image(systemName: "heart.fill")
//                                    .resizable()
//                                    .foregroundColor(ColorManager .grey2)
//                                    .frame(width: 130, height: 100)
//                                    .shadow(color: ColorManager .grey1, radius: 3, x: 3, y: 3)
//                                    .rotationEffect(.degrees(-10))
//                                    .opacity(0.3)
//                                
//                                Link(destination: URL(string: "https://socialtechlabs.com/a-kisses-journey/")!) {
//
//                                    VStack {
//                                        Text("a kisses \n\njourney")
//                                            .font(.system(size: 20))
//                                            .fontWeight(.light)
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(ColorManager .grey1)
//                                            .rotationEffect(.degrees(-10))
//                                            .opacity(0.99)
//                                
//                      
//                                        
//                                    }
//                                }
//                            }
//                            
//                            
//                          
//                            Spacer()
//                                .frame(width: 50)
//                            
//                            
//                            ZStack {
//                                
//                                Image(systemName: "heart.fill")
//                                    .rotationEffect(.degrees(10))
//                                
//                                Image(systemName: "heart.fill")
//                                    .resizable()
//                                    .foregroundColor(ColorManager .grey2)
//                                    .frame(width: 130, height: 100)
//                                    .shadow(color: ColorManager .grey1, radius: 3, x: 3, y: 3)
//                                    .rotationEffect(.degrees(10))
//                                    .opacity(0.3)
//                                
//                                
//                                
//                                Link(destination: URL(string: "https://socialtechlabs.com/white-linen-dress/")!) {
//                                    
//                                    VStack {
//                                        Text("white linen \n\ndress")
//                                            .font(.system(size: 20))
//                                            .fontWeight(.light)
//                                            .multilineTextAlignment(.center)
//                                            .foregroundColor(ColorManager .grey1)
//                                            .rotationEffect(.degrees(10))
//                                            .opacity(0.99)
//                                        
//                                    }
//                                }
//                            }
//                        }
//                      
//                        Spacer()
//                            .frame(height: 70)
//                        
//                    }
//                    
//                }
//                
//            }
//            
//        }
//        
////     }
//        
//        
//        
//        
//        
//        func shareButtonTapped() {
//            if selectedFriends.count == 0 { return }
//            for id in selectedFriends {
//                for f in friends {
//                    if f.id == id {
//                        RestApi.instance.sendPushNotification(title: "BestFriends", body: "Aah!  \(user.firstName) just sent you a Love Tart. Check chat for a message", APNToken: f.APNToken)
//                        
//                        //MARK: The code below creates an in-app notification for your friend (f.id)
//                        //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
//                        RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "just sent you a Love Tart. Check Chat", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
//                            print("Create a love tart notification response code: ", response)
//                        })
//                        RestApi.instance.createStreakLog(friendID: f.id)
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
//                    .frame(width: 70, height: 70)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    .font(.system(size: 6))
//                    .background(color)
//                    .cornerRadius(75)
//                //                .opacity(0.4)
//                    .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
//                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//            }
//        }
//    }
//
//            
