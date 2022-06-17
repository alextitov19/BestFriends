//
//  HideChat.swift
//  BestFriends
//
//  Created by Social Tech on 6/1/22.
//

import SwiftUI

struct HideChatView: View {
    @EnvironmentObject var sessionManager: SessionManager

    let user: User
    let group: Group
    
    @State private var pin = ""
    
    var body: some View {
        ZStack {
//            Image("settingsBackground")
//                .resizable()
//                .ignoresSafeArea()
//                .scaledToFill()
           
            ColorManager.grey3
                .ignoresSafeArea()
            
            VStack {
//                HStack {
//                    Image("home-alt2")
//                        .resizable()
//                        .frame(width: 30, height: 30)
//                        .scaledToFill()
//                        .onTapGesture(perform: {
//                            sessionManager.showHome()
//                        })
//
//        TextField("Enter your Pin ...", text: $pin)
//            .keyboardType(.decimalPad)
//            .foregroundColor(Color.white)
//            .font(.system(size: 37).weight(.thin))
//            .frame(width: 310, height: 50, alignment: .leading)
//            .background(ColorManager.purple2)
//            .cornerRadius(20)
//            .submitLabel(.done)
//            .onSubmit {submitPin()}
                
                VStack
                {
                    Text("Please select your 4 digit PIN")
                        .font(.title2)
                        .foregroundColor(.purple)
                        .fontWeight(.ultraLight)
                    
                    HStack
                    {
                        ZStack
                        {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                            
                            Text("1")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .fontWeight(.ultraLight)
                        }//1
                       
                        ZStack
                        {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                            
                            Text("2")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .fontWeight(.ultraLight)
                        }//2
                        
                        ZStack
                        {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                            
                            Text("3")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .fontWeight(.ultraLight)
                        }//3
                        
                    }//1,2,3
                    
                    HStack
                    {
                        ZStack
                        {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                            
                            Text("4")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .fontWeight(.ultraLight)
                        }//4
                       
                        ZStack
                        {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                            
                            Text("5")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .fontWeight(.ultraLight)
                        }//5
                        
                        ZStack
                        {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                            
                            Text("6")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .fontWeight(.ultraLight)
                        }//6
                    }//4,5,6
                    
                    HStack
                    {
                        ZStack
                        {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                            
                            Text("7")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .fontWeight(.ultraLight)
                        }//7
                       
                        ZStack
                        {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                            
                            Text("8")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .fontWeight(.ultraLight)
                        }//8
                        
                        ZStack
                        {
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundColor(ColorManager.purple3)
                            
                            Text("9")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .fontWeight(.ultraLight)
                        }//9
                    }//7,8,9
                }

//          Text("Retreive Your Messages")
//                .font(.system(size: 80))
//                .foregroundColor(.purple)
//                .fontWeight(.ultraLight)
//                .padding()
            
            Spacer ()
                .frame(height: 50)
            
            }
        }
    }
    
    private func submitPin() {
        if user.chatPin == pin {
            var hiddenGroups: [String] = user.hiddenGroups ?? []
            if let index = hiddenGroups.firstIndex(of: group.id) {
                hiddenGroups.remove(at: index)
            }
            let updatedUser = User(id: user.id, firstName: user.firstName, lastName: user.lastName, APNToken: user.APNToken, friends: user.friends, groups: user.groups, hiddenGroups: hiddenGroups, atmosphere: user.atmosphere, chatPin: user.chatPin, smileNotes: user.smileNotes)
            RestApi.instance.updateUser(user: updatedUser).then({ response in
                print("Got update response: ", response)
                sessionManager.showHome()
            })
        }
    }
}


//
//struct HideChatView_Previews : PreviewProvider {
//    static var previews: some View {
//        HideChatView()
//    }
//}



//
//    .fontWeight(.ultraLight)
//    .foregroundColor(Color.white)
//    .italic()
////                    .multilineTextAlignment(.center)
//    .frame(width: 320, height: 100, alignment: .leading)
//    .font(.system(size: 35))
//    .padding(10)
//   .background(Color.green)
//    .cornerRadius(40)
//    .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
