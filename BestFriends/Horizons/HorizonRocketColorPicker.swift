//
//  HorizonColorPicker.swift
//  BestFriends
//
//  Created by Nico Carbone on 5/26/22.
//

import Foundation
import SwiftUI

struct HorizonRocketColorPicker: View {
    
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
            VStack{
                Text("Choose Color \nSwipe To See Other Options")
                TabView {
                    NavigationLink(destination: HorizonHomeView(imageName: "rocketbackgroundbluegold"),
                                   label: {
                        Image("rocketbackgroundbluegold")
                    })
                    NavigationLink(destination: HorizonHomeView(imageName: "rocketbackgroundbluewhite"),
                                   label: {
                        Image("rocketbackgroundbluewhite")
                    })
                    NavigationLink(destination: HorizonHomeView(imageName: "rocketbackgroundbrown"),
                                   label: {
                        Image("rocketbackgroundbrown")
                    })
                    NavigationLink(destination: HorizonHomeView(imageName: "rocketbackgroundlightpurple"),
                                   label: {
                        Image("rocketbackgroundlightpurple")
                    })
                    NavigationLink(destination: HorizonHomeView(imageName: "rocketbackgroundneongreen"),
                                   label: {
                        Image("rocketbackgroundneongreen")
                    })
                    NavigationLink(destination: HorizonHomeView(imageName: "rocketbackgroundpinkpurplegreen"),
                                     label: {
                          Image("rocketbackgroundpinkpurplegreen")
                      })
                    NavigationLink(destination: HorizonHomeView(imageName: "rocketbackgroundpinkwhite"),
                                     label: {
                          Image("rocketbackgroundpinkwhite")
                      })
                    NavigationLink(destination: HorizonHomeView(imageName: "rocketbackgroundpurplegreen"),
                                     label: {
                          Image("rocketbackgroundpurplegreen")
                      })
                }.tabViewStyle(PageTabViewStyle())
            }
        }
 
        
    }
}
