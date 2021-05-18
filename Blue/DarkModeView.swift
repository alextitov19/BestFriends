//
//  DarkModeView.swift
//  BestFriends
//
//  Created by Robert Roe on 5/9/21.
//

import SwiftUI

struct DarkModeView: View {
    

    var body: some View {
        NavigationView {
        ZStack {

            Image("blue3C")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            ScrollView {
            VStack {
                
                                        
                Image("blueHeart")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .scaledToFill()
           
                
                Spacer().frame(height: 25)
                
                Text("BlueMode")
                    .font(.system(size: 50))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
               
                
                Spacer().frame(height: 25)
                
                Text("Helping pull the two of you from this wreckage before your hearts become forever dented!")
                    .frame(width: 400, height: 150, alignment: .center)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                    .font(.title)
            
                   // try below
                    .multilineTextAlignment(.center)
                    .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                VStack {
                
                    Spacer()
                        .frame(height: 25)
                    
                   
                    Link("Fight w/ Best Friend - what to ask?!", destination: URL(string: "https://socialtechlabs.com/darkmode/")!)
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                    .cornerRadius(25)
                    
                
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                   
                    Link("If, you should Apologize", destination: URL(string: "https://socialtechlabs.com/you-owe-apology/")!)
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                    .cornerRadius(25)
                    
                   
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                   
                    Link("Fight w/ Boyfriend", destination: URL(string: "https://socialtechlabs.com/fight-w-boyfriend/")!)
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                    .cornerRadius(25)
                    
                    
                    
                    VStack {
                    
                        Spacer()
                            .frame(height: 30)
                        
                        
                        NavigationLink(
                            destination: InfoViewPage1(),
                            label: {
                                Text("Ready? Let's try to set a time to talk.")
                            })
                        .frame(width: 325, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                        .cornerRadius(25)
                        
                        
                        Spacer()
                            .frame(height: 50)
                        
                    

                        NavigationLink(destination: BlueModeNotReadyTalk()) {
                                            Text("Not ready to talk just yet?")
                                                .font(.title)
                                                .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                                .frame(width: 400, height: 50)
                                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .cornerRadius(25)
                       
                        
                        
                        
                        
                        
                        
                        
                        }
                    Spacer()
                        .frame(height: 75)
                
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                }
            }
        }
    }
}


        }
    }


