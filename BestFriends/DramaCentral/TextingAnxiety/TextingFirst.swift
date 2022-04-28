//
//  TextingFirst.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI
import AVKit

struct TextingFirst: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("in bushes")
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
                            Text("RESOLUTION")
                                .font(.system(size: 60, weight: .ultraLight))
                                .foregroundColor(Color.purple)
//                                .kerning(25)
                        }
                        
                        VStack {
                            
                            Text("via texting")
                                .font(.system(size: 50, weight: .bold))
                                .fontWeight(.ultraLight)
                                .foregroundColor(Color.purple)
                                .kerning(10)
                           
                          
                            Spacer()
                                .frame(height: 30)
                            
                            VStack {
                                Link(destination: URL(string: "https://socialtechlabs.com/applink/")!) {
                                
                                
                                
//                                NavigationLink(
//                                    destination: BreathInView(),
//                                    label: {
                                       Text("Sample Text Messages")
                                            .fontWeight(.thin)
                                            .frame(width: 325, height: 50)
                                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                            .font(.system(size: 30))
                                            .background(ColorManager.purple3)
                                        //                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                            .cornerRadius(15)
                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    }
                                
                                Spacer()
                                    .frame(height: 160)
                                
                                Text("While you're stresing \nwaiting for a REPLY")
                                    .font(.system(size: 25, weight: .bold))
                                    .italic()
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                
//                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 0)
                                
                                Spacer()
                                    .frame(height: 20)
                            }
                            
                            
                                 Spacer()
                                        .frame(height: 25)
                                    
                                }
                                
                                VStack {
                                    
                                    NavigationLink(
                                        destination: BreathInView(),
                                        label: {
                                            Text("Try This")
                                                .fontWeight(.semibold)
                                                .foregroundColor(Color.white)
                                                .frame(width: 150.0, height: 50)
                                                .font(.system(size: 20))
                                            
                                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                            
                                                .cornerRadius(25)
                                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                            
                                            
                                        }
                                        
                                    )}
                            }
                            
                        }
                    }
                    
                }
                
            }

struct TextingFirst_Previews : PreviewProvider {
    static var previews: some View {
        TextingFirst()
    }
}
