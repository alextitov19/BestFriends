//
//  Friend1Vault.swift
//  BestFriends
//
//  Created by Social Tech on 5/15/22.
//



import Foundation

import SwiftUI
import AVKit

struct Friend1Vault: View {
    
    let user: User
    let friends: [User]
    
    var body: some View {
        
        ZStack {
            
//            Image("purpleBackground")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//                .onAppear {
//
                    ColorManager.purple2
                        .ignoresSafeArea()
                        .onAppear {
        //                .onAppear(perform: initLoadData)
                 
//                            Image("Friend1Box")
                            
                }
            
            // Stars animation...
            AdPlayerView(name: "backgroundAnimation")
                .ignoresSafeArea()
                .blendMode(.screen)
            
            VStack {
                
              Image("5swipe")
                
                Spacer()
                    .frame(height: 20)
              
                
                
//                Auto import message from [AtmosphereMain2] page for the below rectangle
              Rectangle()
                      .frame(width:325, height: 80)
                      .cornerRadius(15)
                      .foregroundColor(Color.gray)
             
                
                Spacer()
                    .frame(height: 20)
                
              Rectangle()
                      .frame(width:325, height: 80)
                      .cornerRadius(15)
                      .foregroundColor(Color.white)
              
//                Limit the number of characters you can type in this box. maybe like Twitter 140
                
//                Do not know what (    , text: $reason) is???
//                  TextField("Send Customized Support Message", text: $reason)
//                  .font(.system(size: 20))
//                  .foregroundColor(Color.black)
//                  .padding(.horizontal, 50)
//
                    HStack {
//                        Button(action: {
//                            self.presentationMode.wrappedValue.dismiss()
//                        }) {
                            Image("Hug")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .scaledToFit()
//                                .colorInvert()
//                                .rotationEffect(Angle(degrees: 180))
                        Spacer ()
                            .frame(width: 30)
                        
                        Image(systemName: "heart.fill")
                                    .resizable()
                                    .foregroundColor(.pink)
                                    .frame(width: 40, height: 40)
                                    .blur(radius: 2)

                                    .shadow(color: .blue, radius: 65, x: 30, y: 50)
                        
                        Spacer ()
                            .frame(width: 30)
                        
                        Image("bell")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .scaledToFit()
                             .colorInvert()
                             .rotationEffect(Angle(degrees: 180))
                         
                        Spacer()
                            .frame(width: 30)
                        
                        
                            Image("bell")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .scaledToFit()
                                .colorInvert()
                                .rotationEffect(Angle(degrees: 180))
                        }
                      
                    Spacer()
                        .frame(height: 500)
                }
            
            
            VStack {
             
                
//          ZStack {
              
           
         
          }
           
          Spacer ()
                    .frame(height: 50)
                
            //
            VStack{
                HStack {
                    }
                  
                    VStack {
                        HStack {
                            NavigationLink(
                                destination: BreathInView(),
                                label: {
                                    Text("ALL")
                                        .fontWeight(.bold)
                                        .frame(width: 100, height: 30)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 15))
                                        .background(Color(hue: 0.555, saturation: 1.0, brightness: 0.845))
                                        .cornerRadius(25)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
                            
                            if friends.count > 0 {
                                RectView(user: user, friend: friends[0])
                            }
                            
                            if friends.count > 1 {
                                RectView(user: user, friend: friends[1])
                            }
                        }
                        Spacer()
                            .frame(height: 35)
                        
                        HStack {
                            if friends.count > 2 {
                                RectView(user: user, friend: friends[2])
                            }
                            
                            if friends.count > 3 {
                                RectView(user: user, friend: friends[3])
                            }
                            
                            if friends.count > 4 {
                                RectView(user: user, friend: friends[4])
                            }
                        }
                        
                        Spacer()
                            .frame(height: 40)
                        
                     VStack {
                            
                            
                            Spacer ()
                                .frame(height: 20)
                            
                            NavigationLink(
                                destination: Step3_BreathInviteView(user: user, friends: friends),
                                label: {
                                    Text("Send Support Message")
                                        .fontWeight(.thin)
                                        .frame(width: 310, height: 40)
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .font(.system(size: 30))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(15)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                    
                                    
                                    
                                })
                            
                            
                            
                        }
                        
                    }
                }
                
            }
            
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







struct Friend1Vault_Previews : PreviewProvider {
    static var previews: some View {
        Friend1Vault(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [])
    }
}






//
//VStack {
//
//    Spacer()
//        .frame(height: 10)
//
//    Text("By tapping their name you're \nsending a push notification")
//        .font(.system(size: 25))
//        .italic()
//        .foregroundColor(.gray)
//        .fontWeight(.semibold)
//        .multilineTextAlignment(.center)
//    Spacer()
//        .frame(height: 20)
//
//    Text("asking them to try to \nfix this fight in BlueMode.")
//        .font(.system(size: 25))
//        .italic()
//        .foregroundColor(.gray)
//        .fontWeight(.semibold)
//        .multilineTextAlignment(.center)
//    Spacer()
//        .frame(height: 60)
//}
