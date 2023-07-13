//
//  GotPushNotification.swift
//  BestFriends
//
//  Created by Social Tech on 7/25/22.
//

import Foundation
import SwiftUI
import AVKit

struct GotPushNotification: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let friends: [User]

   @State private var homeData: HomeData?
//    @State private var groups: [Group] = []
//    @State private var planets: [Planet] = []
//
   @State private var selectedPlanet: Planet?
//
//    @State private var focusPlanet = false
//    @State private var showNewRoomNameDialog = false
//
//    @State private var newGroupMembers: [String] = []
//
//    @State private var chatGroupsView = ChatGroupsView(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: "", chatPin: ""), groups: [])
//
    var body: some View {
        NavigationView {
            
           
            ZStack {
                
                ColorManager.grey4
                    .ignoresSafeArea()
                    .onAppear()
                
                
                // Background Image...
//                Image("purpleBackground")
//                    .resizable()
//                    .scaledToFill()
//                    .ignoresSafeArea()
//                    .onAppear {
////                        if RestApi.instance.needLogin {
////                            sessionManager.showLogin()
////                        } else {
////                            getHomeData()
//                        }
//                    }
//
//                // Stars animation...
//                AdPlayerView(name: "sky2")
//                    .ignoresSafeArea()
////                    .scaledToFill()
//                    .blendMode(.screen)
////                    .onTapGesture(perform: backgroundTapped)

            
                VStack {
                    
                }
if selectedPlanet != nil {
    if homeData!.groups.count > 0 {
        NavigationLink(destination: UrgentChatInvite(user: homeData!.user, owner: homeData!.user, group: homeData!.groups[0]),
                       label: {
            Text("Urgent Chat Invite")
                .fontWeight(.light)
                .frame(width: 210, height: 30)
                .foregroundColor(.white)
                .background(ColorManager.purple1)
                .cornerRadius(15)
                .opacity(0.4)
        })
    }
    Spacer().frame(height: 10)
    
    NavigationLink(destination: Friend1VaultPractice(user: homeData!.user, friend: selectedPlanet!.user, friends: homeData!.friends, groups: homeData!.groups, friendAtmosphere: selectedPlanet!.atmosphere),
                   label: {
        Text("Changed Atmosphere")
            .fontWeight(.light)
            .frame(width: 210, height: 27)
            .foregroundColor(.white)
            .background(ColorManager.purple1)
            .cornerRadius(15)
            .opacity(0.4)
            .onAppear(perform: {print("Selected: ", selectedPlanet!.user)})
    })
   
    Spacer().frame(height: 10)
   
    
    HStack {
        NavigationLink(destination: WhoFighting(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere),
                   label: {
        Text("FIGHT")
            .fontWeight(.light)
            .frame(width: 100, height: 30)
            .foregroundColor(.white)
            .background(ColorManager.purple1)
            .cornerRadius(15)
            .opacity(0.4)
    })

        
        NavigationLink(destination: WhoFighting(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups, atmosphere: homeData!.atmosphere),
                   label: {
        Text("Mediator")
            .fontWeight(.light)
            .frame(width: 100, height: 30)
            .foregroundColor(.white)
            .background(ColorManager.purple1)
            .cornerRadius(15)
            .opacity(0.4)
    })
    }
    
    
    
//                        NavigationLink(destination: WhoFighting(user: homeData!.user, friends: homeData!.friends, groups: homeData!.groups),
//                                       label: {
//                            Text("Drama ALERT")
//                                .fontWeight(.light)
//                                .frame(width: 210, height: 30)
//                                .foregroundColor(.white)
//                                .background(ColorManager.purple1)
//                                .cornerRadius(15)
//                                .opacity(0.4)
//                        })
    Spacer()
        .frame(height: 10)
   
    HStack {
    NavigationLink(destination: VirtualHug(user: user, friends: friends),
                   label: {
        Text("Got HUG")
            .fontWeight(.light)
            .frame(width: 100, height: 30)
            .foregroundColor(.white)
            .background(ColorManager.purple1)
            .cornerRadius(15)
            .opacity(0.4)
    })

    
    NavigationLink(destination: ReceivedPlaylist(),
                   label: {
        Text("Got SONG")
            .fontWeight(.light)
            .frame(width: 100, height: 30)
            .foregroundColor(.white)
            .background(ColorManager.purple1)
            .cornerRadius(15)
            .opacity(0.4)
    })
    }
    Spacer().frame(height:10)
    
    NavigationLink(destination: EmptyView(),
                   label: {
        Text("Invited to Horizons")
            .fontWeight(.light)
            .frame(width: 210, height: 30)
            .foregroundColor(.white)
            .background(ColorManager.purple1)
            .cornerRadius(15)
            .opacity(0.4)
    })
    
}
            }
        }
    
}
}
