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
            
            
                        ColorManager.purple4
                            .ignoresSafeArea()
                            .onAppear()
                        
             
            
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
                    .foregroundColor(Color.purple)
                
                Spacer()
                    .frame(height: 10)
                
                Text("P A R E N T S")
                    .font(.system(size: 60))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.purple)
                
                Spacer()
                    .frame(height: 20)
                
                Text("This is a tough one to fix")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
               
            
      
                VStack {
                    Spacer()
                        .frame(height: 70)
                    
                    Text("Please be patient,")
                        .font(.system(size: 40))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                    
                    Text("we're working on it")
                        .font(.system(size: 40))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                        .frame(height: 25)
                    
                   
                    
                    NavigationLink(
                        destination: EmptyView(),
                        label: {
                            Text("Comming Fall 2022")
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

