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
                        
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 60, height: 4)
                            .padding(.top)
                        
                        
                        Text("Existing Chat Rooms")
                            .font(.system(size: 20))
                            .fontWeight(.thin)
                            .foregroundColor(.purple)
                        
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
                                
                                CustomDivider(color: Color.white)
                                    .padding(.horizontal, 30)
                            }
                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .top)
                    
                    VStack {
                        Spacer()
                        
                        Text("Hide")
                            .font(.system(size: 35))
                            .foregroundColor(.purple)
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
