//
//  DramaMainView.swift
//  BestFriends
//
//  Created by Social Tech on 4/28/22.
//

import Foundation
import SwiftUI

struct DramaMainView: View {
   
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

            Image("in bushes")
                .resizable()
                .resizable()
                .frame(width: 1300, height: 1000)

    VStack {
        HStack {
            VStack {
                Button(action: {
//                    want to take to 'Atmosphere when built"
//                    sessionManager.showHomeView()
                    sessionManager.showShowHug()
                    
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 130, height: 130)
                            .foregroundColor(ColorManager.pmbc_green)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("7")
//                            .background()
                            .foregroundColor(.purple)
                            .font(.system(size: 130, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        
                        Text("face \n-to- \nface")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                }
                
                Spacer()
                    .frame(height: 1)
                
                Button(action: {
                    sessionManager.showTextingFirst()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 130, height: 130)
                            .foregroundColor(ColorManager.pmbc_blue)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)

                        Text("6")
//                            .background()
                            .foregroundColor(.purple)
                            .font(.system(size: 130, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        
                        Text("Texting \nFirst \nAnxiety")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)


                    }
                }
                
            }
            
            VStack {
                Button(action: {
                    sessionManager.showFightLandingView()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 130, height: 130)
                            .foregroundColor(ColorManager.pmbc_blue)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("2")
//                            .background()
                            .foregroundColor(.purple)
                            .font(.system(size: 125, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        
                        Text("Who did \nyou fight \nwith?")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                    
                }
                
                Spacer()
                    .frame(height: 1)
                
                Button(action: {
                    sessionManager.showNotReadyTalk()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 150, height: 150)
                            .foregroundColor(ColorManager.pmbc_pink)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("1")
//                            .background()
                            .foregroundColor(.purple)
                            .font(.system(size: 150, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        Text("NOT \nready to \ntalk yet")
//                            .background()
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    
                    
                    }
                }
                
                Spacer()
                    .frame(height: 1)
                
                Button(action: {
                    sessionManager.showWhy()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 130, height: 130)
                            .foregroundColor(ColorManager.pmbc_green)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                      
                        
                        Text("5")
//                            .background()
                            .foregroundColor(.purple)
                            .font(.system(size: 125, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        
                        Text("Cause \nof \nFight")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                

                    }
                }
                
            }
            
            VStack {
                Button(action: {
                    sessionManager.showBreathInviteView()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 130, height: 130)
                            .foregroundColor(ColorManager.pmbc_green)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("3")
//                            .background()
                            .foregroundColor(.purple)
                            .font(.system(size: 130, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        
                        Text("Take \na \nBreaath")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                }
                
                Spacer()
                    .frame(height: 1)
                
                Button(action: {
                    
//                    trying to link to FriendVault page
                    sessionManager.showNuclearOption()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 130, height: 130)
                            .foregroundColor(ColorManager.pmbc_blue)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        Text("4")
//                            .background()
                            .foregroundColor(.purple)
                            .font(.system(size: 130, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                        
                        
                        Text("Stop \nNuclear \nOption")
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                  
                    }
                    
                }
                
            }
        }
      
            
                        VStack {
                            NavigationLink(
                                destination: JournalFight(),
                                label: {
                                    Text("My Journal")
                                        .fontWeight(.medium)
                                        .frame(width: 275, height: 50)
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
struct DramaMainView_Previews: PreviewProvider {
    static var previews: some View {
        DramaMainView()
    }
}



