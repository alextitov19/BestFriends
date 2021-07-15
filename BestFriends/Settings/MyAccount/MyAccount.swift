//
//  MyAccount.swift
//  BestFriends
//
//  Created by Robert Roe on 5/6/21.
//
import Amplify
import SwiftUI

struct MyAccount: View {
    
    var body: some View {
        
        ZStack {
            
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("My Account")
                    .foregroundColor(.white)
                    .font(.title)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                
                Spacer().frame(height: 25)
                VStack {
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(
                        destination: ResetPassword(),
                        label: {
                            Text("Reset my Password")
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(
                        destination: ChangeEmail(),
                        label: {
                            Text("Update my Email")
                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(25)
                        .cornerRadius(25)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                   
                    Spacer()
                        .frame(height: 30)
                    
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 100)
                    
                }
            }
        }
    }
}

struct MyAccount_Previews : PreviewProvider {
    static var previews: some View {
        MyAccount()
    }
}

