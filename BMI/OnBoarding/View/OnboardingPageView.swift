//
//  OnboardingPageView.swift
//  BMI
//
//  Created by Smit Kanojiya on 01/08/23.
//

import SwiftUI

struct OnboardingPageView: View {
    let page: OnboardingPage

    var body: some View {
        VStack(spacing: 20) {
            Image(page.imageName)
                .resizable()
                .scaledToFit()
            Text(LocalizedStringKey(page.title))
                .font(.PatuaOne(size: 40))
                .multilineTextAlignment(.center)
            Text(LocalizedStringKey(page.description))
                .font(.VarelaRound(size: 18))
                .multilineTextAlignment(.center)
                .padding(.horizontal,25)
        }
        .padding()
    }
}
