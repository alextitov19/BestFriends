//
//  LT4.swift
//  BestFriends
//
//  Created by Robert Roe on 5/12/21.
//

import SwiftUI

struct LT4: View {
@State private var showingActionSheet = false
var body: some View {
Button(action: {
self.showingActionSheet = true
}) {
Text("Show ActionSheet")
.font(.title)
.foregroundColor(Color.white)
}
.actionSheet(isPresented: $showingActionSheet) {
ActionSheet(title: Text("SwiftUI ActionSheet"), message: Text("How was that"), buttons: [.default(Text("Awesome")), .cancel()])
     }
   }
}
struct LT4_Previews: PreviewProvider {
static var previews: some View {
   LT4()
   }
}
