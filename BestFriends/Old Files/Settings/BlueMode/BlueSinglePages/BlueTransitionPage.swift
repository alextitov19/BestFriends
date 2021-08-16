//
//  BlueTransitionPage.swift
//  BestFriends
//
//  Created by Social Tech on 5/21/21.
//

import Amplify
import SwiftUI




// ************************************************
struct BlueTransitionPage: View {
    
    var body: some View {
        NavigationView{
            
            
            ZStack {
                
                
                Image("Transition")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                
                VStack {
                    
                    ZStack {
                        Image("ChatBubbleTrans")
                            .resizable()
                            .frame(width: 425, height: 185)
                            .scaledToFill()
                        
                        Text("Let's start fixing this, NOW!!!")
                            .italic()
                            .font(.system(size: 37))
                            .fontWeight(.regular)
                            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 275, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                    
                    
                    Spacer()
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 3)
                    
                    
                    
                    NavigationLink(destination: BlueModeLP()) {
                        Text("Ok, take me to Chat")
                            .font(.system(size: 30))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .frame(width: 325, height: 50)
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


struct BlueTransitionPaqe_Previews : PreviewProvider {
    static var previews: some View {
        
        BlueTransitionPage()
        
        
    }
}

