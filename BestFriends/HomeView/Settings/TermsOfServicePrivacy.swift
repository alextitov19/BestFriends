//
//  TermsOfServicePrivacy.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//

import Foundation

import SwiftUI

struct TermsConditionsView: View {
    
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
                    
                    Text("Privacy Policy")
                        .font(.system(size: 30))
                        .offset(x: -25)
           
                    Text("Terms of Service")
                        .font(.system(size: 30))
                        .offset(x: -25)
                    
                    
//                    Spacer()
                    
                    Text("(in footer of website page)")
                        .font(.system(size: 20))
                        .italic()
                        .offset(x: -25)
                    
                    Spacer()
                    
//                    Text("Liability\n Waiver")
//                        .font(.system(size: 30))
//                        .offset(x: -25)
//           
                    Text("Disclaimer")
                        .font(.system(size: 30))
                        .offset(x: -25)
                    
                    
                        .frame(height: 50)
                    Text("The BestFriends app does not claim to offer clinical or professional psychological advice to the users. BestFriends strives to help make friends better friends. During difficult times users may connect with their 5 most trusted friends for support. If users are experiencing depression we recommend you consult a professional.")
                        .font(.system(size: 20))
                        .italic()
                        .offset(x: -3)
                    
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 50)
                
                Link(destination: URL(string: "https://socialtechlabs.com")!) {
                    
                    HStack {
                        Text("Privacy Policy")
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
                
                Divider()
                
                Link(destination: URL(string: "https://socialtechlabs.com")!) {
                    HStack {
                        Text("Terms of Serivce")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                        
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
            .padding(30)
            .navigationBarHidden(true)
        }
    }
    
}
struct TermsConditionsView_Previews : PreviewProvider {
    static var previews: some View {
        TermsConditionsView()
    }
}
