//
//  BlueModeNotReadyTalk.swift
//  BestFriends
//
//  Created by Robert Roe on 5/12/21.
//

import SwiftUI


struct BlueModeNotReadyTalk: View {
    

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
              //blueheart try ^^^
                
                Spacer().frame(height: 25)
                
                Text("Not Talking? Let's give this a try.")
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .foregroundColor(.blue)
                    .font(.title)
            
             
                
                
                Spacer().frame(height: 25)
                VStack {
                
               
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("'ShakingCool-BlueMode' Send an image of the two from better days. ***")
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
                            Text("Let a special 'BlueMode - Sticker' say the first words for you.")
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
                            Text("'BlueMode-Journal' coming V2.0")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    .cornerRadius(25)

                    Spacer().frame(height: 75)
                    
                    Text("*** Do NOT send hurtful images in ShakingCool: You will be blocked.")
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        .foregroundColor(.blue)
                        .font(.title)
                
                
                
                }
        }
    }
}
    }
}

struct BlueModeNotReadyTalk_Previews : PreviewProvider {
    static var previews: some View {
        BlueModeNotReadyTalk()
    }
}

