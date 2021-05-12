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
                    Text("Manage Friends *** Move this to Login Pg")
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        .foregroundColor(.white)
                        .font(.title)
                
                    Spacer().frame(height: 25)
                    VStack {
                    
                       
                          Spacer()
                              .frame(height: 30)
                      
                          NavigationLink(
                              destination: ResetPassword(),
                              label: {
                                  Text("Block Friend")
                              })
                          .frame(width: 300, height: 50, alignment: .center)
                          .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                          .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                          .cornerRadius(25)
                          
                        
                          Spacer()
                              .frame(height: 30)
                      
                          NavigationLink(
                              destination: ResetPassword(),
                              label: {
                                  Text("Delete Friend")
                              })
                          .frame(width: 300, height: 50, alignment: .center)
                          .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                          .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                          .cornerRadius(25)
                          
                        Spacer()
                            .frame(height: 30)
                     
                        
                        
                        
                        
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



