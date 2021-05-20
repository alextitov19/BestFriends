//
//  BlueModeNotReadyTalk.swift
//  BestFriends
//
//  Created by Robert Roe on 5/12/21.
//

import SwiftUI


struct BlueModeNotReadyTalk: View {
    

    var body: some View {
        ZStack {

            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
               
               
                
                Text("BlueMode")
                    .font(.system(size: 50))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
               
                
               
            
                Spacer().frame(height: 25)
               
                VStack {
            
                    Text("It remains forever hard to un-break a heart; remembering that in the end some things can never be taken back!")
                      //  .italic()
                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 425, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    Spacer().frame(height: 25)
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Upload images of both of yoy from happier days to your 'FRIEND'S' ShakingCool activating good vibes!")
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
                            Text("View all the SmileNotes from your friend - rembering nice things that your were told.")
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
                        
                        NavigationLink(
                            destination: InfoViewPage1(),
                            label: {
                                Text("Yep, all this waiting to hear back sucks. We'll send push notifications once your messages are read or new messages are posted in BlueMode.")
                                    .frame(width: 400, height: 100, alignment: .center)
                            })
                        .frame(width: 400, height: 75, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .cornerRadius(25)
                        
                     
                        Text("Ready to get started - take a breath.")
                          //  .italic()
                            .font(.system(size: 25))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 425, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                     
                        NavigationLink(destination: DarkModePage1()) {
                                            Text("Let's do this >>>")
                                                .font(.system(size: 30))
                                                .fontWeight(.ultraLight)
                                                .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                                .frame(width: 350, height: 50)
                                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .cornerRadius(25)
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
