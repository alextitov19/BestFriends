//
//  RR9.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 7/15/23.
//

import SwiftUI

struct RR9: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}




// Concentric corner radius with ContainerRelativeShape

//struct PillView : View {
//    var title: Text
//    var color: Color
//
//    var body: some View {
//        Text(title)
//            .background(ContainerRelativeShape().fill(color))
//    }
//}

// Displaying date and time

// June 3, 2019
//Text(event.startDate, style: .date)
//
//// 11:23PM
//Text(event.startDate, style: .time)
//
//// 9:30AM - 3:30PM
//Text(event.startDate...event.endDate)
//
//// +2 hours
//// -3 months
//Text(event.startDate, style: .offset)
//
//// 2 hours, 23 minutes – Automatically updating as time pass
//Text(event.startDate, style: .relative)
//
//// 36:59:01 – Automatically updating as time pass
//Text(event.startDate, style: .timer)
//



struct RR9_Previews: PreviewProvider {
    static var previews: some View {
        RR9()
    }
}
