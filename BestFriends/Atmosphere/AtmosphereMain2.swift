//
//  AtmosphereMain2.swift
//  BestFriends
//
//  Created by Social Tech on 5/12/22.
//


import Foundation
import SwiftUI


struct AtmosphereMain2: View {
    
    let user: User
    let friends: [User]
    
    
    @State var didTap:Bool = false
    
    var body: some View {
        ScrollView(.vertical) {
        
            ZStack {
            
            Image("purpleBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
//                .onAppear(perform: loadData)
                .onAppear
                {
                   
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
                
//                                            if friends.count > 0 {
//                                                RectView(user: user, friend: friends[0])
//                                            }
//
//                                            if friends.count > 1 {
//                                                RectView(user: user, friend: friends[1])
//                                            }
//                                        }
//                                        Spacer()
//                                            .frame(height: 100)
//                                        HStack {
//                                            if friends.count > 2 {
//                                                RectView(user: user, friend: friends[2])
//                                            }
//
//                                            if friends.count > 3 {
//                                                RectView(user: user, friend: friends[3])
//                                            }
//
//                                            if friends.count > 4 {
//                                                RectView(user: user, friend: friends[4])
//                                            }
                                        }
                
                
                
                                        VStack {

                                            
//                            The push notification will not say what the mood was changed to. It will just say: [user name] has changed their mood.
                
                
                                            Spacer ()
                                                .frame(height: 20)
                
                                            NavigationLink(
                                                destination: Step3_BreathInviteView(user: user, friends: friends),
                                                label: {
                                                    Text("SHARE")
                                                        .fontWeight(.thin)
                                                        .frame(width: 110, height: 40)
                                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                                        .font(.system(size: 30))
                                                        .background(ColorManager.purple3)
                                                        .cornerRadius(15)
                                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                
                
                
                                                })
                
                
         Spacer()
                
            }
    VStack {
          
        Text("Why?")
            .font(.system(size: 23))
            .fontWeight(.regular)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.leading)
            .padding(.trailing, 290.0)
        
        Text("(If you want; type your reason here)")
            .font(.system(size: 15))
            .fontWeight(.regular)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.leading)
            .padding(.trailing, 105.0)
        
        Image("reason")
        
        
        Spacer()
            .frame(height: 50)
        
        Text("Today I'm Feeling ...")
            .font(.system(size: 23))
            .italic()
            .fontWeight(.regular)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.leading)
            .padding(.trailing, 150.0)
        
        Text("(Select your current mood)")
            .font(.system(size: 15))
            .italic()
            .fontWeight(.regular)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.leading)
            .padding(.trailing, 160.0)
 
        
    HStack {
        VStack {
      
                          Button(action: {
                                  self.didTap = true
                              }) {
      
                              Text("Upset")
                                      .font(.system(size: 17))
                                      .foregroundColor(Color.black)
                              }
                              .frame(width: 80, height: 30, alignment: .center)
                              .background(didTap ? Color.blue : Color.gray)
                              .cornerRadius(7)
                              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
      
              Spacer()
                  .frame(height: 20)
      
              Button(action: {
                      self.didTap = true
                  }) {
      
                  Text("Stressed")
                          .font(.system(size: 17))
                          .foregroundColor(Color.black)
                  }
                  .frame(width: 80, height: 30, alignment: .center)
                  .background(didTap ? Color.blue : Color.gray)
                  .cornerRadius(7)
                  .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
                          
                Spacer()
                    .frame(height: 20)
                          
                    Button(action: {
                        self.didTap = true
                        }) {
                          
                        Text("Sad")
                            .font(.system(size: 17))
                            .foregroundColor(Color.black)
                        }
                            .frame(width: 80, height: 30, alignment: .center)
                            .background(didTap ? Color.blue : Color.gray)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                          
                Spacer()
                    .frame(height: 20)
                          
                    Button(action: {
                        self.didTap = true
                        }) {
                          
                        Text("Lonely")
                            .font(.system(size: 17))
                            .foregroundColor(Color.black)
                        }
                            .frame(width: 80, height: 30, alignment: .center)
                            .background(didTap ? Color.blue : Color.gray)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                      }
        
        Spacer()
            .frame(width: 40)
        
        VStack {
      
                          Button(action: {
                                  self.didTap = true
                              }) {
      
                              Text("Okay")
                                      .font(.system(size: 17))
                                      .foregroundColor(Color.black)
                              }
                              .frame(width: 80, height: 30, alignment: .center)
                              .background(didTap ? Color.green : Color.gray)
                              .cornerRadius(7)
                              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
            
            Spacer()
                .frame(height: 20)
            
                                Button(action: {
                                        self.didTap = true
                                    }) {
            
                                    Text("Bored")
                                            .font(.system(size: 17))
                                            .foregroundColor(Color.black)
                                    }
                                    .frame(width: 80, height: 30, alignment: .center)
                                    .background(didTap ? Color.orange : Color.gray)
                                    .cornerRadius(7)
                                    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            
            
            
        }
        
            Spacer()
                .frame(width: 40)
        
        VStack {
      
                          Button(action: {
                                  self.didTap = true
                              }) {
      
                              Text("Happy")
                                      .font(.system(size: 17))
                                      .foregroundColor(Color.black)
                              }
                              .frame(width: 80, height: 30, alignment: .center)
                              .background(didTap ? Color.yellow : Color.gray)
                              .cornerRadius(7)
                              .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
      
              Spacer()
                  .frame(height: 20)
      
              Button(action: {
                      self.didTap = true
                  }) {
      
                  Text("Excited")
                          .font(.system(size: 17))
                          .foregroundColor(Color.black)
                  }
                  .frame(width: 80, height: 30, alignment: .center)
                  .background(didTap ? Color.yellow : Color.gray)
                  .cornerRadius(7)
                  .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
      
                          
                Spacer()
                    .frame(height: 20)
                          
                    Button(action: {
                        self.didTap = true
                        }) {
                          
                        Text("Powerful")
                            .font(.system(size: 17))
                            .foregroundColor(Color.black)
                        }
                            .frame(width: 80, height: 30, alignment: .center)
                            .background(didTap ? Color.yellow : Color.gray)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                          
                          
                Spacer()
                    .frame(height: 20)
                          
                    Button(action: {
                        self.didTap = true
                        }) {
                          
                        Text("Carefree")
                            .font(.system(size: 17))
                            .foregroundColor(Color.black)
                        }
                            .frame(width: 80, height: 30, alignment: .center)
                            .background(didTap ? Color.yellow : Color.gray)
                            .cornerRadius(7)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
            
            
            }
        
        
    }
    .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing], 65.0/*@END_MENU_TOKEN@*/)
    }
    .padding(/*@START_MENU_TOKEN@*/.all, 0.0/*@END_MENU_TOKEN@*/)
        
            
            // here to line 320
            
//                private var struct RectView: View {
//                    let user: User
//                    let friend: User
//
//                    var body: some View {
//                        Button(action: {
//                            RestApi.instance.sendPushNotification(title: "BlueMode", body: "\(user.firstName) invited you to BlueMode!", APNToken: friend.APNToken ?? "").then { response in
//                                print("Got send APN repsonse: ", response)
//                            }
//                        },
//                               label: {
//                            Text(friend.firstName + " " + String(friend.lastName.first!))
//                                .fontWeight(.bold)
//                                .frame(width: 100, height: 30)
//                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                                .font(.system(size: 10))
//                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        })
//
        }
        
        
        }
    }
}
}







struct AtmosphereMain2_Previews : PreviewProvider {
    
        static var previews: some View {
            AtmosphereMain2(user: User(id: "", firstName: "", lastName: "", APNToken: "", atmosphere: ""), friends: [])
    
            }
}
