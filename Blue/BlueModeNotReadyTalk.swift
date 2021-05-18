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

            Image("blueC")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
               
              
            
               
                VStack {
            
                  
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Upload an image of the two from happier days to 'their' ShakingCool!")
                                .frame(width: 400, height: 100, alignment: .center)
                        })
                    .frame(width: 400, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .cornerRadius(25)
                    
                    
                    Spacer()
                        .frame(height: 30)
                   
                    NavigationLink(
                        destination: SmileNotesLibrary(),
                        label: {
                            Text("Send back SmileNotes from your friend - letting them know you care.")
                                .frame(width: 400, height: 100, alignment: .center)
                        })
                    .frame(width: 400, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .cornerRadius(25)
                    
                   
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Unlock special stickers saying the words you can't seem to say right now.")
                                .frame(width: 400, height: 100, alignment: .center)
                        })
                    .frame(width: 400, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .cornerRadius(25)
                  
                    VStack {
                        Spacer()
                            .frame(height: 30)
                        
                        Spacer()
                            .frame(height: 50)
                        NavigationLink(destination: BlueModeMusic()) {
                                            Text("Next")
                                                .font(.system(size: 30))
                                                .fontWeight(.ultraLight)
                                                .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                                .frame(width: 350, height: 50)
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

struct BlueModeNotReadyTalk_Previews : PreviewProvider {
    static var previews: some View {
        BlueModeNotReadyTalk()
        }
    }
}
