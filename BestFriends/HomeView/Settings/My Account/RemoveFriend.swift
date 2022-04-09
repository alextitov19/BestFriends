//
//  RemoveFriend.swift
//  BestFriends
//
//  Created by Social Tech on 4/9/22.
//

import Foundation


import SwiftUI


struct RemoveFriend: View {
    
    @State var friendids: [String] = []
    @State var selectedIDs: [String] = []
    
//    let userDS = UserDataSource()
    
    var body: some View {
        ZStack {
            Image("SignUpPinBackground")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .onAppear {
//                    reloadData()
                }
            
            VStack {
                Text("Remove Friends")
                    .font(.system(size: 65))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 22)
                    .padding(20)
                
                VStack {
                    ForEach(friendids, id: \.self) { id in
//                        let friend = userDS.getUser(id: id)
                        Button(action: {
                            if selectedIDs.contains(id) {
                                if let index = selectedIDs.firstIndex(of: id) {
                                    selectedIDs.remove(at: index)
                                }
                            } else {
                                selectedIDs.append(id)
                            }
                        }) {
//                            Text("\(friend.firstName) \(friend.lastName)")
//                                .frame(width: 300, height: 50, alignment: .center)
//                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
//                                .background(selectedIDs.contains(id) ? Color(#colorLiteral(red: 0.8733580112, green: 0.1930203736, blue: 0.1385983825, alpha: 1)) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
//                                .cornerRadius(25)
//                                .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        }
//                        .padding()
//                    }
//                }
//
//                Button(action: {
//                    deleteFriends()
//                }) {
//                    Text("Delete selected friends")
//                        .frame(width: 300, height: 50, alignment: .center)
//                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
//                        .cornerRadius(25)
//                        .shadow(color: Color(#colorLiteral(red: 0.2067186236, green: 0.2054963708, blue: 0.2076624334, alpha: 1)), radius: 2, x: 0, y: 2)
//                        .isHidden(selectedIDs.count == 0)
//                }
//                .padding()
//            }
//        }
//    }
//
//    private func reloadData() {
//        selectedIDs = []
//        let user = userDS.getCurrentUser()
//        let friendarr = user.friends
//            friendids = friendarr
//    }
//
//    private func deleteFriends() {
//        if selectedIDs.count > 0 {
//            var user = userDS.getCurrentUser()
//            for id in selectedIDs {
//                if let index = user.friends.firstIndex(of: id) {
//                    user.friends.remove(at: index)
//                }
//                var otherUser = userDS.getUser(id: id)
//                if let index = otherUser.friends.firstIndex(of: user.id) {
//                    otherUser.friends.remove(at: index)
//                    userDS.updateUser(user: otherUser)
//                }
//            }
//            userDS.updateUser(user: user)
//            selectedIDs = []
//            reloadData()
//        }
//    }
//}

                         }
                            }
                        }
                    }
                }
            }
        }
       

struct RemoveFriend_Previews : PreviewProvider {
    static var previews: some View {
        RemoveFriend()
    }
}
