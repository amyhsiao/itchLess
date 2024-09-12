//
//  itchLessApp.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/5.
//

import SwiftUI

@main
struct itchLessApp: App {
    @StateObject private var scoreManager = ScoreManager()
    @StateObject private var checklistManager = ChecklistManager()
    var body: some Scene {
        WindowGroup {
            InitialView()
                .environmentObject(scoreManager)
                .environmentObject(checklistManager)
                .environmentObject(ScoradManager()) 
        }
    }
}
