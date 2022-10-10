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
                Text("Delete My Account")
                    .fontWeight(.regular)
                    .frame(width: 240, height: 40)
                    .foregroundColor(.white)
                    .background(ColorManager.red)
                    .cornerRadius(15)
                    .opacity(0.4)
            })
            
            Spacer()
                .frame(height: 45)
        VStack {
            NavigationLink(
                
                destination: DeleteUserData(),
                label: {
                    Text("Permenently Delete All User Data")
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

