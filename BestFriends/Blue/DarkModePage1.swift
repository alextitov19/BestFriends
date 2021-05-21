//
//  DarkModePage1.swift
//  BestFriends
//
//  Created by Robert Roe on 5/10/21.
//



import Amplify
import SwiftUI




// ************************************************
struct DarkModePage1: View {

    var body: some View {
        NavigationView{
    
  
        ZStack {
            
            
            Image("AriC2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
                
            VStack {
                       
                    ZStack {
                        Image("ChatBubbleTrans")
                            .resizable()
                            .frame(width: 400, height: 185)
                            .scaledToFill()
                    
                        Text("Just had a huge fight with your best friend or significant other?")
                            .italic()
                            .font(.system(size: 25))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 275, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
    
                    
               
                    
                    Spacer()
                   
                Text("We'll unlock special features helping you fix this mess.")
                   
                    .font(.system(size: 25))
                    .fontWeight(.regular)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                
               Spacer()
                    .frame(height: 3)
               
                
                
                NavigationLink(destination: BlueModeLP()) {
                                    Text("Good because this, SUCKS!")
                                        .font(.system(size: 30))
                                        .fontWeight(.ultraLight)
                                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                        .frame(width: 400, height: 50)
                                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .cornerRadius(25)
                    }
                
                Spacer()
                    .frame(height: 160)
            
                    }
            }
        }
    }
}


struct DarkModePage1_Previews : PreviewProvider {
    static var previews: some View {
   
        DarkModePage1()

        
    }
}
