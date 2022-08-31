//
//  TryThis.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI
import Promises
//import AVKit


struct TryThis: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    @State private var homeData: HomeData?
    init() {
        print("is this working")
          getHomeData()
       }
    var body: some View {
       
//        NavigationView {
            
            ZStack {
                
                ColorManager.grey2
                      .ignoresSafeArea()
//                Image("blueBackground")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .scaledToFill()
                
                    .onAppear{
                        print("is this working")
                        getHomeData()
//
//                AdPlayerView(name: "face")
//                    .ignoresSafeArea()
//                    .blendMode(.screen)
//
                    
                    
                    }
         
                VStack {
                    Text("While counting the hours")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Text("waiting on an")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 20)
                    
                    Text("ANSWER BACK")
                        .font(.system(size: 45))
                        .foregroundColor(.blue)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text("*listen to your favorite songs \n*take a walk \n*watch a funny video \n*watch a movie \n*hangout with friends in Chat")
                        .font(.system(size: 17))
                        .italic()
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 10)

                    Spacer()
                        .frame(height: 30)
                    
                    VStack {
                        
//
//                        if homeData != nil {
//                      
//                        NavigationLink(
//                            destination: HideoutsView(user: self.homeData!.user, atmosphere: self.homeData!.atmosphere, friends: self.homeData!.friends, friendAtmospheres: self.homeData!.friendAtmospheres),
//                           label: {
//                               Text("Go to [My Room]")
//                                   .fontWeight(.thin)
//                                   .frame(width: 200, height: 40)
//                                   .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                   .font(.system(size: 25))
//                                   .background(ColorManager.purple5)
//                                   .cornerRadius(15)
//                                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                           }).onAppear(perform:{
//                               getHomeData()
//                           })
//                        }
                      
                        Spacer()
                            .frame(height:20)
                        
//                        Button(action: {
//                            sessionManager.showLogin()
//                        },
//                            label: {
//                                Text("Home")
//                                    .fontWeight(.thin)
//                                    .frame(width: 200, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 30))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            })
                       
                        
                      
                        Spacer()
                            .frame(height: 130)
                }
            }
                    
            }.onAppear{
                getHomeData()
            }
    }
    private func getHomeData() {
        RestApi.instance.getHomeData().then{ data in
            print("Got HomeData: ", data)
            homeData = data
        }.catch { err in
            print("Got error")
            print(err)
        }
        
    }
        
}

