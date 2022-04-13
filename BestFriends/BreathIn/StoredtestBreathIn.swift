//
//  StoredtestBreathIn.swift
//  BestFriends
//
//  Created by Social Tech on 4/13/22.
//

import Foundation
import SwiftUI

struct StoredtestBreathIn: View {
    
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    @State var count: Int = 10
    @State var finishedText: String? = nil
    
    
    
    var body: some View {
    ZStack {
        Color(#colorLiteral(red: 0.9301232696, green: 0.9072448611, blue: 0.9865264297, alpha: 1))
           .ignoresSafeArea()

        Image("Star Page")
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()

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
                        .colorInvert()
                        .rotationEffect(Angle(degrees: 180))
                }
                
                Spacer()
             
                Text("Let's try to Relax ...")
                    .font(.system(size: 30))
                    .offset(x: 10, y: 20)
                    .foregroundColor(.green)
                
                Text("Breath 'in' for 5 seconds - then 'hold' for 5")
                    .font(.system(size: 15))
                    .offset(x: 10, y: 25)
                    .foregroundColor(.green)
  
//
                Spacer()
                    .frame(height: 370)
            }
     
        
        Text(finishedText ?? "\(count)")
            .font(.system(size: 50))
            .foregroundColor(.white)
            .bold()
            .lineLimit(1)
                       }

            .onReceive(timer) { _ in
        if count  == 1 {
            timer.upstream.connect().cancel()
            finishedText = "E X H A L E"
                
        } else {
            count -= 1
        
//
//
                }
            }
        }
        

}

    
//
//    struct testBreathIn_Previews : PreviewProvider {
//    static var previews: some View {
//        testBreathIn()
//    }
//}
}


    






//        .onReceive(timer, perform: { _ in
//    if count  == 1 {
//        timer.upstream.connect().cancel()
//        finishedText = "E  X  H  A  L  E"
//
//    } else {
//        count -= 1
//
//
//NavigationLink(
//            destination;: BreathIn2(),
//        label: {
//            HStack {
//
//                Text("Repeat")
//                    .font(.system(size: 20))
//                    .foregroundColor(.black)
//
//                Spacer().frame(maxHeight: 0)
//
//                Image("arrowRight")
//                    .resizable()
//                    .frame(width: 25, height: 25)
//                    .scaledToFit()
//                    .colorInvert()
