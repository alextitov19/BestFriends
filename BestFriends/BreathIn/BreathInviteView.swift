//
//  BreathInviteView.swift
//  BestFriends
//
//  Created by Social Tech on 4/16/22.
//


import Foundation

import SwiftUI

struct BreathInviteView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
           
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            Spacer()
        

            
            VStack {
                HStack {
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
                    
                    Text("App Usage Help")
                        .font(.system(size: 30))
                        .offset(x: -25)
                    
                    Spacer()
                }
                
             Spacer()
                   .frame(height: 50)
                
//
     
           Link(destination: URL(string: "https://socialtechlabs.com/demo/")!) {
                  HStack {
                       Text("60-second Demo Video")
                          .font(.system(size: 20))
//                          .foregroundColor(.black)
                         .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                       Spacer().frame(maxHeight: 0)
                       Image("arrowRight")
                           .resizable()
                           .frame(width: 25, height: 25)
                          .scaledToFit()
                            .colorInvert()
                    }
                }
                Divider()
                
                      Link(destination: URL(string: "https://socialtechlabs.com")!) {
                             HStack {
                                  Text("How use features")
                                     .font(.system(size: 20))
           //                          .foregroundColor(.black)
                                    .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
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
            .padding(40)
            .navigationBarHidden(true)
        }
    }
}

struct BreathInviteView_Previews : PreviewProvider {
    static var previews: some View {
        BreathInviteView()
    }
}

