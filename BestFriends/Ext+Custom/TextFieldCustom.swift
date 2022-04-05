//
//  TextFieldCustom.swift
//  ZetMap
//
//  Created by Alex Titov on 11/15/21.
//

import SwiftUI

struct MainTextField: View {

    @Binding var text: String
    let placeholder: String

    init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }

    var body: some View {
        TextField("", text: $text)
            .placeholder(when: text.isEmpty) {
                    Text(placeholder).foregroundColor(.gray)
            }
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray)
                        .frame(height: 40)
            )
            .multilineTextAlignment(.center)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .font(Font.custom("MainFont", size: 20))
            .foregroundColor(.gray)
    }
}

struct MainSecureField: View {

    @Binding var text: String
    let placeholder: String

    init(text: Binding<String>, placeholder: String) {
        self._text = text
        self.placeholder = placeholder
    }

    var body: some View {
        SecureField("", text: $text)
            .placeholder(when: text.isEmpty) {
                    Text(placeholder).foregroundColor(.gray)
            }
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray)
                        .frame(height: 40)
            )
            .multilineTextAlignment(.center)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .font(Font.custom("MainFont", size: 20))
            .foregroundColor(.gray)
            .padding(.horizontal, 40)
            .padding(.vertical, 15)
    }
}
