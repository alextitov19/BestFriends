//
//  ManageMyFriends.swift
//  BestFriends
//
//  Created by Robert Roe on 5/7/21.
//


import Amplify
import SwiftUI


struct ManageMyFriends: View {

    var body: some View {
        NavigationView{
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                
                    Spacer().frame(height: 25)
                    VStack {
                    
                       
                          Spacer()
                              .frame(height: 30)
                        Spacer()
                            .frame(height: 75)
                        
                        Text("You may manage your friends (move to BlueMode, Block or Delete) by long-tapping your friends name above their star on Homepage.")
                            .font(.system(size: 19))
                            .fontWeight(.ultraLight)
                            .italic()
                            .foregroundColor(Color.white)
                            .frame(width: 400)
                        
                            .multilineTextAlignment(.center)
                         
                        Spacer()
                            .frame(height: 30)
                     
                        
                        
                        Spacer()
                            .frame(height: 50)
                        NavigationLink(destination: LandingView(myID: " ")) {
                                            Text("Go to Homepage")
                                                .font(.title)
                                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                                .frame(width: 200, height: 50)
                                                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                                                .cornerRadius(25)
                        }
                        
                        Spacer()
                            .frame(height: 100)
                    
                    }
                    
                    
                }
            }
            }
            
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }

    }


    struct ManageMyFriends_Previews : PreviewProvider {
        static var previews: some View {
            ManageMyFriends()
        }
    }



