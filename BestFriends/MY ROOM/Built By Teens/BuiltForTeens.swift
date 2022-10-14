//
//  BuiltForTeens.swift
//  BestFriends
//
//  Created by Social Tech on 8/30/22.
//



import Foundation
import SwiftUI


struct BuiltForTeens: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
//    let user: User
//    let atmosphere: Atmosphere
//    let friends: [User]
//    let groups: [Group]
//    let friendAtmospheres: [Atmosphere]
//    
    var body: some View {
        ZStack {
//            ColorManager.grey3
//                .ignoresSafeArea()
//                .onAppear()
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
//            AdPlayerView(name: "Planet6")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
//            AdPlayerView(name: "Atmosphere2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
            
            VStack {
//                Text("the 'Zen Masters'")
//                    .font(.system(size: 35, weight: .bold))
//                    .foregroundColor(.green)
//                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                    .opacity(0.50)
////                    .foregroundColor(ColorManager.purple5)
////                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
//                
//                Text("of social media")
//                    .font(.system(size: 35, weight: .bold))
//                    .foregroundColor(.green)
//                    .shadow(color: .black, radius: 1, x: 0, y: 1)
//                    .opacity(0.50)
////                    .foregroundColor(ColorManager.purple5)
////                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
                
                Text("doing our best to ")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.green)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
//                    .foregroundColor(ColorManager.purple5)
//                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)

                
                Text("help you build")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.green)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
//                    .foregroundColor(ColorManager.purple5)
//                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 45)
                
            VStack {
                    
                
//                Text("help you build")
//                    .font(.system(size: 30))
//                
//                    .foregroundColor(Color.white)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
//                
              
              
                Text("kickass,")
                    .font(.system(size: 35))
                
                    .foregroundColor(ColorManager.purple5)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("resilient,")
                    .font(.system(size: 40))
                
                    .foregroundColor(ColorManager.purple4)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
               
                Text("supportive")
                    .font(.system(size: 45))
                
                    .foregroundColor(ColorManager.purple3)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Text("and yep - lasting")
                    .font(.system(size: 48))
                
                    .foregroundColor(ColorManager.purple2)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
            
                    
                
                Spacer()
                    .frame(height: 15)
                
                Text("FRIENDSHIPS")
                    .font(.system(size: 63))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
               
                Spacer()
                    .frame(height:120)
            
                    VStack {


                        Link(destination: URL(string: "https://socialtechlabs.com/teen-team/")!) {
                                Text("Meet some of our Teens")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .background(ColorManager.pmbc_blue)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    .opacity(0.8)

                        }

                        Spacer()
                            .frame(height: 20)
                        
                        Link(destination: URL(string: "https://socialtechlabs.com/our-story/")!) {
                            
                            Text("Our Story")
                                .fontWeight(.thin)
                                .frame(width: 250, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        
                     
                        
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 75)
                        
//                        Text("Be First")
//                            .font(.system(size: 45))
//
//                            .foregroundColor(ColorManager.orange2)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//
//                        Text("See new features before release!")
//                            .font(.system(size: 23))
//                            .italic()
//                            .foregroundColor(ColorManager.orange2)
//                            .fontWeight(.light)
//                            .multilineTextAlignment(.center)
//
//                        NavigationLink(
//                            destination: BetaTestVideo(),
//                            label: {
//                                Text("I want to get Involved!")
//                                    .fontWeight(.thin)
//                                    .frame(width: 310, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 30))
//                                    .background(ColorManager.pmbc_blue)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                            })
//
                      
                 
                        
                    }
                }
                
            }
}
    }
}
        
    
    


