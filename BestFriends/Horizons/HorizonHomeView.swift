//
//  HorizonsHome.swift
//  BestFriends
//
//  Created by Nico Carbone on 5/25/22.
//

import Foundation
import SwiftUI

struct HorizonHomeView: View {
    
    let user: User
    let friends: [User]
    let atmosphere: Atmosphere
    
    @State var imageName = "blankrocketimage"
         
    var body: some View {
        
        ZStack{
            ColorManager.purple2
                .ignoresSafeArea()
            ZStack{
                
                Button(action: {
                    print("i have been tapped")
                }){
                    NavigationLink(destination: HorizonRocketColorPicker(user: user, friends: friends, atmosphere: atmosphere), label: {
                        Image(systemName: "paintbrush.fill").resizable().foregroundColor(.gray).frame(width: UIScreen.main.bounds.size.width / 5, height: UIScreen.main.bounds.size.width / 5, alignment: Alignment.center)
                            .padding()
                    })//NavigationLink
                }.position(x: UIScreen.main.bounds.size.width / 1.2, y: UIScreen.main.bounds.size.width / UIScreen.main.bounds.size.width)
            
                
                Image(imageName).resizable().scaledToFit()
                
               
                    Button(action: {
                        print("i have been tapped")
                    }){
                        NavigationLink(destination: HorizonGoalChoices(user: user, friends: friends, atmosphere: atmosphere), label: {
                            Image(systemName: "plus.circle").resizable().frame(width: UIScreen.main.bounds.size.width / 3.5, height: UIScreen.main.bounds.size.width / 3.5, alignment: Alignment.center)
                        })//NavigationLink
                    }.foregroundColor(.gray).padding().position(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 5)
                
                
                
                    Button(action: {
                        print("i have been tapped")
                    }){
                        NavigationLink(destination: HorizonGoalChoices(user: user, friends: friends, atmosphere: atmosphere), label: {
                            Image(systemName: "plus.circle").resizable().frame(width: UIScreen.main.bounds.size.width / 3.5, height: UIScreen.main.bounds.size.width / 3.5, alignment: Alignment.center)
                        })//NavigationLink
                    }.foregroundColor(.gray).padding().position(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 2.8)
                
                    
                
                    Button(action: {
                        print("i have been tapped")
                    }){
                        NavigationLink(destination: HorizonGoalChoices(user: user, friends: friends, atmosphere: atmosphere), label: {
                            Image(systemName: "plus.circle").resizable().frame(width: UIScreen.main.bounds.size.width / 3.5, height: UIScreen.main.bounds.size.width / 3.5, alignment: Alignment.center)
                        })//NavigationLink
                    }.foregroundColor(.gray).padding().position(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 1.9)
                
              
            }//ZStack
        }//ZStack
            
    }//body
}//struct


