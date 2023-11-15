//
//  RR40Info2.swift
//  BestFriends
//
//  Created by Robert Roe on 10/12/23.
//

import Foundation

import Combine
import SwiftUI
import ConfettiSwiftUI
import AVKit


struct RR40Info2: View {
    
    @EnvironmentObject var sessionManager: SessionManager
 
    let user: User
   let atmosphere: Atmosphere
    let friends: [User]
   let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    @State private var selectedFriends: [String] = []
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    
    @State private var counter = 0
    
    var body: some View {
        ZStack {
            
            
            if shareTapped {
                
                
                
                Color.black
                    .ignoresSafeArea()
                    .onAppear()
                
                
                AdPlayerView(name: "dramaLights")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
            } else {
                
                Color.black
                    .opacity(0.9)
                    .ignoresSafeArea()
                
                
                AdPlayerView(name: "sky2")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
                
            }
            
      
 
VStack {
            
     
     
        
VStack {

        Spacer ()
            .frame(width: 120)
        
    ZStack {
        
        Image(systemName: "cube.fill")
            .resizable()
            .foregroundColor(Color.purple)
            .frame(width: 350, height: 120)
            .shadow(color: ColorManager .purple3, radius: 65, x: 30, y: 50)
            .opacity(0.5)
      
        VStack {
            
            
            Text("Building reselient friendships")
                .font(.system(size: 25, weight: .light))
                .foregroundColor(ColorManager .grey1)
                .opacity(0.5)
          
            Text("Sharing Emotions")
                .font(.system(size: 40, weight: .light))
                .foregroundColor(ColorManager .grey1)
                .opacity(0.7)
            
        }
    }

//  ************************************************************
        HStack {

                Image("")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .opacity(0.9)

            
            Spacer()
                .frame(width: 10)
            
            ZStack {

                
                NavigationLink( destination: RR32(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres, groups: groups),
                                label: {
                    Image("iconVibes75")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75, height: 75)
                        .foregroundColor(Color.purple)
                        .glow(color: ColorManager.purple3, radius: 1.5)
                        .opacity(0.8)
                })
            }
            
            ZStack {
                
                
                Image("comicBubble")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .frame(width: 350, height: 160)
                    .shadow(color: ColorManager .purple3, radius: 3, x: 3, y: 3)
                    .opacity(0.95)
                
                VStack {
                    
                    Text("Sharing 'my Vibe'")
                        .font(.system(size: 25))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.cyan)
                    
                    Text("with BFFs")
                        .font(.system(size: 25))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.cyan)
                    
             
                    
              

                    
                }
            }
        }
         
//                **************  CareHearts **************************
        
      HStack {

              Image("")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 20, height: 20)
                  .opacity(0.9)
          
          Spacer()
              .frame(width: 25)
          
          ZStack {

              
              NavigationLink( destination: HugPreload(user: user, friends: friends, groups: groups, atmosphere: atmosphere, friendAtmospheres: friendAtmospheres),
                              label: {
                  ZStack {
                      Image(systemName: "circle.fill")
                          .resizable()
                          .scaledToFit()
                          .frame(width: 65, height: 65)
                          .foregroundColor(Color.cyan)
                          .opacity(0.95)
                
                      
                      Image(systemName: "heart.fill")
                          .resizable()
                          .scaledToFit()
                          .frame(width: 40, height: 40)
                          .foregroundColor(Color.purple)
                          .glow(color: Color.white, radius: 0.3)
                          .shadow(color: .white, radius: 1, x: 3, y: -0.5)
                          .opacity(0.95)
                  }
              })
          }
          
          ZStack {
              
              
              Image("comicBubble")
                  .resizable()
                  .foregroundColor(Color.cyan)
                  .frame(width: 320, height: 160)
                  .shadow(color: ColorManager .purple3, radius: 3, x: 3, y: 3)
                  .opacity(0.95)
              
              VStack {
                  
                  Text("CareHearts")
                      .font(.system(size: 27))
                      .fontWeight(.light)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color.cyan)
                  
             

                  Text("sharing life's moments")
                      .font(.system(size: 14))
                      .fontWeight(.light)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color.white)
                 
                  Spacer()
                      .frame(height: 20)
                  
              }
          }
      }

           
