//
//  ReportAbuse.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//

import Foundation


import SwiftUI

struct ReportAbuseView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
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
                    
                    Text("Report Abuse")
                        .font(.system(size: 30))
                        .offset(x: -25)
                    
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 50)
                
                HStack {
                    Text("Report Objectional Content & Behavior")
                        .font(.system(size: 20))
                    
                    Spacer()
                    
                    Image("arrowRight")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .scaledToFit()
                        .colorInvert()
                }
                
                Divider()
                
                HStack {
                    Text("Report Copyright Infingement")
                        .font(.system(size: 20))
                    
                    Spacer()
                    
                    Image("arrowRight")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .scaledToFit()
                        .colorInvert()
                }
                
                Spacer()
                
                Text("Let’s build a healthy environment together.")
                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .padding(20)
            }
            .padding(30)
            .navigationBarHidden(true)
        }
    }
    
}



struct ReportAbuseView_Previews : PreviewProvider {
    static var previews: some View {
        ReportAbuseView()
    }
}
