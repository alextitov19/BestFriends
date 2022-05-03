//
//  ReceivedFixFightNotification.swift
//  BestFriends
//
//  Created by Social Tech on 4/29/22.
//

import Foundation
import SwiftUI
import AVKit

struct ReceivedFixFightNotification: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("HugOut")
                    .resizable()
                    .frame(width: 1000, height: 900)
                    .scaledToFill()
                    .ignoresSafeArea()
                    .onAppear {
//                        Image("girlwalking")
//                            .resizable()
//                            .frame(width: 350, height: 400)
//
                    }
                
                // Stars animation...
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
         VStack{
                        HStack {
                            Text("You Received an \nInvite to 'Fix-a-Fight'")
                                .font(.system(size: 40, weight: .ultraLight))
                                .foregroundColor(Color.black)
//                                .kerning(25)
                        }
                        
                        VStack {
                            

                            Spacer()
                                .frame(height: 25)
                            
                            VStack {
                                NavigationLink(
                                    destination: Step1_NotReadyTalk(),
                                    label: {
                                        Text("Not Ready to Talk Yet")
                                            .fontWeight(.thin)
                                            .frame(width: 325, height: 50)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 30))
                                            .background(ColorManager.purple3)
                                            .cornerRadius(15)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    })
                            
                                Spacer()
                                    .frame(height: 15)
                                
                                VStack {
                                    Link(destination: URL(string: "https://socialtechlabs.com/fix-a-fight-terms/")!) {
                               
                                           Text("View Strategy")
                                                .fontWeight(.thin)
                                                .frame(width: 325, height: 50)
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .font(.system(size: 30))
                                                .background(ColorManager.purple3)
                                                .cornerRadius(15)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                        }
                                    Spacer()
                                        .frame(height: 15)
                                    
                                    VStack {
                                        
                                        VStack {
                                            NavigationLink(
                                                destination: DramaMainView(),
                                                label: {
                                                    Text("NEXT")
                                                        .fontWeight(.thin)
                                                        .frame(width: 100, height: 40)
                                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                        .font(.system(size: 30))
                                                        .background(ColorManager.purple3)
                                                        .cornerRadius(15)
                                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                                })
                                
                                            Spacer()
                                    .frame(height: 240)
                                


                                Spacer()
                                    .frame(height: 20)
                            }
                                 
                                }
                            }
                            
                        }
                    }
                    
                }
                
            }
}
}
}
struct ReceivedFixFightNotification_Previews : PreviewProvider {
    static var previews: some View {
        ReceivedFixFightNotification()
    }
}
