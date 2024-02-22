//
//  TimeToTalk.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//
import Foundation

import SwiftUI
import AVKit

struct Step7_TimeToTalk: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
                .onAppear {
//                .onAppear(perform: initLoadData)
//                        Image("Friend1Box")
      }

        VStack {
              
            ZStack {
                    
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(ColorManager.purple3)
                    .frame(width: 375, height: 375)
                    .blur(radius: 2)
                    .shadow(color: .orange, radius: 65, x: 40, y: 50)
                    
                    
                    
                Image(systemName: "triangle.fill")
                    .resizable()
                    .foregroundColor(ColorManager.grey2)
                    .frame(width: 300, height: 300)
                    .blur(radius: 2)
                    .shadow(color: .orange, radius: 65, x: 40, y: 50)
                    
                    
                    VStack {
                        
                  
                        Text("HUG \n-it- \nOUT")
                            .font(.system(size: 40))
                            .foregroundColor(.purple)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                       
                        Spacer ()
                            .frame(height: 50)
                        
                        Text("Get Back to Being Friends")
                            .font(.system(size: 23))
                            .italic()
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                      
                           
                    }
                }
            VStack {
            Text("When you're Ready")
                .font(.system(size: 30))
                .fontWeight(.thin)
                .foregroundColor(Color.black)
           
            Text("set a time to meet")
                .font(.system(size: 30))
                .fontWeight(.thin)
                .foregroundColor(Color.black)
           


        
                VStack {
                    
//                   MARK: Set navigation back to HomeView
                    
                    Button(action: {
                        sessionManager.showLogin()
                    },
                        label: {
                            Text("Home / Chat")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                    

                }
          }

                    Spacer()
                        .frame(height: 200)
                   

                    }
                }
            }
        }
    










struct Step7_TimeToTalk_Previews : PreviewProvider {
    static var previews: some View {
        Step7_TimeToTalk()
    }
}


//                    VStack {
//
//                        Button(action: {
//                            sessionManager.reloadHome()
//                        }, label: {
//                            Text("HOME")
//                                .fontWeight(.thin)
//                                .frame(width: 100, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//
//                        })
                            
//                        NavigationLink(
//                            destination: EmptyView(),
//                            label: {
//
//                        Link(destination: URL(string: "https://socialtechlabs.com/did-bluemode-help/")!) {
//                                Text("Let us know. Did this HELP?")
//                                    .fontWeight(.thin)
//                                    .frame(width: 310, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 27))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
