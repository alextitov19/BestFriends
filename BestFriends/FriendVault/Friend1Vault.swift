//
//  Friend1Vault.swift
//  BestFriends
//
//  Created by Social Tech on 5/15/22.
//
import SwiftUI
import Combine


struct Friend1Vault: View {
    
    let user: User
    let friends: [User]
    let friend: User
    
    @State private var customMessage = "Custom Message"
    
    var body: some View {
        ZStack {
            ColorManager.purple2
                .ignoresSafeArea()
            
            VStack {
                //TODO: Just put in 'Image' as a place holder. Need to write code for swipping.
                Image("5swipe")
                
                Spacer()
                    .frame(height: 20)
                
                //MARK: code to get friends name at top of page
                HStack {
                    Spacer()
                        .frame(width: 35)
                    
                    Text(friend.firstName + " " + friend.lastName)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                //TODO: Auto import message from [AtmosphereMain2] page for the below rectangle
                Rectangle()
                    .frame(width:325, height: 80)
                    .cornerRadius(15)
                    .foregroundColor(Color.gray)
                
                Spacer()
                    .frame(height: 20)
                
                //MARK: Send CUSTOM Support Message to user got push notificaiton from OR chose one from below
                TextEditor(text: $customMessage)
                    .font(.system(size: 20))
                    .foregroundColor(Color.black)
                    .padding(.horizontal, 50)
                    .frame(width:325, height: 100)
                    .foregroundColor(Color.white)
                    .cornerRadius(15)
                    .onReceive(Just(customMessage)) { _ in limitText(50) }
                
                
                //                Limit the number of characters you can type in this box. maybe like Twitter 140
                
                //                Do not know what (    , text: $reason) is???
                
                //                  TextField("Send Customized Support Message", text: $reason)
                //                  .font(.system(size: 20))
                //                  .foregroundColor(Color.black)
                //                  .padding(.horizontal, 50)
                //
                HStack {
                    Image("Hug")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                    
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(.pink)
                        .frame(width: 40, height: 40)
                        .blur(radius: 2)
                        .shadow(color: .blue, radius: 65, x: 30, y: 50)
                        .padding(.horizontal, 30)
                    
                    Image("bell")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .scaledToFit()
                        .colorInvert()
                }
                .padding(.bottom, 20)
                
                VStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Are you okay?")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .frame(alignment: .leading)
                    })
                    
                    Divider()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Do you want to talk?")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .frame(alignment: .leading)
                    })
                    
                    Spacer ()
                }
                
            }
        }
    }
    
    private func limitText(_ upper: Int) {
        if customMessage.count > upper {
            customMessage = String(customMessage.prefix(upper))
        }
    }
    
    private struct RectView: View {
        let user: User
        let friend: User
        
        var body: some View {
            Button(action: {
                RestApi.instance.sendPushNotification(title: "BestFriends - BlueMode", body: "\(user.firstName) invited you to BlueMode!", APNToken: friend.APNToken ?? "").then { response in
                    print("Got send APN repsonse: ", response)
                }
            },
                   label: {
                Text(friend.firstName + " " + String(friend.lastName.first!))
                    .fontWeight(.bold)
                    .frame(width: 100, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .font(.system(size: 10))
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            })
        }
    }
    
}





struct Friend1Vault_Previews : PreviewProvider {
    static var previews: some View {
        Friend1Vault(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [], friend: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""))
    }
}
