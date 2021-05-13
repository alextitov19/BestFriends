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
                
                                        
                Image("blueHeart")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .scaledToFill()
           
                
                Spacer().frame(height: 25)
                
                Text("'BlueMode'")
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .font(.title)
            
               
                
                Spacer().frame(height: 25)
                
                Text("Helping pull the two of you from this wreckage before your hearts become forever dented!")
                    .frame(width: 400, height: 150, alignment: .center)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .font(.title)
            
                   // try below
                    .multilineTextAlignment(.center)
                    .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                VStack {
                
                    Spacer()
                        .frame(height: 25)
                    
                   
                    Link("Ten 'Best' questions to ask first!", destination: URL(string: "https://socialtechlabs.com/darkMode/")!)
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
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
                    .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .cornerRadius(25)
                  
                    
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
                                            .foregroundColor(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
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
