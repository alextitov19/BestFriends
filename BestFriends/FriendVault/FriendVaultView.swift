//
//  FriendVaultView.swift
//  BestFriends
//
//  Created by Social Tech on 4/13/22.
//

import Foundation
import SwiftUI

struct FriendVaultView: View {
    
    var body: some View {
        ScrollView{
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("Star Page")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 50)
                    
                    Text("FriendVault")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 0)
                    
                    
                    Spacer()
                        .frame(height: 15)
                    
                   
                        
                }
            }
        }
    }
}
                    
                    
                    
                    
                    struct FriendVaultView_Previews : PreviewProvider {
                        static var previews: some View {
                            FriendVaultView()
                        }
                    }


