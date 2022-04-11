//
//  BreathIn.swift
//  BestFriends
//
//  Created by Social Tech on 4/11/22.
//

import Foundation
import SwiftUI

struct BreathIn: View {
//    let timer = timer.publish(every: 10, on: .main, in: .common).autoconnect()
   
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            
            Image("Star Page")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
            VStack {
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .foregroundColor(.white)
//                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                    }
                    
//                    Spacer()
//
//                    Text("Privacy Policy and\n Terms of Service")
//                        .font(.system(size: 30))
//                        .offset(x: -25)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//
//                    Text("Terms of Service")
//                        .font(.system(size: 30))
//                        .offset(x: -25)
//
//
////                    Spacer()
//
//                    Text("(in footer of website page)")
//                        .font(.system(size: 20))
//                        .italic()
//                        .offset(x: -25)
//
                    Spacer()
                    


                    Text("Breath in . . . ")
                        .font(.system(size: 60))
                        .offset(x: -25)
                        .foregroundColor(.white)
                        
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//

                    Spacer()
                }
                
//                Spacer()
//                    .frame(height: 50)
//
                Link(destination: URL(string: "Homeview")!) {
                    
                    HStack {
                        Text("I'm done")
                            .font(.system(size: 30))
                         .foregroundColor(.white)
//                            .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//
                        Spacer().frame(maxHeight: 0)
                        
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
//                            .colorInvert()
                    } .foregroundColor(.white)
                }
                
                Divider()
                
                Link(destination: URL(string: "https://socialtechlabs.com")!) {
                    HStack {
                        Text("Terms of Serivce")
                            .font(.system(size: 20))
                      .foregroundColor(.white)
//                            .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//
                        Spacer()
                        
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
struct BreathIn_Previews : PreviewProvider {
    static var previews: some View {
        BreathIn()
    }
}

