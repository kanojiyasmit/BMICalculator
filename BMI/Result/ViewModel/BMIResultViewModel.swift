//
//  BMIResultViewModel.swift
//  BMI
//
//  Created by Smit Kanojiya on 18/08/23.
//

import Foundation

class BMIResultViewModel: ObservableObject {
    @Published var bmi: Double
    
    init(bmi: Double) {
        self.bmi = bmi
    }
    
    var isIdealBMI: Bool {
        let idealMinBMI: Double = 18.5
        let idealMaxBMI: Double = 24.9
        return bmi >= idealMinBMI && bmi <= idealMaxBMI
    }
    
    func congratulatoryMessage() -> String {
        if bmi < 18.5 {
            return "Underweight! You can aim for a BMI within the range of 18.5 to 24.9 for a healthier life."
        } else if bmi >= 18.5 && bmi <= 24.9 {
            return "Congratulations! The ideal BMI is between 18.5 and 24.9. Watch and keep this mark in your body mass index for an improved life quality."
        } else {
            return "Overweight! You can aim for a BMI within the range of 18.5 to 24.9 for a healthier life."
        }
    }
}
