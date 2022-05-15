//
//  FriendVault.swift
//  BestFriends
//
//  Created by Social Tech on 4/22/22.
//



import Foundation
import SwiftUI

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
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .onAppear(perform: createPlanets)
            
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            
//            PlanetView(planet: atmosphere.planet, mood: atmosphere.mood)
//                .scaledToFit()
//                .frame(width: 700)
            
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
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(ColorManager.purple3)
                        .frame(width: 250, height: 250)
                        .blur(radius: 2)
                        .shadow(color: .orange, radius: 65, x: 40, y: 50)
                    
                    
                    VStack {
                        
                        Text("STOP Scrolling")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        Text("quickly see")
                            .font(.system(size: 15))
                            .italic()
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("Special \nMessages")
                            .font(.system(size: 35))
                            .foregroundColor(.purple)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .shadow(color: .black, radius: 1, x: 0, y: 1)
                   
                        Text("you 'long-tapped' \nfrom Chat")
                            .font(.system(size: 16))
                            .italic()
                            .foregroundColor(.white)
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
