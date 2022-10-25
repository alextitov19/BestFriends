//
//  FriendVault.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//



import Foundation
import SwiftUI
import AVKit

struct BestFriendMessages: View {
    
    @State private var showItems: Bool = false
    @State private var offset: CGFloat = 200.0
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    
    @State private var planets: [Planet] = []
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()

            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
                .onAppear(perform: createPlanets)

            
            ZStack {
                
               
                   
                
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(ColorManager.purple3)
                    .frame(width: 300, height: 300)
                    .blur(radius: 2)
                    .shadow(color: .gray, radius: 65, x: 40, y: 50)
                    .opacity(0.1)
                
                VStack {
                    

                  
                }
            }
             
                    
            
            ZStack {
                if showItems {
                if planets.count > 0 {
                    NavigationLink(destination: IndividualFriendMessages(friend: planets[0].user, atmosphere: planets[0].atmosphere), label: { planets[0] })
                    .offset(x: showItems ? 100 : 0, y: showItems ? -305: 0)
                }
                                
                if planets.count > 1 {
                    NavigationLink(destination: IndividualFriendMessages(friend: planets[1].user, atmosphere: planets[1].atmosphere), label: { planets[1] })
                        .offset(x: showItems ? -100 : 0, y: showItems ? 205: 0)
                }
                
                if planets.count > 2 {
                    NavigationLink(destination: IndividualFriendMessages(friend: planets[2].user, atmosphere: planets[2].atmosphere), label: { planets[2] })
                        .offset(x: showItems ? -150 : 0, y: showItems ? 150: 0)
                }
                 
                    if planets.count > 3 {
                        NavigationLink(destination: IndividualFriendMessages(friend: planets[3].user, atmosphere: planets[3].atmosphere), label: { planets[3] })
                            .offset(x: showItems ? -60 : 0, y: showItems ? -160: 0)
                    }
                    
                    
                    
                    
                if planets.count > 4 {
                    NavigationLink(destination: IndividualFriendMessages(friend: planets[4].user, atmosphere: planets[4].atmosphere), label: { planets[4] })
                        .offset(x: showItems ? 80 : 0, y: showItems ? -260: 0)
                }
                }
                
                ZStack {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(ColorManager.grey1)
                        .frame(width: 250, height: 250)
                        .blur(radius: 2)
                        .shadow(color: .white, radius: 65, x: 40, y: 50)
                        .opacity(0.3)
                    
                    VStack {
                        
                        Text("Remembering")
                            .font(.system(size: 35))
                            .foregroundColor(.green)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                  
                        Text("World Messages")
                            .font(.system(size: 25))
                            
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        Spacer ()
                            .frame(height: 15)
                    
                        Text("you \nlong-tapped")
                            .font(.system(size: 18))
                            .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        Text("in Chat")
                            .font(.system(size: 18))
                            .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)

                    }
                     
                }
              
         
            .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("Planets count: ", planets.count)
                }
                .animation(Animation.easeInOut(duration: 1.0), value: showItems)
            }
        }
    }
    
    // Create plantes and populate the planets array
    private func createPlanets() {
        planets = []
        for friend in friends {
            for atm in friendAtmospheres {
                if friend.atmosphere == atm.id {
                    // Found the friend - atmosphere pair
                    let planet = Planet(user: friend, atmosphere: atm)
                    planets.append(planet)
                    print("Created planet")
                }
            }
        }
    }
}


struct FriendVaultCircle: View {
    var color: Color
    var friendName: String
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 105, height: 105)
                .clipShape(Circle())
                .foregroundColor(color)
//                .blur(radius: 10)
                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 5, x: 0, y: 5)
            
            Text(friendName)
                .fontWeight(.light)
                .foregroundColor(.black)
            
        }
    }
}






//
//
//
//struct BestFriendMessages_Previews : PreviewProvider {
//    static var previews: some View {
//        BestFriendMessages()
//    }
//
//}