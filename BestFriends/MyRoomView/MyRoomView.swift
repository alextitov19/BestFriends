//
//  MyRoomView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/8/23.
//

import SwiftUI

struct MyRoomView: View {

    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    var body: some View {
        ZStack {
            ColorManager.purple7
                .opacity(0.3)
                .ignoresSafeArea()
                
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {

                
                Text("my friendships")
                    .foregroundColor(ColorManager .grey2)
                    .font(.system(size: 16, weight: .light))
                    .opacity(0.7)
                
                
                NavigationLink(destination: HugPushNotification2(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups), label: {
                MyRoomRowView(title: "CareHearts", imageName: "heart", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
                
                
                NavigationLink(destination: JournalsView(friends: friends), label: {
                    MyRoomRowView(title: "Chat-in-Journal", imageName: "text.book.closed", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
                
//            **************** Andy the link below is the one for the Vibe Tracker
//                NavigationLink(destination: FriendVaultTrackMoods(user: user, atmosphere: atmosphere, friends: friends), label: {
//                MyRoomRowView(title: "Vibe Tracker", imageName: "hand.thumbsup", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
//                })
////
//
            
                
                NavigationLink(destination: Step3_BreathInviteView(user: user, friends: friends, groups: groups), label: {
                    MyRoomRowView(title: "My Feelings", imageName: "wind", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
//
//                NavigationLink(destination: AffirmationMain(), label: {
//                    MyRoomRowView(title: "Affirmations", imageName: "star.leadinghalf.filled", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
//                })
//                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
//                MyRoomRowView(title: "SmileVault", imageName: "sun.max.fill", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
//                })


                NavigationLink(destination: INFOPreloadA(user: user, friends: friends), label: {
                MyRoomRowView(title: "Thumbs numb!", imageName: "camera", backgroundColor: ColorManager.purple5.cgColor!, foregroundColor: ColorManager.grey1.cgColor!)
                })
          
                
//                NavigationLink(destination: PhotoPopView(user: user, friends: friends), label: {
//                MyRoomRowView(title: "Where are you?", imageName: "camera", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
//                })
          
     
                NavigationLink(
                    destination: BuiltByTeensView(user: user, friends: friends),
                    label: {
                        Text("designed around teens \nby teen girls")
//                            .foregroundColor(Color.white)
//                            .font(.system(size: 16, weight: .light))
                        
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 15))
                            .background(Color .purple)
                                .opacity(0.6)
                            .cornerRadius(12)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
                
                
                
                Spacer()
            }
        }
    }
    
    
    
    
    
    
    private struct MyRoomRowView: View {
        let title, imageName: String
        let backgroundColor, foregroundColor: CGColor
        
        var body: some View {
            ZStack {
                Color(cgColor: backgroundColor)
                
                HStack{
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .scaledToFit()
                        .foregroundColor(Color(cgColor: foregroundColor))
                      
                    
                    
                    Spacer().frame(width: 20)

                    Text(title)
                        .font(.system(size: 24, weight: .light))
                        .foregroundColor(Color(cgColor: foregroundColor))
                }
            }
            .frame(width: 300, height: 60)
            .opacity(0.6)
            .cornerRadius(15)
            .padding()
        }
    }
}


