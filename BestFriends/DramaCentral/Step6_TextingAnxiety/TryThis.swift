//
//  TryThis.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI
import Promises
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
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill().onAppear{
                        print("is this working")
                        getHomeData()
                    }
         
                VStack {
                    Text("While counting the HOURS")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Text("waiting on an")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 30)
                    
                    Text("ANSWER BACK")
                        .font(.system(size: 55))
                        .foregroundColor(.blue)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 80)
                    
//                    Text("*hang out with a friend in Horizons \n*listen to your favorite songs \n*take a walk \n*text a friend \n*watch a funny video \n*eat some chocolate \n*watch a movie")
//                        .font(.system(size: 23))
//                        .italic()
//                        .fontWeight(.light)
//                        .foregroundColor(.white)
//                        .fontWeight(.heavy)
//                        .multilineTextAlignment(.leading)
//                        .padding(.horizontal, 10)
//
//                    Spacer()
//                        .frame(height: 75)
                    
                    VStack {
                        
//                        MARK: want to send this to the new [BestFriendsPlaylists] page
                         NavigationLink(
                            destination: EmptyView(),
                            label: {
                                Text("Listen to your Hideouts Playlist")
                                    .fontWeight(.thin)
                                    .frame(width: 330, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })
                        if homeData != nil {
                        Spacer()
                            .frame(height:25)
                        NavigationLink(
                            destination: HideoutsView(user: self.homeData!.user, atmosphere: self.homeData!.atmosphere, friends: self.homeData!.friends, friendAtmospheres: self.homeData!.friendAtmospheres),
                           label: {
                               Text("Go To Hideouts")
                                   .fontWeight(.thin)
                                   .frame(width: 330, height: 40)
                                   .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                   .font(.system(size: 25))
                                   .background(ColorManager.purple3)
                                   .cornerRadius(15)
                                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                           }).onAppear(perform:{
                               getHomeData()
                           })
                        }
                      
                        
                        Spacer()
                            .frame(height:25)
                        
//                        NavigationLink(
//                            destination: EmptyView(),
                        Button(action: {
                            sessionManager.showHome()
                        },
                           label: {
                               Text("Go to Chat")
                                   .fontWeight(.thin)
                                   .frame(width: 330, height: 40)
                                   .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                   .font(.system(size: 25))
                                   .background(ColorManager.purple3)
                                   .cornerRadius(15)
                                   .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                           })
                      
                        
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


//struct TryThis_Previews : PreviewProvider {
//    static var previews: some View {
//        TryThis()
//    }
//}
