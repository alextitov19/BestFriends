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
            
    
                
                Text("If you wish to ‘Permanently Delete'")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                Text("all your user data including:")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Text("First name, last name, email address, list of your friends on BestFriends, Chat PIN, passcode, age, gender and location.")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.blue)
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
                
                Text("Please include your first & last name, email address and if you desire to delete your entire account record.")
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 7)
                
                Text("Please allow us up to thirty (30) days to permanently delete your user data and/or user record. We will send your an email when this is complete.")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                                   .padding()
                
                
                NavigationLink(
                    destination: CancellingPURPLE(),
                    label: {
                        Text("Cancelling PURPLE")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    
                    
                    })
                
                Spacer()
                    .frame(height: 150)
                
          
  

         
                
                    
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

