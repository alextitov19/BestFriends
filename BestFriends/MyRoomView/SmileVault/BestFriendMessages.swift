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
//            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
//                .ignoresSafeArea()

//
//            Color.black
//                .ignoresSafeArea()
//
//            AdPlayerView(name: "Galaxy2")
//                .ignoresSafeArea()
//                .blendMode(.screen)
//                .onAppear(perform: createPlanets)
//                .opacity(0.9)

            
            Color.black
                .opacity(0.9)
                .ignoresSafeArea()
            
            
            Image("background_9")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .blendMode(.screen)
                .onAppear(perform: createPlanets)
            
            
            
            
            ZStack {
                

                
                VStack {
                    

                  
                }
            }
             
                    
            
            ZStack {
                if showItems {
                if planets.count > 0 {
                    NavigationLink(destination: IndividualFriendMessages(friend: planets[0].user, atmosphere: planets[0].atmosphere), label: { planets[0] })
                    .offset(x: showItems ? 150 : 0, y: showItems ? -250: 0)
                }
                                
                if planets.count > 1 {
                    NavigationLink(destination: IndividualFriendMessages(friend: planets[1].user, atmosphere: planets[1].atmosphere), label: { planets[1] })
                        .offset(x: showItems ? 75 : 0, y: showItems ? -250: 0)
                }
                
                if planets.count > 2 {
                    NavigationLink(destination: IndividualFriendMessages(friend: planets[2].user, atmosphere: planets[2].atmosphere), label: { planets[2] })
                        .offset(x: showItems ? 0 : 0, y: showItems ? -250: 0)
                }
                 
                    if planets.count > 3 {
                        NavigationLink(destination: IndividualFriendMessages(friend: planets[3].user, atmosphere: planets[3].atmosphere), label: { planets[3] })
                            .offset(x: showItems ? -75 : 0, y: showItems ? -250: 0)
                    }
                    
               
                    
                if planets.count > 4 {
                    NavigationLink(destination: IndividualFriendMessages(friend: planets[4].user, atmosphere: planets[4].atmosphere), label: { planets[4] })
                        .offset(x: showItems ? -150 : 0, y: showItems ? -250: 0)
                }
                }
                
                ZStack {
                   
                    Image(systemName: "square.fill")
                        .resizable()
                        .foregroundColor(Color.purple)
                        .frame(width: 375, height: 375)
                        .shadow(color: ColorManager .purple2, radius: 65, x: 30, y: 50)
                        .opacity(0.4)
                    
                    
                    Image(systemName: "star.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width: 100, height: 100)
                        .blur(radius: 2)
                        .shadow(color: .purple, radius: 30, x: 20, y: 25)
//                        .opacity(0.9)
                    
                    VStack {
                        
                        Text("Long-tap your favorite")
                            .font(.system(size: 23))
                            .foregroundColor(ColorManager .grey1)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                  
                        
                        Text("messages in Chat")
                            .font(.system(size: 23))
                            .foregroundColor(ColorManager .grey1)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        
                        Spacer ()
                            .frame(height: 44)
                        
                        Text("Tap \nhere")
                            .font(.system(size: 27))
                            .foregroundColor(ColorManager .grey4)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                    
                        
                        Spacer ()
                            .frame(height: 57)
                    
                        Text("We save them for you here")
                            .font(.system(size: 15))
                            .italic()
                            .foregroundColor(ColorManager.grey1)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                        

                    }
                     
                }
              
         
            .onTapGesture {
                    withAnimation {
                        self.showItems.toggle()
                    }
                    print("Planets count: ", planets.count)
                }
                .animation(Animation.easeInOut(duration: 2.0), value: showItems)
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
                .frame(width: 110, height: 110)
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

