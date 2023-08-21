//
//  CustomButtonStyle.swift
//  BMI
//
//  Created by Smit Kanojiya on 27/07/23.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.PatuaOne(size: 25))
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.PrimaryColor))
            .padding(.horizontal)
    }
}
