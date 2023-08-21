//
//  OnboardingViewModel.swift
//  BMI
//
//  Created by Smit Kanojiya on 01/08/23.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var currentPageIndex = 0

    let pages: [OnboardingPage] = [
        OnboardingPage(title: "Welcome to BMI Check",
                       description: "Discover if you have the ideal body mass index in a simple and fast way",
                       imageName: "onboarding1"),
        OnboardingPage(title: "Fill the fields",
                       description: "Fill the custom fields of body weight and height for BMI Check to calculate your bmi",
                       imageName: "onboarding2"),
        OnboardingPage(title: "Increase your Health",
                       description: "Use the final result to increase your own health and keep the ideal body mass index",
                       imageName: "onboarding3")
    ]

    var isLastPage: Bool {
        currentPageIndex == pages.count - 1
    }
    
    func next() {
        if currentPageIndex < pages.count - 1 {
            currentPageIndex += 1
        }
    }

    func skip() {
        currentPageIndex = pages.count - 1
    }
}
