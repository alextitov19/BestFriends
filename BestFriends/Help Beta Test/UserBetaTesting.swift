//
//  UserBetaTesting.swift
//  BestFriends
//
//  Created by Social Tech on 5/23/22.
//


import Foundation

import SwiftUI

struct UserBetaTesting: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {


//           Image("HomeBackground2")
//               .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()

//            Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
//                .ignoresSafeArea()

              Image("settingsBackground")
                  .resizable()
                  .ignoresSafeArea()
                  .scaledToFill()

            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image("arrowRight")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .scaledToFit()
//                            .colorInvert()
                           .rotationEffect(Angle(degrees: 180))
                    }
                    
                    Spacer()
                    
                    Text("Asking For Your Help")
                       
              
                        .font(.system(size: 40))
                        .fontWeight(.thin)
                        .foregroundColor(.purple)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                    Spacer()
                        .frame(height: 50)
                
      
                
                Link(destination: URL(string: "https://socialtechlabs.com/beta-tester-_-bestfriends-app/")!) {
                    
                    HStack {
                        Text("Yes, I want to HELP")
                            .fontWeight(.thin)
                            .frame(width: 310, height: 40)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.system(size: 30))
                            .background(ColorManager.purple3)
                            .cornerRadius(15)
                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)

                        Image("arrowRight")
                          
                            .resizable() .foregroundColor(.green)
                            .frame(width: 25, height: 25)
                           
                            .scaledToFit()
                           
                    }
                }
                

//
                Spacer()
                      .frame(height: 35)
               
                Text("The BestFriends team sincerely hopes to make life a little better for teens worldwide. \n\nBut, we need your help. \n\nSignUp for an interview with one of our teen staff members. \n\nTake a 3 question survey.")
                    .font(.system(size: 23))
                    .fontWeight(.thin)
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.purple)
                    .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                Spacer()
                      .frame(height: 25)
                
                
                Text("Thank you for helping us \nmake BestFriends SPECIAL")
                    .font(.system(size: 28))
                    .fontWeight(.light)
                    .italic()
                    .offset(x: -3)
                    .foregroundColor(.gray)
                    .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    
                
                Spacer()
            }
            .padding(40)
            .navigationBarHidden(true)
        }
    }
    
}
        
        
    

struct UserBetaTesting_Previews : PreviewProvider {
    static var previews: some View {
        UserBetaTesting()
    }
}


//
//NavigationLink(
//    destination: FG_VideoCall(),
//    label: {
//        Text("NEXT")
//            .fontWeight(.thin)
//            .frame(width: 100, height: 40)
//            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//            .font(.system(size: 30))
//            .background(ColorManager.purple3)
//            .cornerRadius(15)
//            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
//    })
