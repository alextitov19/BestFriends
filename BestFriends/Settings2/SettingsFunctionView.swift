//
//  SettingsFunctionView.swift
//  BestFriends
//
//  Created by Alex Titov on 8/10/21.
//

import SwiftUI

struct SettingsFunctionView: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                
            }) {
                VStack {
                   Image("happy-face icon")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(Color(#colorLiteral(red: 0.4140273333, green: 0.2234568298, blue: 0.9719541669, alpha: 1)))
                    .frame(width: 45, height: 45)

                    Text("SmileVault")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.4140273333, green: 0.2234568298, blue: 0.9719541669, alpha: 1)))
                }
                .frame(width: 110, height: 110)
            }
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(20)
            
            Spacer()

            Button(action: {
                
            }) {
                VStack {
                   Image("camera")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                    .frame(width: 45, height: 45)

                    Text("Photo Pop")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
                }
                .frame(width: 110, height: 110)
            }
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(20)
            
            Spacer()

            Button(action: {
                
            }) {
                VStack {
                   Image("happy-face icon")
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(Color(#colorLiteral(red: 0.4140273333, green: 0.2234568298, blue: 0.9719541669, alpha: 1)))
                    .frame(width: 45, height: 45)

                    Text("Blue Mode")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.4140273333, green: 0.2234568298, blue: 0.9719541669, alpha: 1)))
                }
                .frame(width: 110, height: 110)
            }
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(20)
            
            Spacer()
        }
        .padding(5)
    }
}

struct SettingsFunctionViewPreview : PreviewProvider {
    static var previews: some View {
        SettingsFunctionView()
    }
}
