//
//  HugOut.swift
//  BestFriends
//
//  Created by Social Tech on 4/27/22.
//



import Foundation
import SwiftUI

struct HugOut: View {
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
              
                Image("girlwalking")
                    .resizable()
                    .frame(width: 350, height: 400)
                
                
                
//                    .ignoresSafeArea()
//                    .scaledToFill()
//
                
                AdPlayerView(name: "backgroundAnimation")
                    .ignoresSafeArea()
                    .blendMode(.screen)
                    .offset(y: -250)
                
                VStack {
                    
             
                    Text("H U G")
                        .font(.system(size: 90))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    
                    Text("it O U T")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    Spacer()
                        .frame(height: 250)
                    
                    Text("we hate it,")
                        .font(.system(size: 30))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 5)
                    
                    Text("but we can't pass it by")
                        .font(.system(size: 30, weight: .bold))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 0)
                    
                  
                    VStack {
                    Spacer()
                        .frame(height: 10)
                    
                    Text("comming soon")
                        .font(.system(size: 45, weight: .bold))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
//                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 20)
                    
                    NavigationLink(
                        destination: HomeView(),
                        label: {
                            Text("after a big fight 80% of teens say they don't know what to do next")
                                .fontWeight(.light)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .frame(width: 365, height: 50, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color.gray)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        })
                               
                 }
                      }
                    
               }
            }
        }
}

struct HugOut_Previews : PreviewProvider {
    static var previews: some View {
        HugOut()
    }
}


