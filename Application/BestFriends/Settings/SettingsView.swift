//
//  SettingsView.swift
//  BestFriends
//
//  Created by Alex Titov on 5/4/21.
//

import SwiftUI

struct SettingsView: View {

    var body: some View {
        NavigationView {
        ZStack {
            
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack {
                Text("Settings")
                    .font(.system(size: 40))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
                Spacer().frame(height: 20)
                VStack {
                 
                    
                        Link("We ask for your help w/ Feedback & Suggestions - Join Beta Test Team!", destination: URL(string: "https://socialtechlabs.com/beta-team/")!)
                        .frame(width: 325, height: 70, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                        .cornerRadius(25)
                    Spacer()
                        .frame(height: 20)
                    
                    
                    
                        NavigationLink(
                            destination: InfoViewPage1(),
                            label: {
                                Text("BestFriends Walk-through")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                    )
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    Text("Privacy / Reporting Abuse")
                       
                        .font(.system(size: 32))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 385, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                    
                    
                    
                    Link("Privacy Policy / Terms of Service", destination: URL(string: "https://socialtechlabs.com/privacy/")!)
                        .frame(width: 325, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                )
                    
                    Spacer()
                        .frame(height: 20)
                 
                
                    Link("Report Objectional Content & Behavior", destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!)
                        .frame(width: 325, height: 50)
                        .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                )
                    
                   
                    
                    Spacer()
                        .frame(height: 20)
                 
                  
                    VStack {
                    
                        
                        Link("Report Copyright Infringment", destination: URL(string: "https://socialtechlabs.com/report-copyright-infringements/")!)
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                    )
                            
                        Spacer()
                            .frame(height: 30)
                        
                        
                        Text("Account Services")
                           
                            .font(.system(size: 32))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 385, height: 50, alignment: .center
                            )
                        
                     
                    
                        NavigationLink(
                            destination: MyAccount(),
                            label: {
                                Text("Password / Email")
                            })
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                    )
                    
                        
                        
                        
                        
                        
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
                                    .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                    )
                            
                        
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(
                            destination: ChangeChatBackground(),
                            label: {
                                Text("Change Chat Background")
                            })
                       
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                    )
                            
                          
                        
                        Spacer()
                            .frame(height: 20)
                        
                        NavigationLink(
                            destination: DeleteMyAccount(),
                            label: {
                                Text("Delete My Account")
                            })
                       
                            .frame(width: 325, height: 50)
                            .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), lineWidth: 1)
                                    )
                            
                        
                   
                                    
                        
                        
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
        
        .navigationBarTitle("")
        .navigationBarHidden(true)
}

}


struct SettingsView_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
