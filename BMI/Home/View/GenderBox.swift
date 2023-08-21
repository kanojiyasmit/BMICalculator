//
//  GenderBox.swift
//  BMI
//
//  Created by Smit Kanojiya on 02/08/23.
//

import SwiftUI

struct GenderBox: View {
    let gender: String
    @Binding var selectedGender: String?
    var body: some View {
        Button {
            selectedGender = gender
        } label: {
            VStack(spacing: 10) {
                Image(gender)
                    .resizable()
                    .scaledToFit()

                Text(LocalizedStringKey(gender))
                    .font(.VarelaRound(size: 18))
                    .foregroundColor(.TextColor)
            }
            .padding()
            .frame(maxWidth: .infinity,maxHeight: 150)
            .background(selectedGender == gender ? Color.PrimaryColor : Color.BoxColor)
            .cornerRadius(15)
        }
    }
}
