//
//  BroadcastView.swift
//  BestFriends
//
//  Created by Alex Titov on 7/28/21.
//

import SwiftUI

struct BroadcastView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var input: String = ""
    @State private var status: String = ""
    
    private var userDS = UserDataSource()
    private var pushNS = PushNotificationSender()
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Broadcast")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                
                Text("Broadcast good and exciting news to your best friends by sending them a push notification!")
                    .font(.system(size: 25, weight: .light))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                TextField("Your good news", text: $input)
                    .font(.system(size: 24))
                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(10)
                    .padding()
                
                if input.count > 3 {
                    Button(action: {
                        broadcast()
                    }) {
                        Text("Broadcast")
                            .frame(width: 150, height: 50, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.title)
                            .background(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                            .cornerRadius(25)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                    .padding()
                }
                
                if status.count > 0 {
                    Text(status)
                        .font(.system(size: 28, weight: .light))
                        .foregroundColor(status == "Sending" ? .yellow : .green)
                        .padding()
                }
            }
            
            VStack {
                Spacer()
                
                Image("home-alt2")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
                    .padding()
                    .onTapGesture {
                        sessionManager.getCurrentAuthUser()
                    }
            }
            .padding()
        }
    }
    
    private func broadcast() {
        status = "Sending"
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            let user = userDS.getCurrentUser()
            for id in user.friends {
                let friend = userDS.getUser(id: id)
                if friend.notificationsBroadcast {
                    let token = friend.deviceFCMToken
                    pushNS.sendPushNotification(token: token, title: "\(user.firstName) has some exciting news!", body: input)
                }
            }
            status = "Sent"
        }
    }
}


struct BroadcastView_Previews : PreviewProvider {
    static var previews: some View {
        BroadcastView()
    }
}
