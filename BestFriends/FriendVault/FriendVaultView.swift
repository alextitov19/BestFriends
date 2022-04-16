//
//  FriendVaultView.swift
//  BestFriends
//
//  Created by Social Tech on 4/13/22.
//

import Foundation
import SwiftUI

struct FriendVaultView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ScrollView{
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                    .padding(-50)
                
              
               
             
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
                            .frame(height: 40)
                    }
                    
                    HStack {
                        Image("planetFV")

                        Spacer()

                        Image("Chat-Select")

                       Spacer()

                       Image("Friend Vault")

                            .padding()
                     }
                 
                    
                    
                    Spacer()
                        .frame(height: 40)
                    Image("My feeling1")
                    
                    Spacer()
                        .frame(height: 15)
                    
                    Image("My feeling")
                    
                    Spacer()
                        .frame(height: 15)
                    
                    Image("Goal")
                    
                 Spacer()
                      
                               .frame(height: 50)
                
                              
                
                                .frame(height: 15)
                
                
                                   Spacer()
                              }
            }
        }
    }
    
    
    
//        .padding(40)
//        .navigationBarHidden(true)
    
    struct FriendVaultView_Previews : PreviewProvider {
        static var previews: some View {
            FriendVaultView()
        }
    }
    
    


  
}

