//
//  BlueSurvey.swift
//  BestFriends
//
//  Created by Social Tech on 5/23/21.
//



import SwiftUI
import Amplify

struct BlueSurvey: View {
    
    @EnvironmentObject var sessionManager: SessionManager
   
    @State private var pronouns: String = ""
    @State var selectedOptions: [String] = []
    @State var didTap1 = false
    @State var didTap2 = false
    @State var didTap3 = false
    @State var didTap4 = false
    @State var didTap5 = false
    @State var ready = false
    
    var firstName: String
    var lastName: String
    var username: String
    var password: String
    var email: String

    var body: some View {
        ZStack {
            Image("Transition2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                
               
                
                Spacer()
                    .frame(height: 1
                    )
                
                Text("Quick Question.")
                    .italic()
                    .font(.system(size: 30))
                  //  .foregroundColor(.white)
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 1)
                
                
                Text("What part of BlueMode helped you the most?")
                    .frame(width: 380, height: 75, alignment: .center)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                    .frame(height: 50)
     
                
                VStack {
                    
                    Button("Being able to see when my friend read my messages in Blue-Chat.", action: {
                            didTap1 = true
                            didTap2 = false
                            didTap3 = false
                            didTap4 = false
                            didTap5 = false
                    })
                    .frame(width: 380, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .background(didTap1 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(25)
                    .font(.system(size: 20))
                    
                    
                    Spacer()
                        .frame(height: 30)
                
                    Button("Being able to load pics of the two of us having fun into my friend's ShakingCool.", action: {
                            didTap1 = false
                            didTap2 = true
                            didTap3 = false
                            didTap4 = false
                            didTap5 = false
                    })
                    .frame(width: 380, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .background(didTap2 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(25)
                    .font(.system(size: 20))
                    
                    
                    Spacer()
                        .frame(height: 30)
                
                    Button("Getting Push Notifications when my friend sent me a message in Blue-Chat.", action: {
                        didTap1 = false
                        didTap2 = false
                        didTap3 = true
                        didTap4 = false
                        didTap5 = false
                    })
                    .frame(width: 380, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .background(didTap3 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(25)
                    .font(.system(size: 20))
                    
                    
                    Spacer()
                        .frame(height: 30)
                   
                    
                    VStack {
                        
                            Button("Having SmileNote bubbles float up in Blue-Chat.", action: {
                            didTap1 = false
                            didTap2 = false
                            didTap3 = false
                            didTap4 = true
                            didTap5 = false
                        })
                        .frame(width: 380, height: 75, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                        .background(didTap4 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .cornerRadius(25)
                        .font(.system(size: 20))
                        
                        
                        Spacer()
                            .frame(height: 40)
                        
                        
                        Text("What do you wish we would add to BlueMode?")
                            .frame(width: 380, height: 75, alignment: .center)
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        
                        Button("", action: {
                            didTap1 = false
                            didTap2 = false
                            didTap3 = false
                            didTap4 = false
                            didTap5 = true

                        })
                        .frame(width: 300, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(didTap5 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .cornerRadius(25)
                        
                        Spacer()
                            .frame(height: 100)
                
//
//                        NavigationLink(destination: SettingsView()) {
//                                            Text("Take me to Settings")
//                                                .font(.title)
//                                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
//                                                .frame(width: 325, height: 50)
//                                                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
//                                                .cornerRadius(25)
//            //
              
            }
            
            Button(action: {
                
                
                
                if didTap1 {
                    pronouns = "SHE"
                }
                if didTap2 {
                    pronouns = "HE"
                }
                if didTap3 {
                    pronouns = "THEY"
                }
                if didTap4 {
                    pronouns = "OTHER"
                }
                if didTap5 {
                    pronouns = "PNTS"
                }
             
                ready = true
                }) {
                    Text("Submit")
                    .font(.title)
                    }
                .frame(width: 200, height: CGFloat((didTap1 || didTap2 || didTap3 || didTap4 || didTap5) ? 50 : 0))
                .disabled(!(didTap1 || didTap2 || didTap3 || didTap4 || didTap5))
                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(25)
                
        
            }
           
          
//            NavigationLink(
//                destination: SignUpPage7(firstName: firstName, lastName: lastName, username: username, password: password, email: email, pronouns: pronouns).environmentObject(sessionManager),
//                isActive: $ready,
//                label: {
//
                }
            
        }
    }
}
    
struct BlueSurvey_Previews : PreviewProvider {
    static var previews: some View {
        BlueSurvey(firstName: "", lastName: "", username: "", password: "", email: "")
    }
}
