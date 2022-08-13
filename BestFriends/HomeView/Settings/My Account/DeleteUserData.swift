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
            }
            
            VStack {
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
                    .frame(height: 30)
                
                Text("Please allow us up to ten (10) business days to permanently delete your user data and BestFriends account.")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                                   .padding()
                
                Spacer()
                    .frame(height: 20)
                
          
  

         
                
                    
                }
               .padding()
            }

        }
    }

    

struct DeleteUserData_Previews : PreviewProvider {
    static var previews: some View {
        DeleteUserData()
    }
}