//                ************ PhotoPOP ***********************************

        
        HStack {
            
            Spacer ()
                .frame(width: 20)
            
            
            ZStack {

                NavigationLink(destination: PhotoPopView(user: user, friends: friends),
                               label: {
                    Image("IconPhotoNew")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65, height: 65)
                        .rotationEffect(.degrees(-7))
                        .foregroundColor(ColorManager .purple5)
                        .glow(color: Color.purple, radius: 2)
                        .opacity(0.9)
                })
            }
            
            ZStack {
                
                
                Image("comicBubble")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .frame(width: 290, height: 130)
                    .shadow(color: ColorManager .purple3, radius: 3, x: 3, y: 3)
                    .opacity(0.95)
                
                VStack {
                    
                    Text("Sharing Images")
                        .font(.system(size: 25))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.cyan)
                    
                    Text("'shake' iPhone to view")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                }
            }
            
         
                    }
        
        HStack {
            
            Spacer ()
                .frame(width: 120)
         
            Image("iconThumbUp")
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .rotationEffect(.degrees(-30))
                .foregroundColor(ColorManager .purple5)
                .glow(color: Color.purple, radius: 2)
                .opacity(0.9)
            
                    VStack {
                        
                        Text("Leave Notifications 'ON'")
                            .font(.system(size: 17))
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.cyan)
                            .rotationEffect(.degrees(-10))
                        
                        Text("for real-time friendships")
                            .font(.system(size: 13))
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .rotationEffect(.degrees(-10))
                            .foregroundColor(Color.white)
                        
                        
                        Spacer()
                            .frame(height: 20)
                    }
                }
        
        
        VStack {
                                        
            Spacer()
                .frame(height: 40)
          
                            }
                        }
                    }
                }
            }

   
        
        func shareButtonTapped() {
            shareMood()
            
            if selectedFriends.count == 0 { return }
            for id in selectedFriends {
                for f in friends {
                    if f.id == id {
                        RestApi.instance.sendPushNotification(title: "BestFriends", body: " \(user.firstName) day just changed! Check their atmosphere color in BFs to see what's up.", APNToken: f.APNToken)
                        
                        //MARK: The code below creates an in-app notification for your friend (f.id)
                        //MARK: DO NOT CHANGE THE TEXT OF THE NOTIFICATION, otherwise the code to take the user to a diffrent page will not work. Once you set it, do not change it.
                        RestApi.instance.createInAppNotification(ian: InAppNotification(user: f.id, sender: user.id, text: "day just changed! Check their atmosphere color in BFs to see what's up.", createdOn: Int64(Date().timeIntervalSince1970))).then({ response in
                            print("Create a Vibe notification response code: ", response)
                        })
                        RestApi.instance.createStreakLog(friendID: f.id)
                    }
                }
            }
            shareColor = ColorManager.darkGrey
            showingAlert = true
            
        }
        
        private func shareMood() {
            RestApi.instance.createMoodLog(mood: mood, summary: summary, friends: sharedWith).then({ moodLog in
                print("Got mood log: ", moodLog)
                var m = atmosphere.moodLogs ?? []
                m.append(moodLog.id)
                let atm = Atmosphere(id: atmosphere.id, planet: atmosphere.planet, mood: mood, moodLogs: m)
                RestApi.instance.updateAtmosphere(atmosphere: atm).then({ response in
                    if response == 200 {
                        print("Successfully updated atmosphere")
                        for i in sharedWith {
                            for f in friends {
                                if i == f.id {
                                    RestApi.instance.sendPushNotification(title: "BestFriends - 'Vibe'", body: "\(user.firstName): Your friend's day just changed! Please take a moment to check on them.", APNToken: f.APNToken )
                                }
                            }
                            mood = -1
                            summary = ""
                            sharedWith = []
                        }
                    } else {
                        print("Failed to update atmosphere")
                    }
                })
            })
        }
        
        private func limitText(_ upper: Int) {
            if summary.count > upper {
                summary = String(summary.prefix(upper))
            }
        }
        
        
        
        private struct RectView: View {
            let user: User
            let friend: User
            let color: Color
            
            var body: some View {
                Text(friend.firstName + " " + String(friend.lastName.first!))
                    .fontWeight(.bold)
                    .frame(width: 75, height: 57)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 8))
                    .background(color)
                    .cornerRadius(75)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            }
            
            
            
        }
        
        private func defaultMessageButtonTapped(defaultMessage: String) {
            self.colorChangeTap = defaultMessage
        }
    }
    
    

