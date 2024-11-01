//
//  ContentView.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/5.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var checklistManager: ChecklistManager
    @EnvironmentObject var scoreManager: ScoreManager
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image("ic-house")
                }
            
            RecordView()
                .tabItem {
                    Image("ic-record")
                }
            
            game02()
                .tabItem {
                    Image("ic-game")
                }
            
            OthersView()
                .tabItem {
                    Image("ic-list")
                }
        }
//        .toolbarBackground(.visible, for: .tabBar)
//        .toolbarBackground(.red, for: .tabBar)
        
    }
}

#Preview {
    ContentView()
        .environmentObject(ScoreManager())
        .environmentObject(ScoradManager())
        .environmentObject(ChecklistManager())
}

