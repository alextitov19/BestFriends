//
//  TextingFirst.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI


struct Step6_TextingFirst: View {
    
    let user: User
    let friends: [User]
        
    var body: some View {
        ZStack {
            
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
 
            ColorManager.grey2
                  .ignoresSafeArea()
          
            // Stars animation...
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
           
                Text("Reach out 1st via")
                .font(.system(size: 40, weight: .ultraLight))
                .foregroundColor(Color.purple)
            
                Text("T E X T")
                    .font(.system(size: 50, weight: .ultraLight))
                    .foregroundColor(Color.purple)
                Spacer()
                    .frame(height: 20)
                
               
                Text("Not sure what to say?")
                .font(.system(size: 20, weight: .thin))
                .italic()
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15)
                
                VStack {
                    Link(destination: URL(string: "https://socialtechlabs.com/applink/")!) {
                        
                        Text("Here are some ideas")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.pmbc_blue)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                   
                    
                    Text("Now that you typed your \nmessage in Chat let's make \nsure they get it.")
                    .font(.system(size: 20, weight: .thin))
                    .italic()
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)

                    Spacer()
                        .frame(height: 20)
                    
                    Text("Send Push Notification in Step 5")
                    .font(.system(size: 20, weight: .thin))
                    .italic()
                    .foregroundColor(Color.purple)
                    .multilineTextAlignment(.center)
                    
                    VStack {
                        Spacer()
                            .frame(height: 15)
                        
                        
                        VStack {
                            
                            NavigationLink(
                                
                                destination: Step2_FightLandingView(user: user, friends: friends),
                                label: {
                                    Text("Next_Step 5")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 200, height: 40)
                                        .font(.system(size: 25))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                }
                            )}
                        

                        Spacer()
                            .frame(height: 150)

//                        Text("While waiting for a reply")
//                        .font(.system(size: 30, weight: .thin))
//                        .foregroundColor(Color.white)
//                        .multilineTextAlignment(.center)
//
//
//                        Spacer()
//                            .frame(height: 20)
//                    }
//
//                }
//
//                VStack {
//
//                    NavigationLink(
//                        destination: TryThis(),
//                        label: {
//                            Text("Try These")
//                                .fontWeight(.thin)
//                                .foregroundColor(Color.white)
//                                .frame(width: 150.0, height: 40)
//                                .font(.system(size: 30))
//                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//                        }
//                    )}
//                Spacer()
//                    .frame(height: 40)
//
//                VStack {
//
//                    NavigationLink(
//                        destination: Step7_TimeToTalk(),
//                        label: {
//                            Text("Who is Fight with?")
//                                .fontWeight(.thin)
//                                .frame(width: 300, height: 40)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 30))
//                                .background(ColorManager.purple3)
//                                .cornerRadius(15)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//
//
//                        })
//
//
                    
                    
                }
                
            }
        }
        
    }
}

    }

//struct TextingFirst_Previews : PreviewProvider {
//    static var previews: some View {
//        Step6_TextingFirst()
//    }
//}



