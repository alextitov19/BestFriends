//
//  MyAccountView.swift
//  BestFriends
//
//  Created by Social Tech on 4/8/22.
//

import Foundation

import SwiftUI

struct MyAccountView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                            .colorInvert()
                            .rotationEffect(Angle(degrees: 180))
                    }
                    
                    Spacer()
                    
                    Text("My Account")
                        .font(.system(size: 30))
                        .offset(x: -25)
                    
                    Spacer()
                }
                
             Spacer()
                   .frame(height: 50)
               NavigationLink(
                  destination: ResetPasswordView(),
                  label: {
                       HStack {
                           Text("Reset Password")
                               .font(.system(size: 20))
                              .foregroundColor(.black)

                           Spacer().frame(maxHeight: 0)

                          Image("arrowRight")
                              .resizable()
                               .frame(width: 25, height: 25)
                             .scaledToFit()
                              .colorInvert()
                       }
                   })

                Divider()
                
              NavigationLink(
               destination: ChangeChatPinView(),
                 label: {
                       HStack {
                    Text("Change PIN for Hide Chat")
                              .font(.system(size: 20))
                             .foregroundColor(.black)

                           Spacer()

                          Image("arrowRight")
                              .resizable()                               .frame(width: 25, height: 25)
                               .scaledToFit()
                               .colorInvert()
                      }
                   })
                
                Divider()
                
                NavigationLink(
                 destination: DeleteFriendView(),
                   label: {
                         HStack {
                      Text("Delete Friend")
                                .font(.system(size: 20))
                               .foregroundColor(.black)

                             Spacer()

                            Image("arrowRight")
                                .resizable()                               .frame(width: 25, height: 25)
                                 .scaledToFit()
                                 .colorInvert()
                        }
                     })
                  
                Divider()
                
                NavigationLink(
                 destination: NotificationsView(),
                   label: {
                         HStack {
                      Text("Change Notifications Status")
                                .font(.system(size: 20))
                               .foregroundColor(.black)

                             Spacer()

                            Image("arrowRight")
                                .resizable()                               .frame(width: 25, height: 25)
                                 .scaledToFit()
                                 .colorInvert()
                        }
                     })
                HStack {
                Divider()
                
                NavigationLink(
                 destination: DeleteMyAccountView(),
                   label: {
                         HStack {
                      Text("Delete My Account")
                                .font(.system(size: 20))
                               .foregroundColor(.black)

                             Spacer()

                            Image("arrowRight")
                                .resizable()                               .frame(width: 25, height: 25)
                                 .scaledToFit()
                                 .colorInvert()
                        }
                     })
                
       
                Spacer()
            }
            .padding(30)
            .navigationBarHidden(true)
        }
    }
    
}
struct MyAccountView_Previews : PreviewProvider {
    static var previews: some View {
        MyAccountView()
    }
}
}
