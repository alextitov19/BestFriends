//
//  SettingsView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/4/21.
//

import SwiftUI

struct SettingsView: View {

    var body: some View {
//        NavigationView {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            ScrollView {
            VStack {
                
                NavigationLink(destination: BlueModePage1()) {
                       Image("whiteSmiley")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .scaledToFill()
                   }

                
                
                Text("Settings")
                    .font(.system(size: 50))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
                Spacer().frame(height: 20)
               
               
               
                
                    NavigationLink(
                        destination: InfoViewPage1(),
                        label: {
                            Text("BestFriends Walk-through")
                        })
                        .frame(width: 325, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 5)
                                )
                
                
                Spacer()
                    .frame(height: 45)
                
                
                
                Text("Making BestFriends Better")
                    .font(.system(size: 32))
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            
                
                VStack {
                    
                        Link("We ask for your help w/ Feedback & Suggestions - Join Beta-Test Team!", destination: URL(string: "https://socialtechlabs.com/beta-team/")!)
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), lineWidth: 1)
                                    )
                    
                   
                    
                    Spacer()
                        .frame(height: 45)
                    
                    
                    Text("Privacy / Reporting Abuse")
                       
                        .font(.system(size: 32))
                        
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                    
                    
                    
                    Link("Privacy Policy / Terms of Service", destination: URL(string: "https://socialtechlabs.com/privacy/")!)
                        .frame(width: 325, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                )
                    
                    Spacer()
                        .frame(height: 20)
                 
                
                    Link("Report Objectional Content & Behavior", destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!)
                        .frame(width: 325, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                )
                    
                   
                    
                    Spacer()
                        .frame(height: 20)
                 
                  
                    VStack {
                    
                        
                        Link("Report Copyright Infringment", destination: URL(string: "https://socialtechlabs.com/report-copyright-infringements/")!)
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), lineWidth: 1)
                                    )
                            
                        Spacer()
                            .frame(height: 45)
                        
                        
                        Text("Account Services")
                           
                            .font(.system(size: 32))
                            .fontWeight(.ultraLight)
                            
                            .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: .center
                            )
                        
                     
                    
                        NavigationLink(
                            destination: MyAccount(),
                            label: {
                                Text("Password / Email")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                    )
                    
                        
                        
                        
                        VStack {
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(
                            destination: ManageMyFriends(),
                            label: {
                                Text("Manage my Friends")
                            })
                       
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                    )
                            
                     
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(
                            destination: ChangeRestoreChatPIN(),
                            label: {
                                Text("Change 'Restore Chat' PIN (Not Built)")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                    )
                        
                        
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(
                            destination: ChangeChatBackground(),
                            label: {
                                Text("Change Chat Background (Not Built)")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                    )
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(
                            destination: DeleteMyAccount(),
                            label: {
                                Text("Delete Account (Not Built)")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), lineWidth: 1)
                                    )
                            
                          
        
                            
                        
                   
                                    
                        
                        
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
        
        .navigationBarTitle("")
        .navigationBarHidden(true)
//}

}


struct SettingsView_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
}
