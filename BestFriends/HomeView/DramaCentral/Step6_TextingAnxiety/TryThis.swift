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
                
                        ColorManager.grey4
                            .ignoresSafeArea()
                            .onAppear()
                       
                        VStack {
                            
                            ZStack {
                               
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .foregroundColor(Color.orange)
                                    .frame(width: 400, height: 400)
                                    .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                                    .opacity(0.95)
                                VStack {
                                    Text("waiting to hear back after a fight")
                                        .font(.system(size: 25))
                                        .foregroundColor(ColorManager .grey4)
                                        .fontWeight(.thin)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 0)
                                    
                                    Spacer()
                                        .frame(height: 20)
                                    
                                    Text("waiting on your exam grade")
                                        .font(.system(size: 25))
                                        .foregroundColor(ColorManager .grey4)
                                        .fontWeight(.thin)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 0)
                                    
                                    Spacer()
                                        .frame(height: 20)
                                    
                                    Text("waiting on CareHearts \nfrom friends on bad day")
                                        .font(.system(size: 25))
                                        .foregroundColor(ColorManager .grey4)
                                        .fontWeight(.thin)
                                        .multilineTextAlignment(.center)
                                        .padding(.horizontal, 0)
                               
                                }
                            }
                            
                            
                            NavigationLink(
                                destination: EmptyView(),
                                label: {
                                    Text("Friendships Highlights Start Slide Show")
                                        .fontWeight(.thin)
                                        .frame(width: 275, height: 60)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 30))
                                        .background(ColorManager.pmbc_blue)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                          
                            
                            
                            
                            NavigationLink(
                                destination: BreathInView(),
                                label: {
                                    Text("Breathe")
                                        .fontWeight(.thin)
                                        .frame(width: 275, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 30))
                                        .background(ColorManager.pmbc_blue)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                         
                            
                            
                            
                            
                            Text("________________________________")
                                .font(.system(size: 25))
                                .foregroundColor(ColorManager .grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 0)
                            
                            //                NavigationLink(destination: BestFriendMessages(user: user, atmosphere: atmosphere, friends: friends, friendAtmospheres: friendAtmospheres), label: {
                            //                MyRoomRowView(title: "SmileVault", imageName: "sun.max.fill", backgroundColor: ColorManager.purple2.cgColor!, foregroundColor: ColorManager.purple4.cgColor!)
                            //                })
                            
                            
//
//                            NavigationLink(
//                                destination: BreathInView(),
//                                label: {
//                                    Text("SmileVault")
//                                        .fontWeight(.thin)
//                                        .frame(width: 310, height: 40)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 30))
//                                        .background(ColorManager.pmbc_blue)
//                                        .cornerRadius(15)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                })
//
//                            NavigationLink(
//                                destination: BreathInView(),
//                                label: {
//                                    Text("Affirmations / Motivations")
//                                        .fontWeight(.thin)
//                                        .frame(width: 310, height: 40)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 30))
//                                        .background(ColorManager.pmbc_blue)
//                                        .cornerRadius(15)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                })
//
//                            NavigationLink(
//                                destination: BreathInView(),
//                                label: {
//                                    Text("Friendship Highlights")
//                                        .fontWeight(.thin)
//                                        .frame(width: 310, height: 40)
//                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                        .font(.system(size: 30))
//                                        .background(ColorManager.pmbc_blue)
//                                        .cornerRadius(15)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                })
//
                            
                            Spacer()
                                .frame(height: 120)
                            
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
                    }
         
                VStack {
                     
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

