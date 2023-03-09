//
//  PickMediator.swift
//  BestFriends
//
//  Created by Social Tech on 6/10/22.
//

import Foundation
import SwiftUI

struct PickMediator: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
//    let user: User
//    let friends: [User]
//    let groups: [Group]
//

    let user: User
    let atmosphere: Atmosphere
    let friends: [User]
    let friendAtmospheres: [Atmosphere]
    let groups: [Group]
    
    
    
    @State private var selectedFriends: [String] = []
    @State private var colors: [Color] = [ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3, ColorManager.purple3]
    @State private var shareColor = ColorManager.purple5
    @State private var showingAlert = false
    
    @State private var counter = 0
    
    @State private var mood: Int = -1
    @State private var summary = ""
    @State private var sharedWith: [String] = []
    @State private var colorChangeTap: String = ""
    @State private var shareTapped: Bool = false
    @State private var colorButtonTapped: String = ""
    
    
    var body: some View {
        
        ZStack {
            
            ColorManager.grey4
                .ignoresSafeArea()
            //                .onAppear()
            
            
            Image("surferboysimg")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.5)
            
            VStack {
                
                
                Text("The myth of why guys")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                
                Text("don't talk about problems")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
         
                
                Spacer()
                    .frame(height: 15)
                
                
                
                NavigationLink(
                    destination: InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
                    label: {
                        Text("It's not embarrasment or being teased. \nInstead they ponder solutions")
                        
                            .fontWeight(.thin)
                            .frame(width: 320, height: 70)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 17))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                    })
//                
//                Button(action: {
//                    counter += 1
//                    shareTapped = true
//                    shareButtonTapped()
//                },
//                       label: {
//                    Text("Nope, it's not embarrasment or being teased.\nThey ponder solutions to \nsolve it - not talk about it.")
//                    
//                        .fontWeight(.thin)
//                        .frame(width: 310, height: 70)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .font(.system(size: 15))
//                        .background(ColorManager.purple3)
//                        .cornerRadius(15)
//                        .opacity(0.50)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        
//                        .alert("Nope, it's not embarrasment or being teased.\nThey ponder solutions wanting to \nsolve it - not talk about it.", isPresented: $showingAlert) {
//                            Button("OK", role: .cancel) { }
////                                .opacity(0.50)
//                        }
//                })
//                .confettiCannon(counter: $counter)
//                
//                

                Spacer()
                    .frame(height: 200)
                
                VStack {
                    
                    
                    Text("Girls _ consider adding a guy \nto your Friendgroup")
                        .font(.system(size: 25))
                        .italic()
                        .foregroundColor(.white)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                   
                    
                    
                    
                    
                    
                    
                    NavigationLink(
                        destination: InviteView(user: user, atmosphere: atmosphere, friends: friends,  friendAtmospheres: friendAtmospheres, groups: groups),
                        label: {
                            Text("If you build a gender mixed group of friends, you may invite up to 7 (instead of 5) friends")
                            
                                .fontWeight(.thin)
                                .frame(width: 310, height: 70)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .font(.system(size: 17))
                                .background(ColorManager.purple3)
                                .cornerRadius(15)
                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                        })

                    .confettiCannon(counter: $counter)
                    
                  
            
                    
                    Spacer()
                        .frame(height: 130)
           
                 
                                }
                
                
                
                            }
            
            
            
                        }
        
        
        
                    }
    
    func shareButtonTapped() {
        if selectedFriends.count == 0 { return }
        for id in selectedFriends {
            for f in friends {
                if f.id == id {
                    RestApi.instance.sendPushNotification(title: "BestFriends", body: "\(user.firstName) is thinking of you.", APNToken: f.APNToken)
    
                }



            }
        }
    }
    
}
