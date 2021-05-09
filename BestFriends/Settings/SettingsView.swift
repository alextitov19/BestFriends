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
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .foregroundColor(.white)
                    .font(.title)
            
                Spacer().frame(height: 25)
                VStack {
                 
                    
                        NavigationLink(
                            destination: InfoViewPage1(),
                            label: {
                                Text("Introducing BestFriends")
                            })
                        .frame(width: 325, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                        .cornerRadius(25)
                    
              
                    
                    Spacer()
                        .frame(height: 30)
                    
                    
                    Link("Privacy Policy / Terms of Service", destination: URL(string: "https://socialtechlabs.com/privacy/")!)
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    .cornerRadius(25)
                    
                    Spacer()
                        .frame(height: 30)
                 
                
                    Link("Report Objectional Content & Behavior", destination: URL(string: "https://socialtechlabs.com/report-objectionable-content-behavior/")!)
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    .cornerRadius(25)
                    
                   
                    
                    Spacer()
                        .frame(height: 30)
                 
                    Link("Report Copyright Infringment", destination: URL(string: "https://socialtechlabs.com/report-copyright-infringements/")!)
                    .frame(width: 325, height: 50, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                    .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    .cornerRadius(25)
                    
                   
                    
                    Spacer()
                        .frame(height: 30)
                    VStack {
                    
                    
                        NavigationLink(
                            destination: MyAccount(),
                            label: {
                                Text("My Account")
                            })
                        .frame(width: 325, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                        .cornerRadius(25)
                    
                        Spacer()
                            .frame(height: 30)
                        
                        NavigationLink(
                            destination: ManageMyFriends(),
                            label: {
                                Text("Manage my Friends")
                            })
                        .frame(width: 325, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                        .cornerRadius(25)
                        
                        Spacer()
                            .frame(height: 30)
                        
                        Button("Delete my Accont", action: {
                            
                        })
                        .frame(width: 325, height: 50, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                        .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                        .cornerRadius(25)
                        
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
