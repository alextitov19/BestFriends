//
//  PickMediator.swift
//  BestFriends
//
//  Created by Social Tech on 6/10/22.
//


import Foundation
import SwiftUI
import AVKit

struct PickMediator: View {
    
    //    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    @State private var isLockTapped = false

    
    var body: some View {
        
        ZStack {
    
//            ColorManager.purple7
//                .ignoresSafeArea()
//                .onAppear()
//
//            Image("blueBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//                .opacity(0.5)
//
//

            
//            AdPlayerView(name: "MyRoom5")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
//            ColorManager .purple1
//                    .ignoresSafeArea()
//                    .onAppear()
    
//                Color .black
//                    .ignoresSafeArea()
//
    
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
            
            AdPlayerView(name: "dramaLights")
                .ignoresSafeArea()
            
            ZStack{
                
          
            
//
//                NavigationLink(destination: MyRoomTalk(user: user, friends: friends), label: {
//                    MyRoomCircle (color: Color .white, friendName: "Someone \nto \ntalk too")
//                })
//                .offset(x: showItems ? -100 : 0, y: showItems ? -300: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.4)
//
                
        
                
            ZStack {
                

                NavigationLink(destination:  HorizonHomeView(user: user, friends: friends, atmosphere: atmosphere), label: {
                    MyRoomCircle (color: Color .white, friendName: "Horizons")
                })
                .offset(x: showItems ? -100 : 0, y: showItems ? -150: 0)
                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
                .opacity(0.4)


                
//
//                NavigationLink(destination: HugPushNotification3(user: user, friends: friends), label: {
//                    MyRoomCircle (color: ColorManager .grey1, friendName: "I need a \n Hug")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? -170: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.25)
//
              
//
//                NavigationLink(destination: BuggingPreload1(user: user, friends: friends, groups: groups), label: {
//                    MyRoomCircle (color: ColorManager .grey1, friendName: "Something \n Bugging \nYou?")
//                })
//                .offset(x: showItems ? 0 : 0, y: showItems ? 170: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.25)
//
              
                
//
//                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
//                    MyRoomCircle (color: Color .white, friendName: "SmileVault")
//                })
//                .offset(x: showItems ? 120 : 0, y: showItems ? 120: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.25)
//
                
//                NavigationLink(destination: FriendVaultTrackMoods(user: user, atmosphere: atmosphere, friends: friends), label: {
//                    MyRoomCircle (color: Color .white, friendName: "'Vibe' \nTracker")
//                })
//                .offset(x: showItems ? -100 : 0, y: showItems ? -270: 0)
//                .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                .opacity(0.4)
//

                
//
//                    NavigationLink(destination: MyFears(user: user, friends: friends), label: {
//                        MyRoomCircle (color: Color .white, friendName: "I can't \nBreathe")
//                    })
//                    .offset(x: showItems ? 100 : 0, y: showItems ? -250: 0)
//                    .shadow(color: ColorManager .purple1, radius: 10, x: 10, y: 10)
//                    .opacity(0.4)
//
//
//
//                    NavigationLink(destination:   SendSongPush(user: user, friends: friends),
//                                   label: {
//                        MyRoomCircle (color: ColorManager .grey1, friendName: "New \nMusic \n(preview)")
//                    })
//                    .offset(x: showItems ? -125 : 0, y: showItems ? 260: 0)
//                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
//
//
                    

                    NavigationLink(destination: DreamVaultView(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres:  friendAtmospheres, groups: groups), label: {
                        MyRoomCircle (color: Color .white, friendName: "Live your \nmost precious \nDreams")
                    })
                    .offset(x: showItems ? -120 : 0, y: showItems ? 170: 0)
                    .shadow(color: ColorManager .purple2, radius: 10, x: 10, y: 10)
                    .opacity(0.4)


          
                

                                    NavigationLink(destination: AtmosphereInfo1(user: user, atmosphere: atmosphere, friends: friends), label: {
                                        MyRoomCircle (color: ColorManager .purple3, friendName: "Cupcakes \ninsted of \nGrades")
                                    })
                                    .offset(x: showItems ? 120 : 0, y: showItems ? -100: 0)
                                    .shadow(color: ColorManager .purple3, radius: 10, x: 10, y: 10)
                                    .opacity(0.4)


                
                
                    NavigationLink(destination: EmptyView(), label: {
                        MyRoomCircle (color: ColorManager .grey1, friendName: "")
                    })
                    .offset(x: showItems ? 0 : 0, y: showItems ? 0: 0)
                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 10, x: 10, y: 10)
//
                    
                    
                    
                    
                    Image(systemName: "triangle.fill")
                        .resizable()
                        .foregroundColor(ColorManager .grey2)
                        .frame(width: 220, height: 180)
                        .shadow(color: ColorManager .purple4, radius: 65, x: 30, y: 50)
                        .opacity(0.7)
                    
                    
                    VStack {
                        
                       
                        Spacer ()
                            .frame(height: 65)
                        
                        Text("My Dream")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .fontWeight(.ultraLight)
                            .multilineTextAlignment(.center)
                        Text("Vault")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                        
                        Spacer ()
                            .frame(height: 35)
                   
                                Text("Lock Vault")
                                    .fontWeight(.light)
                                    .frame(width: 85, height: 21)
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .background(ColorManager.grey3)
                                    .cornerRadius(15)
                                    .onTapGesture(perform: {
                                        let updatedUser = User(id: user.id, firstName: user.firstName, lastName: user.lastName, APNToken: user.APNToken, friends: user.friends, groups: user.groups, hiddenGroups: user.hiddenGroups, atmosphere: user.atmosphere, chatPin: user.chatPin, chatBackground: user.chatBackground, smileNotes: user.smileNotes, roomHidden: true)
                                        RestApi.instance.updateUser(user: updatedUser).then({ response in
                                            print("Got update response: ", response)
                                            isLockTapped.toggle()
                                        })
                                    })
                                    .onAppear(perform: {
                                        if user.roomHidden != nil {
                                            if user.roomHidden == true {
                                                isLockTapped.toggle()
                                            }
                                        }
                                    })
                                    .fullScreenCover(isPresented: $isLockTapped) {
                                        HideMyRoom(user: user)
                                    }
                    }
                }
                
                
            
                    
                    .onTapGesture {
                        withAnimation {
                            self.showItems.toggle()
                        }
                        print("tap function is working")
                    }
                    
                    .animation(Animation.easeInOut(duration: 2.5), value: showItems)
                    
                }
            }
        }
        
        
        struct MyRoomCircle: View {
            var color: Color
            var friendName: String
            
            var body: some View {
                
                ZStack {
                    
                    Circle()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .foregroundColor(Color .white)
                        .opacity(0.7)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
                    
                    Text(friendName)
                        .fontWeight(.light)
                        .italic()
                        .foregroundColor(.black)
                    
                }
                
            
        }
    }
}


