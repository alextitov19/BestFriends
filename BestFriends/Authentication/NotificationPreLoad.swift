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
    
    var roomID: String
    
    init(roomID: String) {
        self.roomID = roomID
    }
    
    var body: some View {
        NavigationView {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            
                VStack {
                    ScrollView {

                  
                    
                        Spacer().frame(height: 25)
                       
                    Text("Ted & Tim invited you to chat")
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
                                  
                    
                               
                               
                            
                            Spacer().frame(height: 100)
                           
                           
                                NavigationLink(
                                    destination: SettingsView(),
                                    label: {
                                        Text("Give me ...")
                                    })
                                    .font(.system(size: 32))
                                    .frame(width: 275, height: 50, alignment: .center)
                                    .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                                    .background(Color(#colorLiteral(red: 0.9778901935, green: 1, blue: 0.358712405, alpha: 1)))
                                    .cornerRadius(25)
                                            
                       
                       
                        VStack {
                        Spacer().frame(height: 40)
                            
                            Spacer().frame(height: 50)
                           
                           
                                NavigationLink(
                                    destination: SettingsView(),
                                    label: {
                                        Text("Unavailable")
                                    })
                                    .font(.system(size: 32))
                                    .frame(width: 275, height: 50, alignment: .center)
                                    .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                                    .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                                    .cornerRadius(25)
                                            
                       
                       
 
                        Spacer().frame(height: 20)
                       
                        
                      
                            
                        }
                    }
                }
            }
        }
    }
}
struct NotificationPreLoad_Previews : PreviewProvider {
    static var previews: some View {
        NotificationPreLoad(roomID: "")
    }
}

