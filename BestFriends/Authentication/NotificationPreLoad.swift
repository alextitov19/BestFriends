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
    @State private var giveMeXHours: String = ""
    
    var body: some View {
        NavigationView {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
                VStack {
                    ScrollView {

                    Text("BestFriends Chat")
                        .font(.system(size: 50))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 400, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                        Spacer().frame(height: 20)
                       
                        Text("ALERT")
                            .font(.system(size: 90))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 400, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                        Spacer().frame(height: 25)
                       
                    Text("Display who invited here")
                        .font(.system(size: 32))
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                        
                        Spacer().frame(height: 20)
                        
                    NavigationLink(
                            destination: SettingsView(),
                            label: {
                               Text("Chat NOW")
                           })
                        .font(.system(size: 40))
                        .frame(width: 225, height: 70, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
                        .cornerRadius(25)
                                  
                    
                               
                               
                            
                            Spacer().frame(height: 50)
                           
                           
                                NavigationLink(
                                    destination: SettingsView(),
                                    label: {
                                        Text("Give me 10 min")
                                    })
                                    .font(.system(size: 32))
                                    .frame(width: 275, height: 50, alignment: .center)
                                    .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                                    .background(Color(#colorLiteral(red: 0.9778901935, green: 1, blue: 0.358712405, alpha: 1)))
                                    .cornerRadius(25)
                                            
                       
                       
                        VStack {
                        Spacer().frame(height: 40)
                       
                       
                            TextField("Give me X hours ...", text: $giveMeXHours)
                                .multilineTextAlignment(.center)
                                .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                                .frame(width: 300, height: 70, alignment: .center)
                              //  .font(.title)
                                .font(.system(size: 32))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .cornerRadius(25)
                                .disableAutocorrection(true)
                                .autocapitalization(.none)
                            
 
                        Spacer().frame(height: 20)
                       
                        
                        Text("Urgency Level")
                            .font(.system(size: 32))
                            .fontWeight(.ultraLight)
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                            NavigationLink(
                                destination: BlueModePage1(),
                                label: {
                                    Text(" [1]      [2]      [3]")
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

