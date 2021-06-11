//
//  EnjoyingBestFriends.swift
//  BestFriends
//
//  Created by Social Tech on 5/29/21.
//

import Amplify
import SwiftUI

struct EnjoyingBestFriends: View {

    var body: some View {
            VStack {
                Text("Are you enjoying BestFriends?")
                    .italic()
                    .font(.system(size: 35, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .padding(5)
            
                
                HStack {
                    // Take the to the app store to write review
                    NavigationLink(
                        destination: YesEnjoyingApp(),
                        label: {
                            Text("Yes")
                        })
                        .font(.system(size: 35))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
                    .cornerRadius(25)
                      
                    Spacer().frame(width: 150)
                    // Take the user back to the page they were on when the popup came up
                    NavigationLink(
                        destination: NotEnjoyingApp(),
                        label: {
                            Text("No")
                        })
                        .font(.system(size: 35))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)))
                        .cornerRadius(25)
                    }
                .padding(5)
        }
        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
    }
}

struct EnjoyingBestFriends_Previews : PreviewProvider {
    static var previews: some View {
        EnjoyingBestFriends()
    }
}



