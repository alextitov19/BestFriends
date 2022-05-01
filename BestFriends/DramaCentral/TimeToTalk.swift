//
//  TimeToTalk.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI
import AVKit

struct TimeToTalk: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
               
                Image("FatGuy")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .onAppear {

                     
                    }
                
                // Stars animation...
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                
         VStack{
                        HStack {
                            Text("Ready to Meet")
                                .font(.system(size: 40, weight: .ultraLight))
                                .foregroundColor(Color.purple)
//                                .kerning(25)
                        }
                        
                        VStack {
                            
                            Text("in-person")
                                .font(.system(size: 50, weight: .bold))
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color.purple)
                                .kerning(10)
                           
                          
                            Spacer()
                                .frame(height: 25)
                            
                            VStack {
                                Link(destination: URL(string: "https://socialtechlabs.com/listen-to-them/")!) {
                           
                                       Text("Be Open - Hear them Out")
                                            .fontWeight(.thin)
                                            .frame(width: 335, height: 50)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 30))
                                            .background(ColorManager.purple3)
                                            .cornerRadius(15)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    }
                                
                                Spacer()
                                    .frame(height: 15)
                              
                                    
                                    Spacer()
                                    .frame(height: 140)
                                
                                Text("Ready? \nLet's set a time to meet")
                                    .font(.system(size: 25, weight: .light))
//
                                Spacer()
                                    .frame(height: 20)
                            }
                                 
                                }
                                
                                VStack {
                                    
                                    NavigationLink(
                                        destination: TryThis(),
                                        label: {
                                            Text("Invite")
                                                .fontWeight(.semibold)
                                                .foregroundColor(Color.white)
                                                .frame(width: 150.0, height: 50)
                                                .font(.system(size: 20))
                                            
                                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                            
                                                .cornerRadius(25)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            
                                        }
                                    )}
             Spacer()
                 .frame(height: 50)
             VStack {
                 
             NavigationLink(
                 destination: DramaMainView(),
                 label: {
                     Text("< back to Main")
                         .fontWeight(.thin)
                         .frame(width: 200, height: 40)
                         .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                         .font(.system(size: 25))
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

struct TimeToTalk_Previews : PreviewProvider {
    static var previews: some View {
        TimeToTalk()
    }
}
