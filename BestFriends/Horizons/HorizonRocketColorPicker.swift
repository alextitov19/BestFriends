//
//  HorizonColorPicker.swift
//  BestFriends
//
//  Created by Nico Carbone on 5/26/22.
//

import Foundation
import SwiftUI

struct HorizonRocketColorPicker: View {
    var rocketColors: [String] = ["rocketbackgroundbluegold","rocketbackgroundbluewhite","rocketbackgroundbrown","rocketbackgroundlightpurple","rocketbackgroundneongreen","rocketbackgroundpinkpurplegreen","rocketbackgroundpinkwhite","rocketbackgroundpurplegreen"]
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
            VStack{
                Text("Choose Color \nSwipe To See Other Options")
                TabView {
                    ForEach(rocketColors, id: \.self){ rocketName in
                        NavigationLink(destination: HorizonHomeView(imageName: rocketName),
                                       label: {
                            
                            Image(rocketName)
                        })
                    }
                }.tabViewStyle(PageTabViewStyle())
            }
        }
    }
}
