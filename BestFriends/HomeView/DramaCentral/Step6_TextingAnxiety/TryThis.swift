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
    
    
//    let user: User
//    let friends: [User]
    
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
                    Text("waiting to hear back after a fight")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Text("waiting on your exam grade")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Text("waiting on CareHearts from friends on bad day")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 20)
              
                   
                    VStack {
//
                 
                    
                
                    
                   
                        
                Button(action: {sessionManager.showLogin() },
                    label: {
                        Image("home-alt2")
                        .frame(width: 50, height: 25)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .background(ColorManager .grey2)
                        .cornerRadius(15)
                        .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                        .opacity(0.70)
                        
                                                                         })
                        Spacer()
                            .frame(height:20)

                        
                      
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

