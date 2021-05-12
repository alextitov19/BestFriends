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
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("I really need some more time. *Note No bad images.")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                    
                   
                    Link("Getting Started -10 Questions to Ask", destination: URL(string: "https://socialtechlabs.com/darkMode/")!)
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("ShakingCool-'BlueMode")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    .cornerRadius(25)
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Special 'BlueMode' Stickers")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Set time to talk")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    .cornerRadius(25)
                    
                    
                    
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
