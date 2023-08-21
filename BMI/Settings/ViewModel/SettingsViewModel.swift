//
//  SettingsViewModel.swift
//  BMI
//
//  Created by Smit Kanojiya on 10/08/23.
//

import Foundation

class SettingsViewModel: ObservableObject {
    let settings: [Settings] = [
        Settings(title: "Weight Metrics", imageName: "Weight", options: ["Kilograms", "Grams"]),
        Settings(title: "Height Metrics", imageName: "Height", options: ["Feet", "Meters"]),
        Settings(title: "Language", imageName: "Language", options: ["English", "French", "Spanish", "Turkish"]),
        Settings(title: "Theme", imageName: "Theme", options: ["Light Theme", "Dark Theme"])
    ]
}
