////
////  Loading.swift
////  BestFriends
////
////  Created by Alex Titov on 7/15/21.
////
//
//import SwiftUI
//
//struct Loading: View {
//    
//    @EnvironmentObject var sessionManager: SessionManager
//    let page: String
//    
//    var body: some View {
//        
//        ZStack {
//            Image("purpleBackground")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//            
//            Image("Logo")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .scaledToFill()
//            
//            VStack {
//                
//                Spacer()
//                    .frame(height: 150)
//                
//                Text("Loading...")
//                    .italic()
//                    .font(.system(size: 25, weight: .light))
//                    .foregroundColor(.white)
//                    .onAppear {
//                        switchPage()
//                    }
//            }
//        }
//        
//    }
//    
//    private func switchPage() {
//        switch page {
//        case "settings":
//            sessionManager.showSettings()
//        case "home":
//            sessionManager.getCurrentAuthUser()
//        default:
//            fatalError("switching to a page that is not an option in Loading.swift")
//        }
//    }
//}
