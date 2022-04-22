//
//  MasterFriendVault.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//


import Foundation
import SwiftUI

struct MasterFriendVault: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
       NavigationView {
//       ScrollView{
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                
                Image("FriendVaultYellow")
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
                            
                    Spacer()
                            
                                Image("Exclamation Mark")
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

                        Spacer()

                        Image("StreakButton")
                        
                            .padding()
                     }
                 
                VStack {
                    
                    Spacer()
                        .frame(height: 40)
                    Image("My feeling1")
                    
                    Spacer()
                        .frame(height: 15)
                  
                    
                    
                    NavigationLink(
                        destination: BreathInviteView(),
                        label: {
                            Text("  Take a Breather")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: 325, height: 80, alignment: .leading)
                                .font(.system(size: 20))
                                .padding(10)
                                .background(Color(hue: 0.128, saturation: 0.086, brightness: 1.0))
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                               
                           
                        })
                    
                    
                   Spacer()
                        .frame(height: 15)
                    
                    Image("Goal")
                    
                 Spacer()
                      
                               .frame(height: 50)
                
                              
                
                                .frame(height: 15)
                
                
//                                   Spacer()
                              }
            }
        }
    }
    
    }
}

//        .padding(40)
//        .navigationBarHidden(true)
    
    struct MasterFriendVault_Previews : PreviewProvider {
        static var previews: some View {
            MasterFriendVault()
        }
    }
    
    
