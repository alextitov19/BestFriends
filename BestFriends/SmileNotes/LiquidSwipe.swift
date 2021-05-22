////
////  LiquidSwipe.swift
////  BestFriends
////
////  Created by Alex Titov on 5/21/21.
////
//
//import SwiftUI
//
//struct LiquidSwipe: Shape {
//    var offset: CGSize
//
//    var animatableData: CGSize.AnimatableData {
//        get{return offset.animatableData}
//        set{offset.animatableData = newValue}
//    }
//
//    func path(in rect: CGRect) -> Path {
//        return Path{ path in
//            let width = rect.width + (-offset.width > 0 ? offset.width : 0)
//
//            path.move(to: CGPoint(x: 0, y: 0))
//            path.addLine(to: CGPoint(x: rect.width, y: 0))
//            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
//            path.addLine(to: CGPoint(x: 0, y: rect.height))
//
//            let from = 80 + (offset.width)
//
//            path.move(to: CGPoint(x: rect.width, y: from > 80 ? 80 : from))
//
//            var to = 180 + (offset.height) + (-offset.width)
//            to = to < 180 ? 180 : to
//
//            let mid : CGFloat = 80 + ((to - 80) / 2)
//
//            path.addCurve(to: CGPoint(x: rect.width, y: to), control1: CGPoint(x: width - 50, y: mid), control2: CGPoint(x: width - 50, y: mid))
//        }
//    }
//}




//MARK: The actual view

////
////  SmileNotesLibrary.swift
////  BestFriends
////
////  Created by Robert Roe on 5/13/21.
////
//
//import Foundation
//import SwiftUI
//
//struct SmileNotesView: View {
//
//    @State var offset: CGSize = .zero
//
//    @State var showHome = false
//
//    var body: some View {
//
//        ZStack {
//            Color(.green)
//                .ignoresSafeArea()
//                .overlay(
//                    VStack(alignment: .leading, spacing: 10, content: {
//                        Text("Text 1")
//
//                        Text("Not text 1 at all")
//                    })
//                    .foregroundColor(.white)
//                )
//                .clipShape(LiquidSwipe(offset: offset))
//                .ignoresSafeArea()
//                .overlay(
//                    Image(systemName: "chevron.left")
//                        .font(.largeTitle)
//                        .frame(width: 50, height: 50)
//                        .contentShape(Rectangle())
//                        .gesture(DragGesture().onChanged({ (value) in
//                            withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.6, blendDuration: 0.6)) {
//                                offset = value.translation
//                            }
//                        }).onEnded({ (value) in
//                            let screen = UIScreen.main.bounds
//
//                            withAnimation(.spring()) {
//                                if -offset.width > screen.width / 2 {
//                                    offset.width = -screen.height
//                                    showHome.toggle()
//                                }
//                                else {
//                                    offset = .zero
//                                }
//                            }
//                        }))
//                        .opacity(offset == .zero ? 1 : 0),
//                    alignment: .topTrailing
//                )
//                .padding()
//
//            if showHome {
//                ZStack {
//                    Color(.red)
//                        .ignoresSafeArea()
//
//                    Text("Welcome to Home!")
//                        .font(.title)
//                        .foregroundColor(.white)
//                        .onTapGesture {
//                            withAnimation(.spring()) {
//                                offset = .zero
//                                showHome.toggle()
//                            }
//                        }
//                }
//            }
//
//
//        }
//        .navigationBarTitle("")
//        .navigationBarHidden(true)
//
//    }
//}
//
//struct SmileNotesView_Previews : PreviewProvider {
//    static var previews: some View {
//        SmileNotesView()
//    }
//}

