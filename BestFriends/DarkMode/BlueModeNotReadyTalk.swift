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
               
                
                Spacer().frame(height: 25)
                
                Text("Just too early to talk - let's give this a try.")
                    .frame(width: 400, height: 100, alignment:.center)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .foregroundColor(.blue)
                    .font(.title)
            
             
                VStack {
                
                    Spacer()
                        .frame(height: 20)
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("When your frind shakes their phone an image of the two from better days pops up. ***")
                                .frame(width: 270, height: 100, alignment: .center)
                        })
                    .frame(width: 300, height: 100, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Unlock special stickers to say the first words for you.")
                                .frame(width: 270, height: 100, alignment: .center)
                        })
                    .frame(width: 300, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                  
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(
                        destination: SmileNotesLibrary(),
                        label: {
                            Text("Push back SmileNotes you received from them.")
                                .frame(width: 290, height: 100, alignment: .center)
                        })
                    .frame(width: 300, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                  
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("'BlueMode-Journal' coming V2.0")
                                .frame(width: 280, height: 100, alignment: .center)
                        })
                    .frame(width: 300, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)

                    Spacer().frame(height: 30)
                    
                 
                
                    Text("*** Do NOT upload hurtful images in ShakingCool: You will be blocked.")
                        .italic()
                        .font(.system(size: 20))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                  
                    
                    
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

