//
//  Step1FG_AcceptedSolutions.swift
//  BestFriends
//
//  Created by Social Tech on 5/8/22.
//

import Foundation

import SwiftUI
import AVKit

struct Step1FG_SuggestedSolutions: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
//
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
            
            VStack {
                
                Text("Professionals Suggest")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
               
                Spacer()
                    .frame(height: 20)
                
                Text("- Disregard Fight Altogether \n- Do NOT get involved \n- Don't pick sides \n- Don't personalize the fight \n- It's their fight, they must fix it")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
               
                Spacer()
                    .frame(height: 35)
                
                Text("Good Luck with That")
                    .font(.system(size: 35))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
                
                Spacer()
                    .frame(height: 20)
                
                Text("- teens talk all the time \n- know exactly what is going on with everyone \n- they always take sides \n- they talk to each other about the fight \n- they express their opinions \n- exactly opposite what professionals say to do ")
                    .font(.system(size: 15))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
     
                VStack {
                    Spacer()
                        .frame(height: 45)
                    
                    NavigationLink(
                        destination: Step2FG_NewSolutions(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 100, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                      
                        
                        
                        })
                
//
//                Button(action: {
//                    sessionManager.showDramaMainView()
//                }, label: {
//                    Text("NEXT")
//                        .fontWeight(.thin)
//                        .frame(width: 100, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 30))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                })
//                .padding(.vertical, 40)
                
            }
        }
    }
}
}





struct Step1FG_SuggestedSolutions_Previews : PreviewProvider {
    static var previews: some View {
        Step1FG_SuggestedSolutions()
    }
}

