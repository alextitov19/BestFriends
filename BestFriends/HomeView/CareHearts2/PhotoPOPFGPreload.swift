//
//  PhotoPOPFGPreload.swift
//  BestFriends
//
//  Created by Social Tech on 11/14/22.
//




                     import Foundation
                     import SwiftUI
                     import ConfettiSwiftUI
                     import AVKit

                     struct PhotoPopFGPreload: View {
                         
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
                                     
                                     
                                     
                                                 ColorManager.purple5
                                                     .ignoresSafeArea()
                                                     .onAppear()

                                     
                                     AdPlayerView(name: "dramaLights")
                                         .ignoresSafeArea()
                                         .blendMode(.screen)
                                     
                                 } else {

                                     ColorManager.grey4
                                         .opacity(0.8)
                                         .ignoresSafeArea()
                                         .onAppear()

                         AdPlayerView(name: "sky2")
                             .ignoresSafeArea()
                             .blendMode(.screen)
                                     
                                     
                                 }
                                 
                             
                     //           *************************************

                                     VStack{
                                         
                                         HStack {
                                             VStack {
                                            
                                                 
                                                 
                                                 Spacer()
                                                     .frame(height: 10)
                                                 
                                                 ZStack {
                                                     
                                                     Image(systemName: "circle.fill")
                                                         .resizable()
                                                         .foregroundColor(Color.orange)
                                                         .frame(width: 400, height: 400)
                                                         .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                                                         .opacity(0.95)
                                                         
                                                     VStack {
                                                         Text("Friendship Coupons")
                                                             .font(.system(size: 26, weight: .light))
                                                             .foregroundColor(ColorManager .grey3)
                                                      
                                                    
                                                         
                                                         Text("Send coupons to your friends they can redeam for cool stuff next time you guys are together. Like ice cream, a cheesburger n' fries, a new car (just kidding).")
                                                             .font(.system(size: 17, weight: .light))
                                                             .italic()
                                                             .foregroundColor(Color.black)
                                         //                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                     //                                        .opacity(0.50)
                                                             .multilineTextAlignment(.center)
                                                             .padding(30)
                                                         
                                                         NavigationLink(destination: EmptyView(),
                                                                        label: {
                                                             ZStack {
                                                                 Circle()
                                                                     .frame(width: 140, height: 140)
                                                                     .foregroundColor(ColorManager.orange2)
                                                                     .shadow(color: .white, radius: 17, x: 0, y: 0)
                                                                     .shadow(color: .white, radius: 20, x: 0, y: 0)
                                                                     .glow(color: ColorManager.orange2, radius: 3)
                                                                     .opacity(0.5)
                                                                 
                                                                 Text("Select \nItem")
                                                                     .foregroundColor(.white)
                                                                     .font(.system(size: 25, weight: .bold))
                                                                     .shadow(color: .black, radius: 1, x: 0, y: 1)
                                                                     .opacity(0.50)
                                                             }
                                                         })
                                                         
                                                         
                                                     }
                                                 }
                                               
                                                 
                                             }
                                             
                      
                                         }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                     //                *********************************************************
                              
                                     VStack {

                                         Text("Send Coupon to ...")
                                             .font(.system(size: 17))
                                             .fontWeight(.ultraLight)
                                             .foregroundColor(ColorManager .grey1)
                                             .multilineTextAlignment(.center)
                                 
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
                                       
                                             
                                             
                     //                        Button(action: {
                     //                            counter += 1
                     //                            shareButtonTapped()
                     //                        },
                     //                               label: {
                     //                            Text("SHARE")
                                             
                                             
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
                                                     .alert("Your 'Friendship Coupon' \n\nhas been sent.", isPresented: $showingAlert) {
                                                         Button("OK", role: .cancel) { }
                                                     }
                                             })
                                             .confettiCannon(counter: $counter)

                                             
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
                                        
                                             }
                                             

                     //
                                             
                                             
                                             }
                                         
                                         
                                         
                                     
                                         Spacer()
                                             .frame(height: 100)
                                         
                                     }
                                     
                                 }
                                 
                             }
                             
                         }
                         
                         
                         func shareButtonTapped() {
                             if selectedFriends.count == 0 { return }
                             for id in selectedFriends {
                                 for f in friends {
                                     if f.id == id {
                                         RestApi.instance.sendPushNotification(title: "BestFriends", body: "  \(user.firstName) just sent you a 'Friendship Coupon'", APNToken: f.APNToken)
                                         
                                         //MARK: The code below creates an in-app notification for your friend (f.id)
                                         //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                                         RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "Just got a 'Friendship Coupon'", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                                             print("Create a Friendship Coupon notification response code: ", response)
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



//
//import Foundation
//import SwiftUI
//
//
//struct PhotoPOPFGPreload: View {
//    
//    @EnvironmentObject var sessionManager: SessionManager
//    
//    let user: User
//    let friends: [User]
//    
//    @State private var showingAlert = false
//    
//    var body: some View {
//        ZStack {
//            ColorManager.grey4
//                .ignoresSafeArea()
//                .onAppear()
//            
//            VStack {
//              
//            
//                
//                Text("Connecting FriendGroups")
//                    .font(.system(size: 30))
//                    .foregroundColor(ColorManager .purple3)
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                
//                
//                Spacer()
//                    .frame(height: 20)
//                
//                Text("W O R L D W I D E")
//                    .font(.system(size: 40))
//                    .foregroundColor(ColorManager .purple4)
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                
//                Spacer()
//                    .frame(height: 15)
//                
//                Text("with")
//                    .font(.system(size: 20))
//                    .foregroundColor(ColorManager .purple4)
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//          
//                Text("Images")
//                    .font(.system(size: 50))
//                    .foregroundColor(ColorManager .purple4)
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//          
//                
//                Spacer()
//                    .frame(height: 150)
//             
//                
//                Text("Designed for users")
//                    .font(.system(size: 25))
//                 
//                    .foregroundColor(.white)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//                
//                Text("in mutiple FriendGroups")
//                    .font(.system(size: 25))
//                 
//                    .foregroundColor(.white)
//                    .fontWeight(.light)
//                    .multilineTextAlignment(.center)
//                
//                VStack {
//                        
// 
//                Spacer()
//                    .frame(height: 50)
//                
// 
//                    
//                    
//                    Text("-Public images \n-Comments allowed")
//                        .font(.system(size: 25))
//                     
//                        .foregroundColor(.white)
//                        .fontWeight(.light)
//                        .multilineTextAlignment(.center)
//
//                    
//                    Spacer()
//                        .frame(height: 20)
//                    
//                Text("comming soon")
//                    .font(.system(size: 20))
//                    .italic()
//                    .foregroundColor(.green)
//                    .fontWeight(.light)
//                    .padding()
//              
//                    Spacer()
//                    .frame(height: 50)
//                    }
//                }
//                
//            }
//            
//        }
//        
//}
//    
//
