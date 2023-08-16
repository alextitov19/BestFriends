//
//  DeleteMyAccount.swift
//  BestFriends
//
//  Created by Social Tech on 4/9/22.
//


import SwiftUI


struct DeleteMyAccount: View {
    
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
            
            Button(action: {
                RestApi.instance.deleteUser().then({ response in
                    if response.status == 200 {
                        RestApi.instance.signOut()
                        sessionManager.showLogin()
                    }
                })
            }, label: {
  
             
                Text("Delete my Account")
                    .fontWeight(.regular)
                    .frame(width: 240, height: 40)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(ColorManager.red)
                    .cornerRadius(15)
//                    .opacity(0.4)
            })
            
                Text("By tapping [Delete My Account], we will delete your first name, last name, email address, list of your friends on BestFriends, Chat PIN, passcode, age, gender, and location instantly. Your chat messages will be deleted within 30 days.")
                    .font(.system(size: 15))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .padding()
           
                
//                Text("NOTE: Before you delete your account please REMOVE yourself from all Chat groups. If you do NOT do this we can NOT delete your account because it will de-active your friends accounts.")
//                    .font(.system(size: 15))
//                    .italic()
//                    .fontWeight(.regular)
//                    .foregroundColor(.red)
//                    .multilineTextAlignment(.center)
//                    .padding()
              
                
                Spacer()
                    .frame(height: 45)
       
        VStack {
           
            NavigationLink(
                
                destination: DeleteUserData(),
                label: {
                    Text("Permenently Delete All User Record")
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .frame(width: 310, height: 40)
                        .font(.system(size: 20))
                        .background(ColorManager.purple3)
                        .cornerRadius(15)
                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    
                }
            )}
               
                Spacer()
                    .frame(height: 45)
                
                Text("We are sorry to see you go. You are welcome back at any time.")
                    .font(.system(size: 25))
                    .italic()
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
        }
    }

}
}

struct DeleteMyAccount_Previews : PreviewProvider {
    static var previews: some View {
        DeleteMyAccount()
    }
}

