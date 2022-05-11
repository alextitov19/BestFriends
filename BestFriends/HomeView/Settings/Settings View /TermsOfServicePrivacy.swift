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
//            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
//                .ignoresSafeArea()
//
//            Image("HomeBackground2")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

              Image("settingsBackground")
                  .resizable()
                  .ignoresSafeArea()
                  .scaledToFill()
            
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
                    
                    Text("Privacy Policy &\nTerms of Service")
                        .font(.system(size: 30))
                        .offset(x: -25)
                        .foregroundColor(.black)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                    Spacer()
                        .frame(height: 70)
                
                
                Divider()
                    .foregroundColor(.white)
                
                Link(destination: URL(string: "https://socialtechlabs.com/privacy-policy-2/")!) {
                    
                    HStack {
                        Text("Privacy Policy")
                            .font(.system(size: 30)) .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                         .frame(maxHeight: 0)
                        
                        Spacer()
                       
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                    }
                }
                
                Divider()
                
                Link(destination: URL(string: "https://socialtechlabs.com/terms-service/")!) {
                    HStack {
                        Text("Terms of Serivce")
                            .font(.system(size: 30))
                            .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))

                        Spacer()
                      

                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                        
                       
                    }
                }
                
                Spacer()
                      .frame(height: 115)
                
                Text("Safety TIP")
                    .font(.system(size: 30))
                    .offset(x: -25)
                    .foregroundColor(.green)
                    .frame(height: 50)
                
                Text("The BestFriends app does not claim to offer clinical or professional psychological advice to it's users. BestFriends strives to help make friends better friends. During difficult times users may connect with their 5 most trusted friends for support. If users are experiencing depression we recommend you consult a professional.")
                    .font(.system(size: 20))
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.black)
                    .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    
                
                
                
                Spacer()
            }
            .padding(40)
            .navigationBarHidden(true)
        }
    }
    
}
struct TermsConditionsView_Previews : PreviewProvider {
    static var previews: some View {
        TermsConditionsView()
    }
}
