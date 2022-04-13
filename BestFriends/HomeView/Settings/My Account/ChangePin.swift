//
//  ChangePin.swift
//  BestFriends
//
//  Created by Social Tech on 4/9/22.
//

import Foundation

import SwiftUI


struct ChangePin: View {
    
    @State private var oldPin: String = ""
    @State private var newPin: String = ""
    @State private var statusString = ""
    @State private var statusColor = Color(.clear)

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
//    var userDataSource = UserDataSource()
    
    var body: some View {
//        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
                    .ignoresSafeArea()
                Image("settingsBackground")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                

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
                    }
                    Spacer()
                }
                
                VStack {
                    
                    Text("Change Pin")
                        .font(.system(size: 35))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding()
                 
                    
                    
                    Text(statusString)
                        .font(.system(size: 30))
                        .foregroundColor(statusColor)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("Old pin", text: $oldPin)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    TextField("New pin", text: $newPin)
                        .multilineTextAlignment(.center)
                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 300, height: 40, alignment: .center)
                        .font(.title)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(20)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    Spacer()
                        .frame(height: 75)
//                    
//                 Button("Submit", action: changePin)
//                     .font(.title)
//                      .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                     .frame(width: 200, height: 50)
//                     .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//                       .cornerRadius(25)
//                      .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2).onTapGesture {

                        }
                    
                }
            }
        }
    
//    
//    private func changePin() {
//        var user = userDataSource.getCurrentUser()
//        if user.secretPin == oldPin {
//            user.secretPin = newPin
//            userDataSource.updateUser(user: user)
//            statusString = "Success"
//            statusColor = Color.green
//        } else {
//            statusString = "Wrong pin"
//            statusColor = Color.red
//        }
//    }



struct ChangePin_Previews : PreviewProvider {
    static var previews: some View {
        ChangePin()
    }
}
