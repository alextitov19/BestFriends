//
//  FightPushNoteResponse.swift
//  BestFriends
//
//  Created by Social Tech on 5/3/22.
//



import Foundation
import SwiftUI
import AVKit

struct FightPushNoteResponse: View {
        
    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
           
                Text("Thany you for responding")
                .font(.system(size: 40, weight: .ultraLight))
                .foregroundColor(Color.purple)
            
                Text("via")
                .font(.system(size: 40, weight: .ultraLight))
                .foregroundColor(Color.purple)
                
                Text("T E X T I N G")
                    .font(.system(size: 55, weight: .ultraLight))
                    .foregroundColor(Color.purple)
                
                
                Spacer()
                    .frame(height: 25)
                
                VStack {
                    Link(destination: URL(string: "https://socialtechlabs.com/applink/")!) {
                        
                        Text("I can Chat NOW")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    
                    Spacer()
                        .frame(height: 15)
                    
                    VStack {
                        Link(destination: URL(string: "https://socialtechlabs.com/apoloigize/")!) {
                            
                            Text("Let's Set a Time to Meet")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 27))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        }
                        Spacer()
                            .frame(height: 15)
                        
                        
                        VStack {
                            
                            NavigationLink(
                                destination: DramaMainView(),
                                label: {
                                    Text("I Need More Time")
                                        .fontWeight(.thin)
                                        .foregroundColor(Color.white)
                                        .frame(width: 310, height: 70)
                                        .font(.system(size: 25))
                                    
                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                    
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                }
                            )}
                        
                        
                        Spacer()
                            .frame(height: 60)
                        
                        Text("While you're stressing \nwaiting for a REPLY")
                            .font(.system(size: 25, weight: .medium))
                            .italic()
                            .foregroundColor(.white)
                        
                        
                        //                                    .multilineTextAlignment(.leading)
                            .padding(.horizontal, 0)
                        
                        Spacer()
                            .frame(height: 20)
                    }
                    
                }
                
                VStack {
                    
                    NavigationLink(
                        destination: TryThis(),
                        label: {
                            Text("Try This")
                                .fontWeight(.thin)
                                .foregroundColor(Color.white)
                                .frame(width: 150.0, height: 40)
                                .font(.system(size: 30))
                                .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                            
                        }
                    )}
                Spacer()
                    .frame(height: 20)
                
                VStack {
                    
                    NavigationLink(
                        destination: Step7_TimeToTalk(),
                        label: {
                            Text("Step-7")
                                .fontWeight(.thin)
                                .frame(width: 110, height: 40)
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


struct FightPushNoteResponse_Previews : PreviewProvider {
    static var previews: some View {
        FightPushNoteResponse()
    }
}



