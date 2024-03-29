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
//            Image("settingsBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
            
            ColorManager.grey4
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
//                            Image("arrowRight")
//                                .resizable()
//                                .frame(width: 25, height: 25)
//                                .scaledToFit()
//                                .colorInvert()
//                                .rotationEffect(Angle(degrees: 180))
//                        }
//
//                        Spacer()
//
//                        Text("Report Abuse")
//                            .font(.system(size: 27))
//                            .offset(x: -5)
                            
                            Image("arrowRight")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                                .scaledToFit()
//                                .colorInvert()
                               .rotationEffect(Angle(degrees: 180))
                        }
                        
                      Spacer()
                        
                        Text("Report Abuse")
                            .font(.system(size: 30))
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    
                    Spacer()
                          .frame(height: 100)
                  
                    Divider()
                }
                
                Link(destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!) {
                HStack {
                    Text("Report Objectionable \nContent & Behavior")
                        .font(.system(size: 20))
                        .foregroundColor(.purple)
                       
                    
                    Spacer()
                    
                    Image("arrowRight")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 25, height: 25)
                }
                }
                
                Divider()
                
                Link(destination: URL(string: "https://socialtechlabs.com/report-copyright-infringements/")!) {
                HStack {
                    Text("Report Copyright Infringement")
                        .font(.system(size: 20))
                        .foregroundColor(.purple)
                    
                    Spacer()
                    
                    Image("arrowRight")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 25, height: 25)
                }
                }
                
                Spacer()
                
            }
            .padding(40)
            .navigationBarHidden(true)
        }
    }
    
}
struct ReportAbuseView_Previews : PreviewProvider {
    static var previews: some View {
        ReportAbuseView()
    }
}
