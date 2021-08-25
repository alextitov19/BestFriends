//
//  HideoutsView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/24/21.
//

import SwiftUI

struct HideoutsView: View {
    
    var body: some View {
        ZStack {
            AdPlayerView(name: "FieldFlowers")
                .ignoresSafeArea()
            
            VStack {
                Text("Hideouts")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(40)
                
                Text("Smile Vault")
                    .font(.headline)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .foregroundColor(.white)
                    .background(Color(.purple))
                    .cornerRadius(20)
                    .padding()
                
                Text("Shaking Cool")
                    .font(.headline)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .foregroundColor(.white)
                    .background(Color(.purple))
                    .cornerRadius(20)
                    .padding()
                
                Text("Meditation Room")
                    .font(.headline)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .foregroundColor(.white)
                    .background(Color(.purple))
                    .cornerRadius(20)
                    .padding()
                
                Text("Blue Mode")
                    .font(.headline)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .foregroundColor(.white)
                    .background(Color(.purple))
                    .cornerRadius(20)
                    .padding()
                
                Spacer()
            }
        }
    }
}
