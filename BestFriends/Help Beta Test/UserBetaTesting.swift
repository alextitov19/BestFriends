//
//  UserBetaTesting.swift
//  BestFriends
//
//  Created by Social Tech on 5/23/22.
//


import Foundation

import SwiftUI

struct UserBetaTesting: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
//            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
//                .ignoresSafeArea()

           Image("HomeBackground2")
               .resizable()
                .ignoresSafeArea()
                .scaledToFill()

//            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
//                .ignoresSafeArea()
//
//              Image("settingsBackground")
//                  .resizable()
//                  .ignoresSafeArea()
//                  .scaledToFill()
//
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
//                            .colorInvert()
                           .rotationEffect(Angle(degrees: 180))
                    }
                    
                    Spacer()
                    
                    Text("Asking For Your Help")
                        .font(.system(size: 30))
                        .fontWeight(.thin)
//                        .offset(x: -25)
//                        .fontWeight(.thin)
                        .foregroundColor(.white)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                    Spacer()
                        .frame(height: 70)
                
                
                Divider()
                    .foregroundColor(.white)
                
                Link(destination: URL(string: "https://socialtechlabs.com/beta-tester-_-bestfriends-app/")!) {
                    
                    HStack {
                        Text("Yep, I want to HELP")
                            .font(.system(size: 30)) .foregroundColor(.green)
                         .frame(maxHeight: 0)
                        
                        Spacer()
                       
                        Image("arrowRight")
                          
                            .resizable() .foregroundColor(.black)
                            .frame(width: 25, height: 25)
                           
                            .scaledToFit()
                           
                    }
                }
                
//                Divider()
//
//                Link(destination: URL(string: "https://socialtechlabs.com/terms-service/")!) {
//                    HStack {
//                        Text("Terms of Serivce")
//                            .font(.system(size: 30))
//                            .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//
//                        Spacer()
//
//
//                        Image("arrowRight")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                            .scaledToFit()
//
//
//                    }
//                }
//
                Spacer()
                      .frame(height: 115)
               
                Text("The sincere hope of the BestFriends team is that we're able to build an app that actually reduces drama, anxiety and depression. \n\nBut, we need your help. \n\nWe have a couple of short surveys that we would love you to complete (only 3 questions). \n\nHelp us make BestFriends special.")
                    .font(.system(size: 23))
                    .fontWeight(.thin)
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.white)
                    .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    
                
                
                
                Spacer()
            }
            .padding(40)
            .navigationBarHidden(true)
        }
    }
    
}
struct UserBetaTesting_Previews : PreviewProvider {
    static var previews: some View {
        UserBetaTesting()
    }
}
