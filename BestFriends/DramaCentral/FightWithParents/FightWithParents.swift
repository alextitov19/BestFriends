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
                
                
                Text("My Phone")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.blue)
                
                Spacer()
                    .frame(height: 25)
   
                VStack {
                   
                      
                        Text("Parents Checking my Phone.")
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .foregroundColor(.blue)
                        
                        Spacer()
                            .frame(height: 15)
                        
                        VStack {
                            Text("If the phone was a gift to you by your parents before you were an adult, then")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                                .padding(.top)
                                .padding(.horizontal)
                            
                            CustomDivider(color: .white)
                                .frame(width: 200)
                            
                            Text("since you are now an adult you have a right to privacy in all your affairs, including your mobile phone.")
                                .foregroundColor(.white)
                                .font(.system(size: 17))
                                .padding(.bottom)
                                .padding(.horizontal)
                        }
                        .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.white, lineWidth: 1)
                            )
                        
                        
                        VStack {
                            Spacer()
                                .frame(height: 35)
                            
                            Text("Can my parents take my")
                                .font(.system(size: 20))
                                .fontWeight(.regular)
                                .foregroundColor(.blue)
                            
                            Text("phone if I paid for it?")
                                .font(.system(size: 20))
                                .fontWeight(.regular)
                                .foregroundColor(.blue)
                            
                            Spacer()
                                .frame(height: 15)
                            
                            VStack {
                                Text("As long as you're under age 18 and living with your parents, you're under their authority.")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17))
                                    .padding(.top)
                                    .padding(.horizontal)
                                
                                CustomDivider(color: .white)
                                    .frame(width: 200)

                               Text("They can take away your cell phone if they want, and the law gives you no recourse to get it back.")
                                   .foregroundColor(.white)
                                  .font(.system(size: 17))
                                   .padding(.bottom)
                                  .padding(.horizontal)
                                
                            }
                            
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.white, lineWidth: 1)
                            )
                            
                      
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
              
                    NavigationLink(
                        destination: FD_Step1(),
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
                        .frame(height: 150)
          }
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

