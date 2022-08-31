//
//  BuiltByTeens.swift
//  BestFriends
//
//  Created by Social Tech on 6/16/22.
//


import SwiftUI
import AVKit

struct BuiltByTeens: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {

              Image("BuiltByTeens")
                  .resizable()
                  .ignoresSafeArea()
                  .scaledToFill()
            
//            ColorManager.grey4
//                .ignoresSafeArea()
            
            VStack {
               
                
                
                Divider()
                    .foregroundColor(.white)
                
                Link(destination: URL(string: "https://socialtechlabs.com/privacy-policy-2/")!) {
                    
                    HStack {
                        Text("Privacy Policy")
                            .font(.system(size: 20))
                            .foregroundColor(.purple)
                         .frame(maxHeight: 0)
                        
                        Spacer()
                         
                    }
                }
                
               
                
                Spacer()
                      .frame(height: 80)
                
                Text("Safety TIP")
                    .font(.system(size: 30))
                    .offset(x: -25)
                    .foregroundColor(.green)
                    .frame(height: 50)
                
                Text("The BestFriends app ")
                    .font(.system(size: 20))
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.gray)
                
                
                
                Spacer()
            }
            .padding(40)

            
        }
    }
    
}
struct BuiltByTeens_Previews : PreviewProvider {
    static var previews: some View {
        BuiltByTeens()
    }
}
