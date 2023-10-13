//
//  ChatGroupsView.swift
//  BestFriends
//
//  Created by Alex Titov on 4/6/22.
//

import SwiftUI

struct ChatGroupsView: View {
    
    @EnvironmentObject var sessionManager: SessionManager
    
    let user: User
    //    let atmosphere: Atmosphere
    
    
    // For swiping up/down and scrolling the BlurView
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    
    @State var groups: [Group]
    
    var body: some View {
        // MARK: Scrollable view that shows chat rooms...
        
        // For getting height for Drag Gesture...
        GeometryReader { proxy -> AnyView in
            
            let height = proxy.frame(in: .global).height
            let width = proxy.frame(in: .global).width
            
            return AnyView(
                ZStack {
                    
                    BlurView(style: .systemThinMaterialDark)
                        .clipShape(CustomCorner(corners: [.topLeft, .topRight], radius: 30))
                    
                    VStack(alignment: .center) {
                        
//                        if (groups.count == 0) {
                            HStack {
//
//                                NavigationLink(
//                                    destination: InfoCreateChatRooms(user: user),
//                                    label: {
//                                        Text("SetUp")
//                                            .fontWeight(.thin)
//                                            .frame(width: 85, height: 25)
//                                            .foregroundColor(ColorManager.purple1)
//                                            .font(.system(size: 20))
//                                            .background(ColorManager.purple3)
//                                            .cornerRadius(15)
//                                            .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                                    })
//                            }
//                        } else {
                           
                ZStack {
                                  
                    VStack {
                        
                        HStack  {
                        
                            Text("^")
                                .font(.system(size: 35))
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .opacity(0.4)
                                .multilineTextAlignment(.center)
//                                .blinking(duration: 2.0)
                            
                            
                        Image("iconChat5")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .foregroundColor(ColorManager .purple5)
                            .glow(color: Color.purple, radius: 2)
                            .opacity(0.9)
                            
                            Text("^")
                                .font(.system(size: 35))
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .opacity(0.4)
                                .multilineTextAlignment(.center)
//                                .blinking(duration: 2.0)
                        
                    }
                           
                        Text("Multi-friends chat room access")
                            .font(.system(size: 25))
                            .foregroundColor(Color.white)
                            .fontWeight(.light)
                            .opacity(0.4)
                            .multilineTextAlignment(.center)
                        
                        
                            NavigationLink(
                                destination: InfoCreateChatRooms(user: user),
                                label: {
                                    Text("Multi-friend Room SetUp")
                                        .fontWeight(.thin)
                                        .frame(width: 250, height: 25)
                                        .foregroundColor(ColorManager.purple1)
                                        .font(.system(size: 20))
                                        .background(ColorManager.purple3)
                                        .cornerRadius(10)
                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
                                })
//                                    Text("SwipeUp")
//                                        .fontWeight(.thin)
//                                        .frame(width: 85, height: 25)
//                                        .foregroundColor(ColorManager.purple1)
//                                        .font(.system(size: 20))
//                                        .background(ColorManager.purple3)
//                                        .cornerRadius(15)
//                                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//
                                }
                                
                            }
                        }
                        
                        //MARK: ScrollView content...
                        ScrollView(.vertical, showsIndicators: false) {
                            ForEach(groups, id: \.id) { group in
                                
                                Button(action: {
                                    sessionManager.showChat(user: user, group: group)
                                }) {
                                    GroupRow(group: group)
                                        .padding(.horizontal, 15)
                                        .padding(.top, 15)
                                }
                                
                                CustomDivider(color: Color.purple)
                                    .padding(.horizontal, 30)
                            }
                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    
                    VStack {
                        Spacer()
                        
                        Text("Hide")
                            .font(.system(size: 35))
                            .foregroundColor(ColorManager.purple2)
                        
                            .onTapGesture(perform: {
                                self.offset = 30
                            })
                    }
                    .padding(.bottom, 70)
                }
                
                    .frame(width: width - 70)
                    .padding(.horizontal, 35)
                    .offset(y: height - 100)
                    .offset(y: -offset > 0 ? -offset <= (height - 100) ? offset : -(height - 100) : 30)
                    .gesture(DragGesture().updating($gestureOffset, body: {
                        value, out, _ in
                        
                        out = value.translation.height
                        onDragChange()
                    }).onEnded({ value in
                        
                        let maxHeight = height - 150
                        withAnimation {
                            
                            // Loginc conditions for moving states...
                            // Up, Down, or Mid...
                            if -offset > 100 && -offset < maxHeight * 0.6 {
                                // Mid...
                                offset = -(maxHeight / 3)
                            }
                            else if -offset > maxHeight * 0.6 {
                                // Up...
                                offset = -maxHeight
                            }
                            else  if -offset > 50 {
                                // Down...
                                offset = 0
                            }
                        }
                        
                        // Storing last offset so the gesture can continue from last position...
                        lastOffset = offset
                    }))
            )
        }
        .ignoresSafeArea()
    }
    
    // Called whenever Drag Gesture updates (when dragged)...
    private func onDragChange() {
        DispatchQueue.main.async {
            self.offset = lastOffset + gestureOffset
        }
    }
    
}

