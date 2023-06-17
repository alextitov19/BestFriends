//
//  Apologies.swift
//  BestFriends
//
//  Created by Social Tech on 6/14/22.
//



import Foundation
import SwiftUI


struct BuiltByTeensView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    //    let atmosphere: Atmosphere
    let friends: [User]
    //    let groups: [Group]
    //    let friendAtmospheres: [Atmosphere]
    
    var body: some View {
        ZStack {
            
            Color .black
                .ignoresSafeArea()
                .onAppear()
            
            //            Image("purpleBackground")
            //                 .resizable()
            //                 .ignoresSafeArea()
            //                 .scaledToFill()
            //
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
            VStack {
                
                
//                Text("BestFriends app was desinged to put")
//                    .font(.system(size: 20))
//                    .italic()
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 10)
                
                Text("Putting Smiles on faces")
//                    .italic()
                    .font(.system(size: 30))
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("&")
//                    .italic()
                    .font(.system(size: 30))
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Text("building happier friendships")
                    .font(.system(size: 35))
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 100)
             
//
//                Text("we hope you're enjoying")
//                    .font(.system(size: 20))
//                    .foregroundColor(ColorManager.grey1)
//                    .fontWeight(.thin)
//                    .multilineTextAlignment(.center)
                
                Text("see our story")
                    .font(.system(size: 25))
                    .foregroundColor(ColorManager.grey1)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                VStack {
                    
                    VStack {
                        
//
//
//                        Spacer()
//                            .frame(height: 20)
                        
                        NavigationLink(
                            
                            destination: ShaylaPage(user: user),
                            label: {
                                Text("Team of over \n130 teens worldwide")
                                    .fontWeight(.thin)
                                    .foregroundColor(Color.white)
                                    .frame(width: 300, height: 60)
                                    .font(.system(size: 20))
                                    .background(Color.orange)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                
                            })
                        
                        
                    
                        
                        VStack {
//                            Spacer()
//                                .frame(height: 40)
//
//                            Text("help us make BFs better,")
//                                .font(.system(size: 20))
//                                .foregroundColor(ColorManager.grey1)
//                                .fontWeight(.thin)
//                                .multilineTextAlignment(.center)
//
//                            Text("to help you smile faster")
//                                .font(.system(size: 20))
//                                .foregroundColor(ColorManager.grey1)
//                                .fontWeight(.thin)
//                                .multilineTextAlignment(.center)
//
//                            Spacer()
//                                .frame(height: 20)
//                            //                        Link(destination: URL(string: "https://socialtechlabs.com/surveys/")!)
//                            NavigationLink(
//
//                                destination: SurveyStickersPreload(),
//                                label: {
//                                    Text("Give us Feedback")
//                                        .fontWeight(.light)
//                                        .foregroundColor(Color.white)
//                                        .frame(width: 250, height: 60)
//                                        .font(.system(size: 25))
//                                        .background(ColorManager.pmbc_green)
//                                        .cornerRadius(7)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                                })
//
                            Spacer()
                                .frame(height: 80)
                            
                         
                            
                            NavigationLink(
                                
                                destination: INFOPreload3(user: user),
                                label: {
                                    Text("Free Stickers")
                                        .fontWeight(.light)
                                        .foregroundColor(Color.white)
                                        .frame(width: 250, height: 60)
                                        .font(.system(size: 35))
                                        .background(Color.purple)
                                        .cornerRadius(7)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                })
                            
                            Text("for your laptop")
                                .font(.system(size: 25))
                                .foregroundColor(ColorManager.grey1)
                                .fontWeight(.thin)
                                .multilineTextAlignment(.center)
                            
                            
                            
                            Spacer()
                                .frame(height: 20)
                            
                            //                        Link(destination: URL(string: "https://socialtechlabs.com/reporting-issues-in-bestfriends/")!) {
                            //
                            //                            Text("Report Issues")
                            //                                .fontWeight(.light)
                            //                                .foregroundColor(Color.white)
                            //                                .frame(width: 230, height: 60)
                            //                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            //                                .font(.system(size: 25))
                            //                                .background(ColorManager.pmbc_green)
                            //                                .cornerRadius(10)
                            //                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            //                        }
                            
                            
                            Spacer()
                                .frame(height: 100)
                            
                            
                            
                        }
                    }
                    
                }
            }
        }
    }
    
}
 
