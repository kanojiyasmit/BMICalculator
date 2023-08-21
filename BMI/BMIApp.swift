//
//  BMIApp.swift
//  BMI
//
//  Created by Smit Kanojiya on 25/07/23.
//

import SwiftUI

@main
struct BMIApp: App {
    @StateObject private var languageManager = LanguageManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(languageManager)
                .environment(\.locale, languageManager.selectedLocale)
        }
    }
}
