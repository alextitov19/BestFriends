//
//  Tokens.swift
//  BestFriends
//
//  Created by Social Tech on 6/10/21.
//

import Amplify
import SwiftUI

struct Tokens: View {
    

    var body: some View {
        ZStack {

            Image("blueBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            ScrollView {
            VStack {
                
     
                Text("Tokens")
                    .font(.system(size: 50))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
                Text("Stickers & Gif Purchases")
                    .font(.system(size: 40))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .frame(width: 400, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer().frame(height: 20)
                
                Text("Tokens are earned by watching Ad videos from the 'interest category' you selected at Registration. Tokens may be used to purchase Stickers and Gifs.")
                    .frame(width: 400, height: 175, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                VStack {
                
                    Spacer()
                        .frame(height: 25)
                    
                   
                    NavigationLink(
                        destination: SettingsView(),
                        label: {
                            Text("Watch complete Ad video = 1 token.")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .cornerRadius(25)
                    Spacer()
                        .frame(height: 25)
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("Click Link in Ad video = 3 token.")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .cornerRadius(25)
                    
                   
                    
                    
                    Spacer()
                        .frame(height: 60)
                    
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("My Token Bank")
                        })
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    .cornerRadius(25)
                    
                 
                    
                    
                    VStack {
                    
                        Spacer()
                            .frame(height: 20)
                        
                        
                        NavigationLink(
                            destination: SettingsView(),
                            label: {
                                Text("Stickers are 5 tokens. Gifs are 10 Tokens")
                            })
                        .frame(width: 325, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .cornerRadius(25)
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(
                            destination: SettingsView(),
                            label: {
                                Text("Purchase Stickers & Gifs in Chat")
                            })
                        .frame(width: 325, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .cornerRadius(25)
                        
                        
                        Spacer()
                            .frame(height: 15)
                       

                        Spacer()
                            .frame(height: 30)
                        
                        NavigationLink(destination: SettingsView()) {
                                            Text("Edit my Ad 'interest category'")
                                                .font(.system(size: 30))
                                                .fontWeight(.ultraLight)
                                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                .frame(width: 400, height: 50)
                                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                                .cornerRadius(25)
                       
                        
                        }
                        
                        
                       
    
                    Spacer()
                        .frame(height: 200)
                
                        
                        
                        
                        
                        
                        }
                    }
                }
            }
        }
    }
}


 
struct Tokens_Previews : PreviewProvider {
    static var previews: some View {
        Tokens()
    }
}
