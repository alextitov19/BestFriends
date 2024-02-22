//
//  TeenBoysUsing.swift
//  BestFriends
//
//  Created by Social Tech on 12/1/22.
//

import Foundation
import SwiftUI

struct TeenBoysUsing: View {
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
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
        //        ScrollView {
        
        ZStack {
            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                
                ZStack {
                    Image("comicBubble")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 430, height: 200)
                        .shadow(color: ColorManager .purple2, radius: 3, x: 3, y: 3)
                        .rotationEffect(.degrees(-10))
                        .opacity(0.95)
                        .blinking(duration: 2.0).blinking(duration: 3.0)
                    
                    
                    VStack {
                        
                        VStack {
                            
                            
                            
                            Text("Non-toxic")
                                .font(.system(size: 35))
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.cyan)
                                .rotationEffect(.degrees(-10))
                                .blinking(duration: 2.0)
                    
                      
                            Text("No feelings of...")
                                .font(.system(size: 15))
                                .italic()
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color.white)
                                .blinking(duration: 2.0)
                            
                            
                            Text("I'm not good enough")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .rotationEffect(.degrees(-10))
                                .foregroundColor(Color.white)
                                .blinking(duration: 2.0)
                            
                            
                        }
                    }
                }
                
                ZStack {
                    
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 450, height: 450)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.3)
                    
                    VStack {
                   
                        Text("Now you can...")
                            .font(.system(size: 35))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .opacity(0.4)
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Let the outside of you")
                            .font(.system(size: 27))
                            .italic()
                            .multilineTextAlignment(.center)
                        
                        Text("match the inside of you")
                            .font(.system(size: 27))
                            .italic()
                            .multilineTextAlignment(.center)
                        
                        
                        Text("on social media")
                            .font(.system(size: 27))
                            .italic()
                            .multilineTextAlignment(.center)
                      
                        Spacer()
                            .frame(height: 20)
                        
    VStack {
//                            ******************

                            
//        Link(destination: URL(string: "https://socialtechlabs.com/our-story/")!) {
//
//            Text("Our Story")
//                .fontWeight(.thin)
//                .frame(width: 200, height: 40)
//                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                .font(.system(size: 25))
//                .background(Color.cyan)
//                .cornerRadius(15)
//                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//        }
        
        
        
                    Spacer()
                        .frame(height: 10)
                                
                                Link(destination: URL(string: "https://socialtechlabs.com/social-media-influencers/")!) {
                                    
                                    Text("Supporting Influencers")
                                        .fontWeight(.thin)
                                        .frame(width: 270, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 25))
                                        .background(Color.cyan)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
        
           
                                
                            }
                        }
                        
                Spacer()
                    .frame(height: 20)
                        
                        VStack {
                            
                            Button(action: {
                                sessionManager.showLogin()
                            },
                                   label: {
                                Image("home-alt2")
                                    .frame(width: 60, height: 30)
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .background(ColorManager .grey3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(.gray), radius: 1, x: 0, y: 2.5)
                                    .opacity(0.70)
                                
                            })
                        }
                        
                        
                        
                    }
                }
                
 
                        
                        Spacer()
                            .frame(height: 40)
                        
                    }
                    
                }
                
            }
        }
//    }

        




















//
//import Foundation
//import SwiftUI
//
//
//struct TeenBoysUsing: View {
//
//    @EnvironmentObject var sessionManager: SessionManager
//
//    //    let user: User
//    //    let atmosphere: Atmosphere
//    //    let friends: [User]
//    //    let groups: [Group]
//    //    let friendAtmospheres: [Atmosphere]
//    //
//    var body: some View {
//        ZStack {
//
//
//            //            Image("ShaylaBest")
//            //                .resizable()
//            //                .ignoresSafeArea()
//            //                .scaledToFill()
//
//
//
//            Color .black
//                .ignoresSafeArea()
//                .onAppear()
//
//            //            Image("purpleBackground")
//            //                .resizable()
//            //                .ignoresSafeArea()
//            //                .scaledToFill()
//
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .opacity(0.75)
//
//
//            VStack {
//
//
//
//                Link(destination: URL(string: "https://www.cnn.com/2022/11/29/health/men-friendships-wellness/index.html")!) {
//
//                    Text("Stanford University Study")
//                        .fontWeight(.thin)
//                        .frame(width: 310, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 25))
//                        .background(ColorManager.pmbc_green)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                }
//
//                VStack {
//
//                }
//                Text("We felt it necessary to address this issue. It is the issue of teen boys that we conduct interviews with when asked if they would use the app on a scale of 1 to 10 (ten being yes) we consistently get a ranking of 4.")
//                    .font(.system(size: 15, weight: .thin))
//                    .foregroundColor(ColorManager .grey1)
//                    .shadow(color: .black, radius: 1, x: 0, y: 1)
////                    .multilineTextAlignment(.center)
//                    .padding(15)
//
//
//                Text("However, when we ask them if they would use the app if invited by a girl they almost always say, yes.")
//                    .font(.system(size: 15, weight: .thin))
//                    .foregroundColor(ColorManager .grey1)
//                    .shadow(color: .black, radius: 1, x: 0, y: 1)
////                    .multilineTextAlignment(.center)
//                    .padding(15)
//
//                Text("In a current study by Stanford University, it was found the only 1 in 5 teen boys have a male friend that they can talk to about more personal topics. The reasons for this are well documented from both a neuroscience and societal prospective. ")
//                    .font(.system(size: 15, weight: .thin))
//                    .foregroundColor(ColorManager .grey1)
//                    .shadow(color: .black, radius: 1, x: 0, y: 1)
////                    .multilineTextAlignment(.center)
//                    .padding(15)
//
//
//
//
//
//                    Text("The intent of this app, and all the dedicated high school and college interns that have worked tirelessly, is too simply provide a platform to promote more resilient friendships and reduce some of the drama that occurs in friend groups thereby promoting good mental health in teens worldwide. ")
//                        .font(.system(size: 15, weight: .thin))
//                        .foregroundColor(ColorManager .grey1)
//                        .shadow(color: .black, radius: 1, x: 0, y: 1)
////                        .multilineTextAlignment(.center)
//                        .padding(15)
//
//
//                    Text("All we are trying to say is that if you do get the chance to be invited by a teen girl to join her friend group, we sincerely hope you take advantage of this opportunity. ")
//                        .font(.system(size: 15, weight: .thin))
//                        .foregroundColor(ColorManager .grey1)
//                        .shadow(color: .black, radius: 1, x: 0, y: 1)
////                        .multilineTextAlignment(.center)
//                        .padding(15)
//
//
//                    Text("")
//                        .font(.system(size: 15, weight: .thin))
//                        .foregroundColor(ColorManager .grey1)
//                        .shadow(color: .black, radius: 1, x: 0, y: 1)
//                        .multilineTextAlignment(.center)
//                        .padding()
//
//
//
//
//
//                    //
//                    //                Spacer()
//                    //                    .frame(height: 50)
//                    //
//
//                }
//            }
//
//        }
//    }
//
//
//
//
//
