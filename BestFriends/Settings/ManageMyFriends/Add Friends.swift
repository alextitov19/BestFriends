//
//  Add Friends.swift
//  BestFriends
//
//  Created by Social Tech on 6/9/21.
//


import Amplify
import SwiftUI


struct AddFriends: View {

    var body: some View {
        NavigationView{
            ZStack {
                
                Image("purpleBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    Text("Add Friends")
                       
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Just tap the 'Add Friends' icon at bottom of Homepage and text your friend your QR code on your phone.")
                       
                        .font(.system(size: 20))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                      
                  
                    
                    
                    Spacer()
                        .frame(height: 90)
                    
                    Text("Add friend's image to your ShakingCool")
                       
                        .font(.system(size: 35))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("When you add a friend you can add an extra image to ShakingCool. Have your friend send one that they would like you to add.")
                           
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                                     Spacer()
                                         .frame(height: 30)
                         
                        }
                        
                      
                    
                    }
                    
                    
                }
            }
            }
            
struct AddFriends_Previews : PreviewProvider {
    static var previews: some View {
        AddFriends()
    }
}

        
