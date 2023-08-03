//
//  ClimizApp.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
//

import SwiftUI

@main
struct ClimizApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(QuizScores())
        }
    }
}
