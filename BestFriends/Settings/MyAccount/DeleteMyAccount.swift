//
//  DeleteMyAccount.swift
//  BestFriends
//
//  Created by Robert Roe on 5/9/21.
//


import Amplify
import SwiftUI


struct DeleteMyAccount: View {

    @EnvironmentObject var sessionManager: SessionManager

    @State private var reason: String = ""

var body: some View {
    NavigationView{
        ZStack {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()


            VStack {

                    HStack {
                        VStack {

                            Spacer()
                                .frame(height: 25)

                            Image("Penguin2")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .scaledToFill()

                                }
                        VStack {

                            ZStack {


                                Image("ChatBubbleTrans")
                                    .resizable()
                                    .frame(width: 300, height: 175)
                                    .scaledToFill()

                                Text("Sorry to see you go. We sincerely hope to see you again sometime")
                                    .italic()
                                    .font(.system(size: 20))
                                    .fontWeight(.ultraLight)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            }

                        }
                    }

                Spacer()
                    .frame(height: 25)


                    Text("We're working hard to make BestFriends better and better. Before you go, please give us a short reason for leaving.")

                        .font(.system(size: 25))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)


                Spacer()
                    .frame(height: 20)


                TextField("Reason", text: $reason)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 40, alignment: .center)
                    .font(.title)

                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)

                Spacer()
                    .frame(height: 50)



                Button(action: {
                    // Delete account code
                    UserManager().changePassword(oldPassword: "", newPassword: "banana")
                    
                  }) {
                    Text("Delete Account")
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .frame(width: 200, height: 50)
                        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)

                  }

                Spacer()
                    .frame(height: 210)
                }


        }
        }
  //  .navigationBarTitle("")
   // .navigationBarHidden(true)



    }
}


struct DeleteMyAccount_Previews : PreviewProvider {
    static var previews: some View {
        DeleteMyAccount()
    }
}
