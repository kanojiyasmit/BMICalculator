//
//  HomeViewModel.swift
//  BMI
//
//  Created by Smit Kanojiya on 02/08/23.
//

import Foundation

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedGender: String? = nil
    @Published var height: Double = 160
    @Published var age: Int = 0
    @Published var weight: Int = 0
    
    var bmi: Double {
        let heightInMeters = height / 100.0
        let weightInKg = Double(weight)
        return weightInKg / (heightInMeters * heightInMeters)
    }
    
    var isIdealBMI: Bool {
        let idealMinBMI: Double = 18.5
        let idealMaxBMI: Double = 24.9
        return bmi >= idealMinBMI && bmi <= idealMaxBMI
    }
}
