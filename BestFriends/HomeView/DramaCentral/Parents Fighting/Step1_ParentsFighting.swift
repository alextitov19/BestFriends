//
//  Step1_ParentsFighting.swift
//  BestFriends
//
//  Created by Social Tech on 5/7/22.
//



import Foundation

import SwiftUI
import AVKit

struct Step1_ParentsFighting: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
//
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
            
            VStack {
                
                Text("Suggestions")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
               
                Spacer()
                    .frame(height: 10)
                
                Text("- Stay out of the Argument \n- It's their fight \n- Not your job to referee")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
               
                Spacer()
                    .frame(height: 25)
                
                Text("Get Away")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
                Spacer()
                    .frame(height: 10)
                
                Text("- Go Outside \n- Go to your room, close the door \n- Put your ear pods in \n- If gets violent call 911")
                    .font(.system(size: 17))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
     
                VStack {
                    Spacer()
                        .frame(height: 25)
                    
                    NavigationLink(
                        destination: Step2_ParentsFighting(),
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
                    Spacer()
                        .frame(height: 50)
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





struct Step1_ParentsFighting_Previews : PreviewProvider {
    static var previews: some View {
        Step1_ParentsFighting()
    }
}

