//
//  ReportIssues.swift
//  BestFriends
//
//  Created by Social Tech on 6/16/22.
//

import Foundation

import SwiftUI

struct ReportIssues: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {


            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

//              Image("settingsBackground")
//                  .resizable()
//                  .ignoresSafeArea()
//                  .scaledToFill()
            
            ColorManager.grey4
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                            .scaledToFit()
//                            .colorInvert()
                           .rotationEffect(Angle(degrees: 180))
                    }
                    
                    Spacer()
                    
                    Text("Report Technical Issues")
                        .font(.system(size: 25))
//                        .offset(x: -25)
                        .foregroundColor(.gray)
                      
                }
                    Spacer()
                        .frame(height: 70)
                
                
                Divider()
                    .foregroundColor(.white)
                
                Link(destination: URL(string: "https://socialtechlabs.com/reporting-issues-in-bestfriends/")!) {
                    
                    HStack {
                        Text("Report Issues")
                            .font(.system(size: 20))
                            .foregroundColor(.purple)
                         .frame(maxHeight: 0)
                        
                        Spacer()
                       
                        Image("arrowRight")
                          
                            .resizable()
                            .foregroundColor(.gray)
                            .frame(width: 25, height: 25)
                           
                            .scaledToFit()
                           
                    }
                }
                
                Divider()
//
//                Link(destination: URL(string: "https://socialtechlabs.com/terms-service/")!) {
//                    HStack {
//                        Text("Terms of Serivce")
//                            .font(.system(size: 30))
//                            .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//
//                        Spacer()
//
//
//                        Image("arrowRight")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                            .scaledToFit()
//
//
//                    }
//                }
//
                Spacer()
                      .frame(height: 115)
                
                Text("We Ask")
                    .font(.system(size: 30))
                    .offset(x: -25)
                    .foregroundColor(.gray)
                    .frame(height: 50)
                
                Text("Please report any technical issues you find so we can fix them as soon as possible.")
                    .font(.system(size: 20))
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.gray)
                
                
                
                Spacer()
            }
            .padding(40)
            .navigationBarHidden(true)
        }
    }
    
}
struct ReportIssues_Previews : PreviewProvider {
    static var previews: some View {
        ReportIssues()
    }
}
