//
//  IncrementDecrementBox.swift
//  BMI
//
//  Created by Smit Kanojiya on 02/08/23.
//

import SwiftUI

struct IncrementDecrementBox: View {
    let title: String
    @Binding var value: Int
    var body: some View {
        VStack(spacing: 5) {
            Text(LocalizedStringKey(title))
                .font(.VarelaRound(size: 18))
            Text("\(value)")
                .font(.PatuaOne(size: 40))
            HStack(spacing: 20) {
                Button {
                    value += 1
                } label: {
                    Circle()
                        .fill(Color.PrimaryColor)
                        .overlay {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                        }
                        .frame(width: 35, height: 35)
                }
                Button {
                    value = max(0, value - 1)
                } label: {
                    Circle()
                        .fill(Color.PrimaryColor)
                        .overlay {
                            Image(systemName: "minus")
                                .foregroundColor(.white)
                        }
                        .frame(width: 35, height: 35)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity,maxHeight: 150)
        .background(Color.BoxColor)
        .cornerRadius(15)
    }
}
