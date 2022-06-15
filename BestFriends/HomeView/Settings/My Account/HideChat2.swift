//
//  HideChat2.swift
//  BestFriends
//
//  Created by Social Tech on 6/8/22.
//
//
//import Foundation
//
//import SwiftUI
//
//
//struct HideChat2: View {
//
//    @State private var oldPin: String = ""
//    @State private var newPin: String = ""
//    @State private var statusString = ""
//    @State private var statusColor = Color(.clear)
//
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//
//
//    var userDataSource = UserDataSource()
//
//    var body: some View {
//        NavigationView {
//            ZStack {
//
//                Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 0.9))
//                    .ignoresSafeArea()
//                ZStack {
//                    Circle()
//                        .frame(width: 400, height: 400)
//                        .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
//                        .offset(x: 200, y: -400)
//
//                    Circle()
//                        .frame(width: 300, height: 300)
//                        .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
//                        .offset(x: -200, y: -100)
//
//                    Circle()
//                        .frame(width: 200, height: 200)
//                        .foregroundColor(Color(#colorLiteral(red: 0.4874756932, green: 0.2377186716, blue: 0.9663465619, alpha: 1)))
//                        .offset(x: 150, y: 100)
//                }
//
//                VStack {
//                    HStack {
//                        Button(action: {
//                            self.presentationMode.wrappedValue.dismiss()
//                        }) {
//                            Image("arrowRight")
//                                .resizable()
//                                .frame(width: 25, height: 25)
//                                .scaledToFit()
//                                .colorInvert()
//                                .rotationEffect(Angle(degrees: 180))
//                        }
//                        Spacer()
//                    }
//                    Spacer()
//                }
//
//                VStack {
//
//                    Text("Change Pin")
//                        .font(.system(size: 35))
//                        .foregroundColor(.white)
//                        .multilineTextAlignment(.center)
//                        .padding()
//                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
//                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
//
//
//
//                    Text(statusString)
//                        .font(.system(size: 30))
//                        .foregroundColor(statusColor)
//                        .multilineTextAlignment(.center)
//                        .padding()
//
//                    TextField("Old pin", text: $oldPin)
//                        .multilineTextAlignment(.center)
//                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .frame(width: 300, height: 40, alignment: .center)
//                        .font(.title)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .cornerRadius(20)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        .autocapitalization(.none)
//                        .disableAutocorrection(true)
//
//                    Spacer()
//                        .frame(height: 30)
//
//
//                    TextField("New pin", text: $newPin)
//                        .multilineTextAlignment(.center)
//                        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .frame(width: 300, height: 40, alignment: .center)
//                        .font(.title)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .cornerRadius(20)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        .autocapitalization(.none)
//                        .disableAutocorrection(true)
//
//                    Spacer()
//                        .frame(height: 75)
//
//                    Button("Submit", action: changePin)
//                        .font(.title)
//                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                        .frame(width: 200, height: 50)
//                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//                        .cornerRadius(25)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2).onTapGesture {
//
//                        }
//
//                }
//            }
//        }
//    }
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
//}
//
//
//struct HideChat2_Previews : PreviewProvider {
//    static var previews: some View {
//        HideChat2()
//    }
//}
