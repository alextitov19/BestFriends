//
//  HorizonSetGoal.swift
//  BestFriends
//
//  Created by Christine Maldonado on 7/17/22.
//

import SwiftUI

struct HorizonSetGoal: View {
    
    let user: User
    let friends: [User]
    let atmosphere: Atmosphere
    
    @State private var date = Date()
    @State private var startDate = Date()
    @State private var endDate = Date()

    var body: some View {
        ZStack
        {
            Image("purpleBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            VStack
            {
                Text("Title")
                    .foregroundColor(.white)
                    .font(.title2)
                
                DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)
                .background(.white)
                .accentColor(ColorManager.purple3)
                
                HStack
                {
                    Text("Start Time")
                        .fontWeight(.bold)
                    
                    DatePicker("", selection: $startDate, displayedComponents: .hourAndMinute).colorInvert()
                        .colorMultiply(Color.white)
                            .labelsHidden()
                            
                            
                    Text(">")
                }
                .foregroundColor(.white)
//                .padding()
                
                HStack
                {
                    Text("End Time")
                        .fontWeight(.bold)
                    
                    DatePicker("", selection: $endDate, displayedComponents: .hourAndMinute).colorInvert()
                        .colorMultiply(Color.white)
                            .labelsHidden()
                            
                    Text(">")
                }
                .foregroundColor(.white)
                
                //NEED HELP WITH THIS NAVIGATION BELOW
                
                NavigationLink(destination: HorizonInviteFriends(friends: friends, user: user, atmosphere: atmosphere), label:  {
                    Text("Next     ")
                        .font(.title)
                        .background(ColorManager.purple4)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                })//NavigationLink
               
                
                Spacer()

            }//VStack
        }//ZStack
    }//body
}//struct

//struct HorizonSetGoal_Previews: PreviewProvider {
//    static var previews: some View {
//        HorizonSetGoal()
//            .previewDevice("iPod touch (7th generation)")
//    }
//}
