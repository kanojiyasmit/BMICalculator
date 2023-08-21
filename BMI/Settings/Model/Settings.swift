//
//  Settings.swift
//  BMI
//
//  Created by Smit Kanojiya on 08/08/23.
//

import Foundation

struct Settings: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let imageName: String
    var options: [String]
}
