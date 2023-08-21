//
//  CustomTabIndicator.swift
//  BMI
//
//  Created by Smit Kanojiya on 01/08/23.
//

import SwiftUI

struct CustomTabIndicator: View {
    let pageCount: Int
    let currentIndex: Int

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<pageCount) { index in
                Circle()
                    .fill(index == currentIndex ? Color.PrimaryColor : Color.gray)
                    .frame(width: 8, height: 8)
            }
        }
    }
}
