//
//  HorizonsPrototype.swift
//  BestFriends
//
//  Created by Social Tech on 6/16/22.
//



import SwiftUI

struct HorizonsPrototype: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @EnvironmentObject var sessionManager: SessionManager
    
    var body: some View {
        ZStack {
            Image("HorizonsPrototype2")
            
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()

            VStack {
               
                Spacer()
                    .frame(height: 65)
                
                Link(destination: URL(string: "https://socialtechlabs.com/beta-tester-_-bestfriends-app/")!) {
                    
                    ZStack {
                        Text("Yes, I want to see it FIRST!")
                            .fontWeight(.thin)
                            .frame(width: 325, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.pmbc_blue)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    }
                }
                
                Spacer()
                    .frame(height: 15)
                
                
                Button(action: {
                    sessionManager.showLogin()
                },
                    label: {
                        Text("Home / Chat")
                            .fontWeight(.thin)
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                    })
                


                }
            }
        }
    }
    


  




struct HorizonsPrototype_Previews : PreviewProvider {
    static var previews: some View {
        HorizonsPrototype()
    }
}


