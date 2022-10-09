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
                    .frame(width: 240, height: 30)
                    .foregroundColor(.white)
                    .background(ColorManager.red)
                    .cornerRadius(15)
                    .opacity(0.4)
            })
            
            
        }
    }
}



struct DeleteMyAccount_Previews : PreviewProvider {
    static var previews: some View {
        DeleteMyAccount()
    }
}

