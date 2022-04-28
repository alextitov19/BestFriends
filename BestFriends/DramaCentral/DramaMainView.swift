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
                .ignoresSafeArea()
                .scaledToFill()
           
//            AdPlayerView(name: "backgroundAnimation")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .offset(y: -250)


//            Image("planet_1")
//
            
        HStack {
            VStack {
                Button(action: {
                    
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(ColorManager.pmbc_green)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("Ask my\nfriends \nfor HELP")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                }
                
                Spacer()
                    .frame(height: 40)
                
                Button(action: {
                    sessionManager.showDramaView()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(ColorManager.pmbc_blue)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("Hold Up \n don't \nunfriend \nyet")
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                }
                
            }
            
            VStack {
                Button(action: {
                    sessionManager.showInvite()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(ColorManager.pmbc_blue)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("I'm NOT\nready \nto Talk")
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                    
                }
                
                Spacer()
                    .frame(height: 40)
                
                Button(action: {
                    sessionManager.showFightWithFriend()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 150, height: 150)
                            .foregroundColor(ColorManager.pmbc_pink)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("Fight \nwith my \n Friend")
//                            .background()
                            .foregroundColor(.gray)
                            .font(.system(size: 31, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                }
                
                Spacer()
                    .frame(height: 40)
                
                Button(action: {
                    sessionManager.showMasterFriendVault()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 160, height: 160)
                            .foregroundColor(ColorManager.pmbc_green)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("Set \ntime to \n>Talk<")
//                            .background()
                            .foregroundColor(.gray)
                            .font(.system(size: 27, weight: .bold))
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
                            .frame(width: 115, height: 115)
                            .foregroundColor(ColorManager.pmbc_green)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("Slow Down \ntake a \nBREATH")
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                }
                
                Spacer()
                    .frame(height: 40)
                
                Button(action: {
                    
//                    trying to link to FriendVault page
                    sessionManager.showBestFriendMessages()
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 100, height: 100)
                            .foregroundColor(ColorManager.pmbc_blue)
                            .shadow(color: .black, radius: 2, x: 0, y: 2)
                        
                        Text("Anxiety \n of texting \nFIRST?")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .bold))
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                    }
                }
                
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






//    let user: User
//
//    var planet: Int
//    var mood: Int
//
//    var body: some View {
//        PlanetView(planet: planet, mood: mood)
//            .scaledToFit()
//            .frame(width: 120, height: 120)
//            .glow(color: glowColor())
//    }
//
//    private func glowColor() -> Color {
//        switch mood {
//        case 0:
//            return ColorManager.pmbc_blue
//        case 1:
//            return ColorManager.pmbc_green
//        case 2:
//            return ColorManager.pmbc_pink
//        default:
//            return ColorManager.pmbc_blue
//        }
//    }
//}

//struct PlanetView: View {
//    let planet: Int
//    let mood: Int
//
//var body: some View {
//       Image("planet_\(planet)")
//           .resizable()
// }
//}

//struct PlanetActionsView: View {
