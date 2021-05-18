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

            Image("Blue")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
               
              
                Text("Let's give this a try first.")
                    .frame(width: 400, height: 100, alignment:.center)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .font(.title)
            
               
                VStack {
                
                  
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Upload an image of the two of you to 'their' ShakingCool from happier days!")
                                .frame(width: 400, height: 100, alignment: .center)
                        })
                    .frame(width: 400, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
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
                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
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
                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                    .cornerRadius(25)
                  
                    VStack {
                        Spacer()
                            .frame(height: 30)
                        
                        
                        NavigationLink(
                            destination: InfoViewPage1(),
                            label: {
                                Text("Waiting for a respones sucks. In BlueMode we send a push notification as soon as your message is read.")
                                    .frame(width: 400, height: 100, alignment: .center)
                            })
                        .frame(width: 400, height: 75, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                        .cornerRadius(25)

                        Spacer().frame(height: 30)
                        
                        NavigationLink(
                            destination: InfoViewPage1(),
                            label: {
                                Text("Waiting for a respones sucks. In BlueMode we send a push notification as soon as your message is read.")
                                    .frame(width: 400, height: 100, alignment: .center)
                            })
                        .frame(width: 400, height: 75, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                        .cornerRadius(25)
                    
                        
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
}
