//
//  IntroFriendGpFight.swift
//  BestFriends
//
//  Created by Social Tech on 5/8/22.
//



import Foundation
import SwiftUI


struct IntroFriendGpFight: View {
    
    var body: some View {
        ZStack {
            ColorManager.grey4
                  .ignoresSafeArea()
//            Image("purpleBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
//            //
            //
            //                AdPlayerView(name: "backgroundAnimation")
            //                    .ignoresSafeArea()
            //                    .blendMode(.screen)
            //                    .offset(y: -250)
            //
            VStack {
//                Text("Fixing Friend \nGroup Fights")
//                    .font(.system(size: 65))
//                    .foregroundColor(.white)
//                    .fontWeight(.ultraLight)
//                    .multilineTextAlignment(.center)
//                Spacer()
//                    .frame(height: 20)
                Text("Problem")
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                    .fontWeight(.ultraLight)
                    .multilineTextAlignment(.center)


                
                Text("Teens don't fit society's")
                    .font(.system(size: 27))
                    .foregroundColor(.blue)
                    .fontWeight(.light)
                
                Spacer()
                    .frame(height: 5)
                 
                Text("'Suggested Solutions'")
                    .font(.system(size: 27))
                    .foregroundColor(.blue)
                    .fontWeight(.light)
                Spacer()
                    .frame(height: 15)
                
                   
                Text("to handle Friend Group DRAMA")
                    .font(.system(size: 24))
                    .italic()
                    .foregroundColor(.white)
                    .fontWeight(.light)
            VStack {
                    Spacer()
                        .frame(height: 60)
                    
                    NavigationLink(
                        destination: Step1FG_SuggestedSolutions(),
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
                        .frame(height: 40)
                
                Text("Their Solutions")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
               
                Spacer()
                    .frame(height: 10)
                
                Text("1) Ignore all fights in your Friend Group \n\n2) If two friends are fighting;\n.   .   . Don't pick sides \n.   .   . Don't commiserate \n.   .   . Don't personalize their fight \n\n3) They must fix it - not you!")
                    .font(.system(size: 23))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                
                Spacer()
                    .frame(height: 10)
                
                Text("")
                    .font(.system(size: 40))
                    .fontWeight(.light)
                    .foregroundColor(Color.blue)
                    
                    
                }
            }
            
        }
    }
}


struct IntroFriendGpFight_Previews : PreviewProvider {
    static var previews: some View {
        IntroFriendGpFight()
    }
}


