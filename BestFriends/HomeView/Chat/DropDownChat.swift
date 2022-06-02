//
//  DropDownChat.swift
//  BestFriends
//
//  Created by Social Tech on 5/26/22.
//


import SwiftUI

struct DropdownOption: Hashable {
    let key: String
    let value: String

    public static func == (lhs: DropdownOption, rhs: DropdownOption) -> Bool {
        return lhs.key == rhs.key
    }
}

struct DropdownRow: View {
    var option: DropdownOption
    var onOptionSelected: ((_ option: DropdownOption) -> Void)?

    var body: some View {
        Button(action: {
            if let onOptionSelected = self.onOptionSelected {
                onOptionSelected(self.option)
            }
        }) {
            HStack {
                Text(self.option.value)
                    .font(.system(size: 14))
                    .foregroundColor(Color.black)
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 5)
    }
}

struct Dropdown: View {
    var options: [DropdownOption]
    var onOptionSelected: ((_ option: DropdownOption) -> Void)?

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                ForEach(self.options, id: \.self) { option in
                    DropdownRow(option: option, onOptionSelected: self.onOptionSelected)
                }
            }
        }
        .frame(minHeight: CGFloat(options.count) * 30, maxHeight: 250)
        .padding(.vertical, 5)
        .background(Color.white)
        .cornerRadius(5)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}



struct DropdownSelector: View {
    
    @State private var shouldShowDropdown = false
    @State private var selectedOption: DropdownOption? = nil
    var placeholder: String
    var options: [DropdownOption]?
    var onOptionSelected: ((_ option: DropdownOption) -> Void)?
    private let buttonHeight: CGFloat = 45
    let timeString: String
    var body: some View {
        Button(action: {
            self.shouldShowDropdown.toggle()
        }) {
            HStack{
                Text(selectedOption == nil ? placeholder : selectedOption!.value)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white).multilineTextAlignment(.leading)
                Text(timeString)
                    .font(.system(size: 14))
            }
                
      
        }
        .padding(.vertical)
        .padding(.horizontal)
        .fixedSize(horizontal:false, vertical:true)
        .cornerRadius(5)
 
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray, lineWidth: 1)
        )
        .overlay(
            VStack {
                if self.shouldShowDropdown {
                    if self.options != nil {
                    Spacer(minLength: buttonHeight + 10)
                    Dropdown(options: self.options!, onOptionSelected: { option in
                        shouldShowDropdown = false
                        selectedOption = option
                        self.onOptionSelected?(option)
                    })
                    }
                }
            }, alignment: .topLeading
        )
        .background(
            RoundedRectangle(cornerRadius: 15).fill(ColorManager.purple3.opacity(0.3))
                .onAppear{
                    print(timeString)
                }
        )
    }
}

//
//struct DropdownSelector_Previews: PreviewProvider {
//    static var uniqueKey: String {
//        UUID().uuidString
//   }
//

//}
//    






 
