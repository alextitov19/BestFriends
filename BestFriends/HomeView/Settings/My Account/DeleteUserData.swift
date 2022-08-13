//
//  DeleteUserData.swift
//  BestFriends
//
//  Created by Social Tech on 8/12/22.
//

import Foundation

import SwiftUI

struct DeleteUserData: View {
    
    @State private var reason: String = ""
    @EnvironmentObject var sessionManager: SessionManager
    @State private var colorChangeTap: String = ""
    
//    private var userManager = UserManager()
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack {
            
               ColorManager.grey4
                .ignoresSafeArea()
            

            
            VStack {

                Spacer()
            
            
          
                Text("Permanently Delete")
                    .font(.system(size: 35))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Text("Your User Data")
                    .font(.system(size: 40))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 30)
                
                Text("If you wish to ‘Permanently Delete’ all your user data including:")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                    .padding()
                
                Text("First name, last name, email address, list of your friends on BestFriends, Chat PIN, passcode, age, gender and location.")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                    .padding()
            
            VStack {
                    
                Text("Please send us an email to:")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                Text("DeleteUserData@SocialTechLabs.com")
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 15)
                
                Text("Please include your first and last name and email address.")
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 30)
                
                Text("Please allow us up to ten (10) business days to permanently delete your user data and BestFriends account.")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                                   .padding()
                
                
                Button(action: {
                    sessionManager.showLogin()
                },
                    label: {
                        Text("Home / Chat")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                
                Spacer()
                    .frame(height: 40)
                
          
  

         
                
                    
                }
               .padding()
            }

        }
    }
}
    

struct DeleteUserData_Previews : PreviewProvider {
    static var previews: some View {
        DeleteUserData()
    }
}

