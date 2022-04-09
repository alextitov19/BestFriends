//
//  DemoVideoView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//


import Foundation

import SwiftUI

struct DemoVideoView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            VStack {
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                    }
                    
                    Spacer()
                    
                    Text("BestFriends")
                        .font(.system(size: 30))
                        .offset(x: -2)
                        
                    
           
                    
                    
//                  Spacer()
                    
                    Text("'How To' Video")
                        .font(.system(size: 30))
                        .bold()
                        .italic()
                        .offset(x: -2)
                    
          
                    
                    
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 50)
                
                Link(destination: URL(string: "https://socialtechlabs.com")!) {
                    
                    HStack {
                        Text("View 60-second BestFriends video")
                            .font(.system(size: 20))
                            .foregroundColor(.black)

                        Spacer().frame(maxHeight: 0)
                        
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                    }
                }
                
              
                
                
                
                Spacer()
            }
            .padding(30)
            .navigationBarHidden(true)
        }
    }
    
}
struct DemoVideoView_Previews : PreviewProvider {
    static var previews: some View {
        DemoVideoView()
    }
}
