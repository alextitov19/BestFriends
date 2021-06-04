//
//  BlueHeartVid.swift
//  BestFriends
//
//  Created by Social Tech on 6/4/21.
//


import SwiftUI
import Amplify
import AVKit

struct BlueHeartVid: View {
    @Environment(\.presentationMode) var presentationMode
    
    var names: [String] = ["BlueModeVid"]
    
//    var timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            AdPlayerView(name: "BlueModeVid")
                .ignoresSafeArea()
     
            
            
            Spacer()
                .frame(height: 1)
            
            NavigationLink(destination: SettingsView()) {
                                Text("Take me to BlueMode Chat")
                                    .font(.system(size: 30))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: 400, height: 50)
                                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                    .cornerRadius(25)
                }
            
            
            
        }
    }
}
struct BlueHeartVid_Previews : PreviewProvider {
    static var previews: some View {
        BlueHeartVid()
        }
}
