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

                Spacer()
            }
            
            VStack {
                Text("Delete My Account")
                    .font(.system(size: 35))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 30)
                
                Text("We're sorry to see you go. If you have a moment please let us know how we can improve.")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                    .padding()
                
                Spacer()
                    .frame(height: 20)
                
                TextEditor(text: $reason)
                    .multilineTextAlignment(.center)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .frame(width: 300, height: 100, alignment: .center)
//                    .font(.title)
                    .font(.system(size: 20))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(20)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                


                Spacer()
                    .frame(height: 30)
            
                
               
                
                Text("We will delete all your associated personal data. If you wish to delete your entire accout record please tell us in your email to us.")
                    .font(.system(size: 20))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                    .padding()
              
                Spacer()
                    .frame(height: 10)
                
                NavigationLink(
                    destination: DeleteUserData(),
                    label: {
                        Text("Permanently Delete Account")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 25))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                  
                    
                    
                    })
                
                    
                }
                .padding()
            }
        
//        private func defaultMessageButtonTapped(defaultMessage: String) {
//            self.colorChangeTap = defaultMessage
        }
    }

    

struct DeleteMyAccount_Previews : PreviewProvider {
    static var previews: some View {
        DeleteMyAccount()
    }
}

