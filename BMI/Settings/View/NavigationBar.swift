//
//  NavigationBar.swift
//  BMI
//
//  Created by Smit Kanojiya on 09/08/23.
//

import SwiftUI

struct NavigationBar: View {
    var title : String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack(alignment: .top) {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image("Back")
                    .padding(.top)
            }
            Spacer()
            Text(LocalizedStringKey(title))
                .font(.PatuaOne(size: 40))
                .multilineTextAlignment(.trailing)
        }
        .padding(.horizontal, 30)
        .frame(height: 130,alignment: .top)
    }
}
