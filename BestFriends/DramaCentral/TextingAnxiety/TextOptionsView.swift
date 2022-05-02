//
//  TextOptionsView.swift
//  BestFriends
//
//  Created by Social Tech on 5/1/22.
//

import Foundation
import SwiftUI


struct TextOptionsView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
               
 }

               VStack{
                   Text("Select one, or type \nyour own in Chat")
                       .font(.system(size: 25, weight: .medium))
                       .foregroundColor(Color.black)
//                            Spacer()
//                                .frame(height: 25)
                   Button(action: sessionManager.showDramaMainView, label: {
                       Text("< back to Main")
                           .fontWeight(.thin)
                           .frame(width: 200, height: 40)
                           .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                           .font(.system(size: 25))
                           .background(ColorManager.purple3)
                           .cornerRadius(15)
                           .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                   })
               
               
               }
        
            ScrollView(.vertical) {
                       
                VStack {
                    Text("Let friend know still BFF")
                        .font(.system(size: 25, weight: .light))
                        .foregroundColor(Color.black)


                }
        }
        }
        
    }
}

struct TestOptionsView_Previews : PreviewProvider {
    static var previews: some View {
        TextOptionsView()
    }
}
