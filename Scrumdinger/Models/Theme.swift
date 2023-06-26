//
//  Theme.swift
//  Scrumdinger
//
//  Created by Brian on 17/06/2023.
//

import Foundation
import SwiftUI

enum Theme: String, CaseIterable, Identifiable, Codable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
            case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
            case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    
    var mainColor: Color {
        switch self {
            case .bubblegum:
                return Color(red: 1.0, green: 0.56, blue: 0.77)
            case .buttercup:
                return Color(red: 1.0, green: 0.86, blue: 0.29)
            case .indigo:
                return Color(red: 0.36, green: 0.31, blue: 0.84)
            case .lavender:
                return Color(red: 0.69, green: 0.61, blue: 0.85)
            case .magenta:
                return Color(red: 1.0, green: 0.0, blue: 1.0)
            case .navy:
                return Color(red: 0.0, green: 0.0, blue: 0.5)
            case .orange:
                return Color.orange
            case .oxblood:
                return Color(red: 0.5, green: 0.0, blue: 0.0)
            case .periwinkle:
                return Color(red: 0.8, green: 0.8, blue: 1.0)
            case .poppy:
                return Color(red: 0.85, green: 0.08, blue: 0.23)
            case .purple:
                return Color.purple
            case .seafoam:
                return Color(red: 0.36, green: 0.84, blue: 0.75)
            case .sky:
                return Color(red: 0.53, green: 0.81, blue: 0.92)
            case .tan:
                return Color(red: 0.82, green: 0.71, blue: 0.55)
            case .teal:
                return Color.teal
            case .yellow:
                return Color.yellow
            }
    }
    
    var name: String {
        rawValue.capitalized
    }
    
    var id: String {
        name
    }
}