// *************************************

//
//import Foundation
//import SwiftUI
//
//struct PickMediator: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
////    let user: User
////    let friends: [User]
////    let groups: [Group]
////
//
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let friendAtmospheres: [Atmosphere]
//    let groups: [Group]
//
//
//
//    @State private var selectedFriends: [String] = []
//    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
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
//    @State private var colorButtonTapped: String = ""
//
//
//    var body: some View {
//
//        ZStack {
//
//            ColorManager.grey4
//                .ignoresSafeArea()
//            //                .onAppear()
//
//
//            Image("surferboysimg")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//                .opacity(0.5)
//
//            VStack {
//
//
//                Text("The myth of why guys")
//                    .font(.system(size: 25))
//                    .foregroundColor(.white)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//
//
//                Text("don't talk about problems")
//                    .font(.system(size: 25))
//                    .foregroundColor(.white)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//
//
//                Spacer()
//                    .frame(height: 15)
//
//
//
//                NavigationLink(
//                    destination: InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
//                    label: {
//                        Text("It's not embarrasment or being teased. \nInstead they ponder solutions")
//
//                            .fontWeight(.thin)
//                            .frame(width: 320, height: 70)
//                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                            .font(.system(size: 17))
//                            .background(ColorManager.purple3)
//                            .cornerRadius(15)
//                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                    })
////
////                Button(action: {
////                    counter += 1
////                    shareTapped = true
////                    shareButtonTapped()
////                },
////                       label: {
////                    Text("Nope, it's not embarrasment or being teased.\nThey ponder solutions to \nsolve it - not talk about it.")
////
////                        .fontWeight(.thin)
////                        .frame(width: 310, height: 70)
////                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
////                        .font(.system(size: 15))
////                        .background(ColorManager.purple3)
////                        .cornerRadius(15)
////                        .opacity(0.50)
////                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
////
////                        .alert("Nope, it's not embarrasment or being teased.\nThey ponder solutions wanting to \nsolve it - not talk about it.", isPresented: $showingAlert) {
////                            Button("OK", role: .cancel) { }
//////                                .opacity(0.50)
////                        }
////                })
////                .confettiCannon(counter: $counter)
////
////
//
//                Spacer()
//                    .frame(height: 200)
//
//                VStack {
//
//
//                    Text("Girls _ consider adding a guy \nto your Friendgroup")
//                        .font(.system(size: 25))
//                        .italic()
//                        .foregroundColor(.white)
//                        .fontWeight(.thin)
//                        .multilineTextAlignment(.center)
//
//
//
//
//
//
//
//                    NavigationLink(
//                        destination: InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
//                        label: {
//                            Text("If you build a gender mixed group of friends, you may invite up to 7 (instead of 5) friends")
//
//                                .fontWeight(.thin)
//                                .frame(width: 310, height: 70)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 17))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                        })
//
//                    .confettiCannon(counter: $counter)
//
//
//
//
//                    Spacer()
//                        .frame(height: 130)
//
//
//                                }
//
//
//
//                            }
//
//
//
//                        }
//
//
//
//                    }
//
//    func shareButtonTapped() {
//        if selectedFriends.count == 0 { return }
//        for id in selectedFriends {
//            for f in friends {
//                if f.id == id {
//                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) is thinking of you.", APNToken: f.APNToken)
//
//                }
//
//
//
//            }
//        }
//    }
//
//}
//
//
//
//
