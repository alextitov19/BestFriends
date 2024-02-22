//
//  NewJournalCategoryView.swift
//  BestFriends
//
//  Created by Alex Titov on 6/10/23.
//

import SwiftUI

struct CategorySelectorView: View {
    let categories: [String]
    @Binding var isPresented: Bool
    @Binding var newCategory: String
    @Binding var selectedCategory: String
    
    var body: some View {
        ZStack {
            ColorManager.purple2
            
            VStack{
                Text("Select and existing category\nor create a new one")
                    .font(.system(size: 18, weight: .light))
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorManager.purple5)
                    .padding(.bottom)
                
                
                ZStack {
                    ColorManager.purple3
                        .opacity(0.7)
                    
                        HStack {
                            MainTextField(text: $newCategory, placeholder: "Create new category")
                            
                            Button(action: {
                                createTapped()
                            }, label: {
                                Text("Create")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(ColorManager.purple5)
                            })
                        }
                        .padding()
                }
                .frame(height: 65)
                .cornerRadius(15)
                
                ForEach(categories.indices) { i in
                    Button(action: {
                        newCategory = ""
                        selectedCategory = categories[i]
                        isPresented = false
                    }, label: {
                        ZStack {
                            ColorManager.purple3
                                .opacity(0.7)
                            
                                Text(categories[i])
                                .font(.system(size: 18, weight: .light))
                                .foregroundColor(ColorManager.purple5)
                        }
                        .frame(height: 65)
                        .cornerRadius(15)
                    })
                }
                
                Spacer()
            }
            .padding()
        }
        .cornerRadius(15)
        .padding()
    }
    
    func createTapped() {
        if(newCategory.isEmpty) {
            return
        }
        selectedCategory = newCategory
        isPresented = false
    }
}
