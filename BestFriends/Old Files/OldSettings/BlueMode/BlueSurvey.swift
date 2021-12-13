//
//  BlueSurvey.swift
//  BestFriends
//
//  Created by Social Tech on 5/23/21.
//


import Foundation
import SwiftUI
import Amplify

struct BlueSurvey: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    @State private var idea: String = ""
    
    @State private var pronouns: String = ""
    @State var selectedOptions: [String] = []
    @State var didTap1 = false
    @State var didTap2 = false
    @State var didTap3 = false
    @State var ready = false
    
    
    
    var body: some View {
        ZStack {
            Image("Transition2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            VStack {
                
                
                
                Spacer()
                    .frame(height: 5
                    )
                
                Text("Got a second?")
                    .italic()
                    .font(.system(size: 50))
                    //  .foregroundColor(.white)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                
                
                Spacer()
                    .frame(height: 25)
                
                
                VStack {
                    
                    Button("Would you be very dissapointed if we removed BlueMode from BestFriends?", action: {
                        didTap1 = true
                        didTap2 = false
                        didTap3 = false
                        
                    })
                    .frame(width: 400, height: 175, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .background(didTap1 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                    .cornerRadius(25)
                    .font(.system(size: 30))
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button("Yes", action: {
                        didTap1 = false
                        didTap2 = true
                        didTap3 = false
                        
                    })
                    .frame(width: 100, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .background(didTap2 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)))
                    .cornerRadius(25)
                    .font(.system(size: 30))
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Button("No", action: {
                        didTap1 = false
                        didTap2 = false
                        didTap3 = true
                        
                    })
                    .frame(width: 100, height: 75, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .background(didTap3 ? Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)) : Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                    .cornerRadius(25)
                    .font(.system(size: 30))
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    VStack {
                        
                        
                        
                        Text("How can we improve BlueMode for you?")
                            .frame(width: 385, height: 75, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .background(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                            .cornerRadius(25)
                            .font(.system(size: 30))
                        
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        TextField("Please type 'Idea' here", text: $idea)
                            .multilineTextAlignment(.center)
                            .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .frame(width: 400, height: 50, alignment: .center)
                            .font(.title)
                            
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(20)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                        
                    }
                    
                    
                    
                    Button(action: {
                        
                        
                        
                        if didTap1 {
                            pronouns = "YES"
                        }
                        if didTap2 {
                            pronouns = "YES"
                        }
                        if didTap3 {
                            pronouns = "NO"
                        }
                        
                        
                        ready = true
                    }) {
                        Text("Submit")
                            .font(.title)
                    }
                    .frame(width: 200, height: CGFloat((didTap1 || didTap2 || didTap3) ? 50 : 0))
                    .disabled(!(didTap1 || didTap2 || didTap3))
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    .cornerRadius(25)
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                }
            }
        }
    }
    
    struct BlueSurvey_Previews : PreviewProvider {
        static var previews: some View {
            BlueSurvey().environmentObject(SessionManager())
            
        }
    }
}
