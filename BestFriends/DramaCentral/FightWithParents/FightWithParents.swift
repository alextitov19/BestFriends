//
//  FightWithParents.swift
//  BestFriends
//
//  Created by Social Tech on 6/13/22.
//


import SwiftUI
import AVKit

struct FightWithParents: View {
    
    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        ZStack {
            
            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
//                        ColorManager.purple4
//                            .ignoresSafeArea()
//                            .onAppear()
                        
             
            
//            Image("purpleBackground")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//
//
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//
            
            VStack {
                
                
                Text("Fighting with")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
                Spacer()
                    .frame(height: 10)
                
                Text("P A R E N T S")
                    .font(.system(size: 60))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
   
                VStack {
                    Spacer()
                        .frame(height: 15)
                    
                    Text("Family drama may be normal, but it still sucks. We have some suggestions to help handle these conflicts.")
                        .font(.system(size: 15))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                        .padding()
                    
                    Text("Parents Checking my Phone: If the phone was a gift to you by your parents before you were an adult, since you are now an adult you have a right to privacy in all your affairs, including your mobile phone.")
                        .font(.system(size: 15))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                        .padding()
                    
                    Text("Why do I hate my parents? Toxic behaviors, abuse, neglect, or conflict are just a few factors that can lead to feelings of animosity.")
                        .font(.system(size: 15))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                        .padding()
                    Text("Can my parents take my phone if I paid for it? As long as you're under age 18 and living with your parents, you're under their authority; they can take away your cell phone if they want, and the law gives you no recourse to get it back.")
                        .font(.system(size: 15))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                        .padding()
                   
                  
                   
                    
                    Spacer()
                        .frame(height: 15)
                    
                   
                    
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("NEXT")
                                .fontWeight(.thin)
                                .frame(width: 310, height: 40)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 30))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)


                        
                        })
          }
        }
    }
}
}




struct FightWithParents_Previews : PreviewProvider {
    static var previews: some View {
        FightWithParents()
    }
}

