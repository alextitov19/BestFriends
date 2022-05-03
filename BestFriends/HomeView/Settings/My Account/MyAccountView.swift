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
            Image("settingsBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                
                Spacer()
                    .frame(height: 5)
                
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
//                        .offset(x: -25, y: 50)
                    
                    
                    Spacer()
                }
                
            
//
               NavigationLink(
                  destination: ResetPasswordView(),
                  label: {
                       HStack {
                           Text("Reset Password")
                               .font(.system(size: 20))
//                              .foregroundColor(.black)
                              .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
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
               destination: ChangePin(),
                 label: {
                       HStack {
                    Text("Change PIN for Hide Chat")
                              .font(.system(size: 20))
//                             .foregroundColor(.black)
                              .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                           Spacer()

                          Image("arrowRight")
                              .resizable()                               .frame(width: 25, height: 25)
                               .scaledToFit()
                               .colorInvert()
                      }
                   })
                
                Divider()
                
                NavigationLink(
                 destination: RemoveFriend(),
                   label: {
                         HStack {
                      Text("Remove Friend")
                                .font(.system(size: 20))
//                               .foregroundColor(.black)
                                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                             Spacer()

                            Image("arrowRight")
                                .resizable()                               .frame(width: 25, height: 25)
                                 .scaledToFit()
                                 .colorInvert()
                        }
                     })
                  
                Divider()
                
                NavigationLink(
                 destination: SettingsNotificationsView(),
                   label: {
                         HStack {
                      Text("Change Notifications Status")
                                .font(.system(size: 20))
//                               .foregroundColor(.black)
                                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                             Spacer()

                            Image("arrowRight")
                                .resizable()                               .frame(width: 25, height: 25)
                                 .scaledToFit()
                                 .colorInvert()
                        }
                     })

                
            
            
                
                NavigationLink(
                 destination: DeleteMyAccount(),
                   label: {
                         HStack {
                      Text("Delete My Account")
                                .font(.system(size: 20))
                               .foregroundColor(.red)

                          Spacer()

                            Image("arrowRight")
                                .resizable()                               .frame(width: 25, height: 25)
                                 .scaledToFit()
                                 .colorInvert()
                        }
                     })
                
       
                .padding(.vertical, 170
                )
    
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
