//
//  DreamRisk.swift
//  BestFriends
//
//  Created by Social Tech on 9/18/22.
//

//
//import Foundation
//import SwiftUI
//import AVKit
//
//
//struct DreamRisk: View {
//    @State var audioPlayer: AVAudioPlayer!
//    
//    let user: User
//    let friends: [User]
//    let groups: [Group]
//    
//    var body: some View {
//        
//        ZStack {
//           
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//          
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//            //                    .scaledToFill()
//                .blendMode(.screen)
//
//            VStack {
//        
//                
//               
//                VStack {
//                
//                    Text("Hi everyone")
//                        .font(.system(size: 20))
//                        .italic()
//                        .foregroundColor(ColorManager.purple3)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                    Text("yep, we have a new story for you")
//                        .font(.system(size: 20))
//                        .italic()
//                        .foregroundColor(ColorManager.purple3)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                    
//                    Spacer()
//                        .frame(height:20)
//                    
//                    Text("If you like it")
//                        .font(.system(size: 25))
//                        .italic()
//                        .foregroundColor(ColorManager.purple3)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                       
//                    Text("send it to your friends")
//                        .font(.system(size: 25))
//                        .italic()
//                        .foregroundColor(ColorManager.purple3)
//                        .fontWeight(.ultraLight)
//                        .multilineTextAlignment(.center)
//                  
////                    Text("risk everything")
////                        .font(.system(size: 35))
////                        .italic()
////                        .foregroundColor(ColorManager.pmbc_pink)
////                 //                            .foregroundColor(.red)
////                        .fontWeight(.ultraLight)
////                        .multilineTextAlignment(.center)
////                    
//
//                    HStack {
//                        
//                        //                MARK: The [All] button is not activated. When tap nothing comes up in the bottom output screen
//                        if friends.count > 1 {
//                            Button(action: {
//                                
//                            },
//                                   label: {
//                                Text("select >")
//                                //                                .fontWeight(.bold)
//                                    .fontWeight(.thin)
//                                    .frame(width: 100, height: 30)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 20))
//                                    .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                    .cornerRadius(25)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
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
//                    
//                    HStack {
//                        if friends.count > 2 {
//                            RectView(user: user, friend: friends[2], color: colors[2])
//                                .onTapGesture(perform: {
//                                    if selectedFriends.contains(friends[2].id) {
//                                        selectedFriends = selectedFriends.filter { $0 != friends[2].id }
//                                        colors[2] = ColorManager.purple3
//                                    } else {
//                                        selectedFriends.append(friends[2].id)
//                                        colors[2] = ColorManager.purple5
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
//                                        colors[3] = ColorManager.purple3
//                                    } else {
//                                        selectedFriends.append(friends[3].id)
//                                        colors[3] = ColorManager.purple5
//                                    }
//                                    print(selectedFriends)
//                                })
//                        }
//                        
//                        if friends.count > 4 {
//                            RectView(user: user, friend: friends[4], color: colors[4])
//                                .onTapGesture(perform: {
//                                    if selectedFriends.contains(friends[4].id) {
//                                        selectedFriends = selectedFriends.filter { $0 != friends[4].id }
//                                        colors[4] = ColorManager.purple3
//                                    } else {
//                                        selectedFriends.append(friends[4].id)
//                                        colors[4] = ColorManager.purple5
//                                    }
//                                    print(selectedFriends)
//                                })
//                            
//                        }
//                    }
//                    
//                    VStack {
//                        Spacer()
//                            .frame(height: 20)
//                        
//                        Button(action: {
//                            shareButtonTapped()
//                        },
//                               label: {
//                            Text("SHARE")
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//                                .background(shareColor)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                .alert("Push Notifications sent successfully", isPresented: $showingAlert) {
//                                            Button("OK", role: .cancel) { }
//                                        }
//                        })
//                        
//  
//                    VStack {
//                     
//                        Spacer()
//                            .frame(height:50)
//            
//            VStack {
//                    
//           
//                    Spacer()
//                    .frame(height: 15)
//              }
//                
//                        
//                VStack {
//                            Link(destination: URL(string: "https://socialtechlabs.com/fear-of-falling/")!) {
//                                
//                                Text("Little Yellow Bulldozer")
//                                    .fontWeight(.thin)
//                                    .frame(width: 310, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 25))
//                                    .background(ColorManager.pmbc_green)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            }
//    //
//                        
////            VStack {
////
////                    Text("Listen").font(.system(size: 20)).font(.largeTitle)
////                HStack {
////                    Spacer()
////                    Button(action: {
////                        self.audioPlayer.play()
////                    }) {
////                        Image(systemName: "play.circle.fill").resizable()
////                            .frame(width: 40, height: 40)
////                            .aspectRatio(contentMode: .fit)
////                    }
////                    Spacer()
////                    Button(action: {
////                        self.audioPlayer.pause()
////                    }) {
////                        Image(systemName: "pause.circle.fill").resizable()
////                            .frame(width: 40, height: 40)
////                            .aspectRatio(contentMode: .fit)
////                    }
////                    Spacer()
////
////                }
////            }
////        .onAppear {
////            let sound = Bundle.main.path(forResource: "Meena", ofType: "m4a")
////            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
////        }
////
//                        Spacer()
//                        .frame(height: 105)
//                        
//                        
//    }
//}
//    
//}
//    }
//}
//}
//}
//}
//
////
////   Text("If you want something")
////       .font(.system(size: 20))
////       .italic()
////       .foregroundColor(ColorManager.purple3)
////       .fontWeight(.ultraLight)
////       .multilineTextAlignment(.center)
////   Text("you have to take a risk")
////       .font(.system(size: 20))
////       .italic()
////       .foregroundColor(ColorManager.purple3)
////       .fontWeight(.ultraLight)
////       .multilineTextAlignment(.center)
////
////   Spacer()
////       .frame(height:20)
////
////   Text("If you 'Really' want something")
////       .font(.system(size: 25))
////       .italic()
////       .foregroundColor(ColorManager.purple3)
////       .fontWeight(.ultraLight)
////       .multilineTextAlignment(.center)
////
////   Text("you have to be willing to")
////       .font(.system(size: 25))
////       .italic()
////       .foregroundColor(ColorManager.purple3)
////       .fontWeight(.ultraLight)
////       .multilineTextAlignment(.center)
////
////   Text("risk everything")
////       .font(.system(size: 35))
////       .italic()
////       .foregroundColor(ColorManager.pmbc_pink)
//////                            .foregroundColor(.red)
////       .fontWeight(.ultraLight)
////       .multilineTextAlignment(.center)
////
