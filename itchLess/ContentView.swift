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
    @State private var isShowingContact : Bool = false

    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image("ic-house")
                }
            
            RecordView(isShowing: $isShowingContact)
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

