//
//  SmileNotesLibrary.swift
//  BestFriends
//
//  Created by Robert Roe on 5/13/21.
//

import Foundation
import SwiftUI

struct SmileNotesView: View {

    var body: some View {
        
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                // MARK: Header
                HStack {
                    // Edit button
                    Button( action: {
                        
                    }) {
                        Image("editIconWhite")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    
                    Spacer().frame(width: 80)
                    
                    Text("Smile Notes")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    
                    Spacer().frame(width: 80)

                    // Favorites button
                    Button( action: {
                        
                    }) {
                        Image("favoritesIcon")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                }
                
                Spacer()
            }
        }
        
    }
}

struct SmileNotesView_Previews : PreviewProvider {
    static var previews: some View {
        SmileNotesView()
    }
}
