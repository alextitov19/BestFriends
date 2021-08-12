//
//  HelpSupportView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/12/21.
//

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
                        
                        Text("Help & Support")
                            .font(.system(size: 30))
                            .offset(x: -25)
                        
                        Spacer()
                    }
                    
                    Spacer()
                        .frame(height: 50)
                    
                    HStack {
                        Text("Onboarding Tutorial")
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
                        Text("Add Friends")
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
                        Text("Delete Friends")
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
                        Text("BLock Friends")
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                    }
                    
                    Divider()
                }
                
                HStack {
                    Text("Report to BestFriends")
                        .font(.system(size: 20))
                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    
                    Spacer()
                    
                    Image("arrowRight")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .frame(width: 25, height: 25)
                }
                
                Spacer()
                
                Text("Wanna know 'How to?'\nHere we can help you learn.")
                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .padding(20)
            }
            .padding(30)
            .navigationBarHidden(true)
        }
    }
    
}
