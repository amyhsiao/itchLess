//
//  ContentView.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/5.
//

import SwiftUI

struct ContentView: View {
    
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
            
            MonsterView()
                .tabItem {
                    Image("ic-game")
                }
            
            OthersView()
                .tabItem {
                    Image("ic-list")
                }
        }
        
    }
}

#Preview {
    ContentView()
        .environmentObject(ScoreManager())
}
