//
//  HorizonThoughts.swift
//  BestFriends
//
//  Created by Christine Maldonado on 8/4/22.
//

import SwiftUI

struct HorizonThoughts: View {
    
    let user: User
    let friends: [User]
    let atmosphere: Atmosphere
    
    @State private var summary = "Write down your thoughts/takeways"

    var body: some View {
        ZStack
        {
            Color(red: 255/255, green: 211/255, blue: 117/255)
                .ignoresSafeArea()
            
            VStack
            {
                Text("Did you complete your goal?")
                
                TextEditor(text: $summary)
                    .frame(width: 300, height: 450)
                    .background(.white)
                
                HStack
                {
                    Button {
                        print("i have been tapped")
                    } label: {
                        NavigationLink(destination: HorizonHomeView(user: user, friends: friends, atmosphere: atmosphere), label: {
                            
                        Text("Save")
                            .frame(width: 80, height: 50, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(ColorManager.purple3)
                            .cornerRadius(20)
                        })//NavigationLink
                    }
                    
                    Button {
                        print("i have been tapped")
                    } label: {
                        NavigationLink(destination: HorizonHomeView(user: user, friends: friends, atmosphere: atmosphere), label: {
                            
                            Text("Complete Task")
                            .frame(width: 150, height: 50, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(ColorManager.purple3)
                            .cornerRadius(20)
                        })//NavigationLink
                    }
                }//HStack
                
                Spacer()
            }//VStack
        }//ZStack
    }//body
}//struct

//struct HorizonThoughts_Previews: PreviewProvider {
//    static var previews: some View {
//        HorizonThoughts()
//    }
//}
