//
//  NotificationPreLoad.swift
//  BestFriends
//
//  Created by Social Tech on 6/10/21.
//

import Amplify
import SwiftUI

struct NotificationPreLoad: View {

    @EnvironmentObject var sessionManager: SessionManager

    var body: some View {
        NavigationView {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
                VStack {
                    ScrollView {

                    Text("Chat with ...")
                        .font(.system(size: 50))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                    Spacer().frame(height: 20)
                   
                    
                    Text("Display names in the group chat here")
                        .font(.system(size: 32))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                        
                        Spacer().frame(height: 20)
                        
                    NavigationLink(
                            destination: SettingsView(),
                            label: {
                                Text("Chat now")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                    )
                    
                        
                            
                            Spacer().frame(height: 35)
                           
                           
                                NavigationLink(
                                    destination: AddFriends(),
                                    label: {
                                        Text("Give me 10")
                                    })
                                    .frame(width: 325, height: 50)
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                            )
                       
                       
                        VStack {
                        Spacer().frame(height: 35)
                       
                       
                            NavigationLink(
                                destination: ShakingCoolView(),
                                label: {
                                    Text("Unavilable for a while")
                                })
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                        )
                   
                   
                    
                    
                        Spacer().frame(height: 45)
                       
                        
                        Text("Is this super serious?")
                            .font(.system(size: 32))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                            NavigationLink(
                                destination: BlueModePage1(),
                                label: {
                                    Text("This box displayes [yes] or [no]")
                                })
                                .frame(width: 325, height: 50)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                        )
                            

                            
                        }
                    }

              


                    }
        }
        }
    }
}
struct NotificationPreLoad_Previews : PreviewProvider {
    static var previews: some View {
        NotificationPreLoad()
    }
}
