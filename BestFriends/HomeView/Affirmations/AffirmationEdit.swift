//
//  AffirmationEdit.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 6/14/23.
//

import SwiftUI

struct AffirmationEdit: View {
    
    @State var affirmationDictionary: [String: String]
    @State private var selectedItems: Set<String> = []
    @State private var showAlert = false
    
    var body: some View {
        ZStack{
            ColorManager.purple7
                .opacity(0.3)
                .ignoresSafeArea()
            
            AdPlayerView(name: "sky2")
                .ignoresSafeArea()
                .blendMode(.screen)
            List {
                ForEach(Array(affirmationDictionary.keys), id: \.self) { key in
                    HStack {
                        Text(key)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.leading)
                        
                        Spacer()

                        TextField("Enter affirmation", text: Binding(
                            get: { affirmationDictionary[key] ?? "" },
                            set: { newValue in affirmationDictionary[key] = newValue }
                        ))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.trailing)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Edit")
            
            VStack {
                Spacer()
                
                Button(action: {
                    // Should be save it to database
                    
                    // Print the modified dictionary for demonstration
                    print(affirmationDictionary)
                    
                    showAlert = true
                }) {
                    Text("Save")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.bottom, 20)
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Editing and letting your friends write your affirmations \n will coming soon!"), message: nil, dismissButton: .default(Text("OK")))
        }
    }
}

struct AffirmationEdit_Previews: PreviewProvider {
    static var previews: some View {
        @State var affirmationDictionary: [String: String] = [
                    "Star": "I am a star",
                    "Circle": "I am a circle",
                    "Square": "I am a square",
                    "Heart": "I am a heart"
                    // This should be read from backEnd
                ]
                
        return AffirmationEdit(affirmationDictionary: affirmationDictionary)
    }
}
