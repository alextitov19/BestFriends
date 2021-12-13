//
//  BlueTransitionPage1.swift
//  BestFriends
//
//  Created by Social Tech on 5/22/21.
//

import Amplify
import SwiftUI

struct BlueTransitionPage1: View {
    
    var body: some View {
        
        NavigationView{
            
            ZStack {
                Image("Transition3")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack {
                    
                    VStack {
                        
                        
                        HStack {
                            Spacer()
                            
                            
                            VStack {
                                Text("introducing ...")
                                    .italic() .italic()
                                    .font(.system(size: 25))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 275, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                
                                Text("BlueMode")
                                    
                                    .font(.system(size: 45))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .multilineTextAlignment(.center)
                                    .frame(width: 275, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }
                            
                            Spacer()
                                .frame(width: 50)
                            
                        }
                        
                        
                        
                        Spacer()
                            .frame(height: 0)
                        
                        
                        HStack {
                            VStack {
                                Spacer()
                                    .frame(height: 125)
                                
                                Image("Penguin Sticker 32")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .scaledToFill()
                                
                            }
                            
                            
                            
                            
                            
                            ZStack {
                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 325, height: 150)
                                    .scaledToFill()
                                
                                
                                VStack {
                                    Text("Helping you slow the drama.")
                                        .italic() .italic()
                                        .font(.system(size: 37))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                                        .multilineTextAlignment(.center)
                                        .frame(width: 275, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                    
                                    Spacer()
                                        .frame(height: 7)
                                    
                                }
                                
                                
                            }
                            
                            Spacer()
                                .frame(height: 75)
                        }
                    }
                    
                    Spacer()
                        .frame(height: 250)
                    
                    
                    NavigationLink(destination: DarkModePage1()) {
                        Text("Next")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .frame(width: 325, height: 50)
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .cornerRadius(25)
                    }
                    Spacer()
                        .frame(height: 150)
                    
                }
            }
            
            
            
            
        }
    }
    
    
    
    
    struct BlueTransitionPaqe1_Previews : PreviewProvider {
        static var previews: some View {
            BlueTransitionPage1()
            
        }
    }
}

