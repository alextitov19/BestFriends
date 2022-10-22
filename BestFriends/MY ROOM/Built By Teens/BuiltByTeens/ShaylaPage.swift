//
//  ShaylaPage.swift
//  BestFriends
//
//  Created by Social Tech on 10/20/22.
//



import Foundation
import SwiftUI


struct ShaylaPage: View {
    
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
            
            Image("ShaylaBest")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            
//            AdPlayerView(name: "sky2")
//                .ignoresSafeArea()
//                .blendMode(.screen)

            
            VStack {
         
                Text("Shayla, at age 16 ")
//                    .font(.system(size: 25, weight: .bold))
                    .font(.system(size: 35, weight: .bold))
                    .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
//                    .foregroundColor(ColorManager.purple5)
//                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)

                
                Text("was our original")
//                    .font(.system(size: 25, weight: .bold))
                    .font(.system(size: 40, weight: .bold))
                 .foregroundColor(ColorManager .grey1)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .opacity(0.50)
//                    .foregroundColor(ColorManager.purple5)
//                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15)
                
                Text("V I S I O N A R Y")
                    .font(.system(size: 57))
                
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 10)
                
            VStack {
                    
            
                Spacer()
                    .frame(height: 100)
            
                    VStack {

//
//                        Link(destination: URL(string: "https://socialtechlabs.com/teen-team/")!) {
//                                Text("Meet some of our Teens")
//                                    .fontWeight(.thin)
//                                    .frame(width: 310, height: 40)
//                                    .font(.system(size: 30))
//                                    .foregroundColor(.white)
//                                    .background(ColorManager.pmbc_blue)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                    .opacity(0.8)
//
//                        }

                        Spacer()
                            .frame(height: 120)
                        
                        Link(destination: URL(string: "https://socialtechlabs.com/our-story/")!) {
                            
                            Text("Her Story")
                                .fontWeight(.thin)
                                .frame(width: 200, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 25))
                                .background(ColorManager.pmbc_green)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Link(destination: URL(string: "https://socialtechlabs.com/teen-team/")!) {
                                Text("Meet some of our Teens")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .background(ColorManager.pmbc_green)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    .opacity(0.8)

                        }

                        Spacer()
                            .frame(height: 15)
                        
                        NavigationLink(
                            destination: BuiltForTeens(),
                            label: {
                                Text("Zen-masters of social media")
                                    .fontWeight(.thin)
                                    .frame(width: 310, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 25))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            })//NavLink
                       
                        Spacer()
                            .frame(height: 15)
//
//                        Button(action: {
//                            sessionManager.showLogin()
//                        },
//                            label: {
//                                Text("Home")
//                                    .fontWeight(.thin)
//                                    .frame(width: 100, height: 40)
//                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                    .font(.system(size: 30))
//                                    .background(ColorManager.purple3)
//                                    .cornerRadius(15)
//                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                            })
//                        

                        NavigationLink(
                            destination: BuiltForTeens(),
                            label: {
                                Text("Next")
                                    .fontWeight(.thin)
                                    .frame(width: 100, height: 40)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.system(size: 30))
                                    .background(ColorManager.purple3)
                                    .cornerRadius(15)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                            })
                        
                 
                    }
                }
                
            }
}
    }
}
        
    
    


