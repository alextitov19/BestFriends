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
                            .scaledToFit()
//                            .colorInvert()
                           .rotationEffect(Angle(degrees: 180))
                    }
                    
                    Spacer()
                    
                    Text("Privacy Policy &\nTerms of Service")
                        .font(.system(size: 25))
                        .offset(x: -25)
                        .foregroundColor(.gray)
                        
                }
                    Spacer()
                        .frame(height: 70)
                
                
                Divider()
                    .foregroundColor(.white)
                
                Link(destination: URL(string: "https://socialtechlabs.com/privacy-policy-2/")!) {
                    
                    HStack {
                        Text("Privacy Policy")
                            .font(.system(size: 20))
                            .foregroundColor(.purple)
                         .frame(maxHeight: 0)
                        
                        Spacer()
                       
                        Image("arrowRight")
                          
                            .resizable() .foregroundColor(.black)
                            .frame(width: 25, height: 25)
                           
                            .scaledToFit()
                           
                    }
                }
                
                Divider()
                
                Link(destination: URL(string: "https://socialtechlabs.com/terms-service/")!) {
                    HStack {
                        Text("Terms of Serivce")
                            .font(.system(size: 20))
                            .foregroundColor(.purple)

                        Spacer()
                      

                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.gray)
                            .scaledToFit()
                        
                       
                    }
                }
                
                Spacer()
                      .frame(height: 80)
                
             
                
                Text("The BestFriends app does not claim to offer clinical or professional psychological advice to its users. BestFriends strives to strengthen friendships. During difficult times users may connect with their 5 most trusted friends for support. If users are experiencing anxiety, depression, or other mental health issues, we recommend you consult a professional.")
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
struct TermsConditionsView_Previews : PreviewProvider {
    static var previews: some View {
        TermsConditionsView()
    }
}
