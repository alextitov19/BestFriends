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

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                // blueheart try
               // Spacer()
                 //   .frame(height: 125)
                                        
                Image("blueHeart")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .scaledToFill()
              //blueheart try ^^^
                
                Spacer().frame(height: 25)
                
                Text("'BlueMode'")
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .foregroundColor(.blue)
                    .font(.title)
            
               
                
                Spacer().frame(height: 25)
                
                Text("Helping pull the two of you from this wreckage before your hearts become forever dented!")
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .foregroundColor(.blue)
                    .font(.title)
            
                   // try below
                    .multilineTextAlignment(.center)
                    .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                Spacer().frame(height: 25)
                VStack {
                
                    Spacer()
                        .frame(height: 30)
                    
                   
                    Link("Ten 'Best' questions to ask first!", destination: URL(string: "https://socialtechlabs.com/darkMode/")!)
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    
                
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Change Chat background to Blue.")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                  
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Ready? Let's try to set time to talk.")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    
                    
                    Spacer()
                        .frame(height: 100)
                    
                

                    NavigationLink(destination: BlueModeNotReadyTalk()) {
                                        Text("Not ready to talk just yet?")
                                            .font(.title)
                                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                                            .frame(width: 400, height: 50)
                                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
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
    


struct DarkModeView_Previews : PreviewProvider {
    static var previews: some View {
        DarkModeView()
    }
}
