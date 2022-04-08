//
//  HelpSupportView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//

import Foundation

import SwiftUI

struct HelpSupportView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            VStack {
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
                        
                        Text("Report Abuse & Copyright Infringements")
                            .font(.system(size: 30))
                            .offset(x: -25)
                        
                        Spacer()
                    }
                    
                    Spacer()
                        .frame(height: 50)
                                        
                    Divider()
//
//                    NavigationLink(
//                        destination: RemoveFriend(),
//                        label: {
//                    HStack {
//                        Text("Delete Friends")
//                            .font(.system(size: 20))
//                            .foregroundColor(.black)
//
//                        Spacer()
//
//                        Image("arrowRight")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                            .scaledToFit()
//                            .colorInvert()
//                    }
//                        })
                    
                    Divider()
                }
                
                Link(destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!) {
                HStack {
                    Text("Report Objectionable Content & Behavior")
                        .font(.system(size: 20))
                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    
                    Spacer()
                    
                    Image("arrowRight")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .frame(width: 25, height: 25)
                }
                }
                
                Divider()
                
                Link(destination: URL(string: "https://socialtechlabs.com/report-copyright-infringements/")!) {
                HStack {
                    Text("Report Copyright Infringement")
                        .font(.system(size: 20))
                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    
                    Spacer()
                    
                    Image("arrowRight")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .frame(width: 25, height: 25)
                }
                }
                
                Spacer()
                
            }
            .padding(30)
            .navigationBarHidden(true)
        }
    }
    
}
