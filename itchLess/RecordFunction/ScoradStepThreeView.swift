//
//  ScoradStepThreeView.swift
//  ScoradFunctionTest
//
//  Created by 張銘育 on 2024/7/19.
//

import SwiftUI

struct StepThreeView: View {
    @EnvironmentObject var scoreManager : ScoradManager  // 創建一個新的ScoradManager實例
    @State private var showScore = false
    @State private var navigateBack = false  // 控制導航的狀態
    
    var body: some View {
        VStack(spacing: 20) {
            Slider(value: $scoreManager.additionalInputs[0], in: 0.0...10.0, step: 0.1) {
                Text("Select value (0-10)")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("10")
            }
            Text("Selected: \(scoreManager.additionalInputs[0], specifier: "%.1f")")
            
            Slider(value: $scoreManager.additionalInputs[1], in: 0.0...10.0, step: 0.1) {
                Text("Select value (0-10)")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("10")
            }
            Text("Selected: \(scoreManager.additionalInputs[1], specifier: "%.1f")")
            
            HStack {
                Button("Calculate") {
                    showScore = true
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                if showScore {
                    Text("Total Score: \(scoreManager.totalScore, specifier: "%.1f")")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                } else {
                    Text("Uncalculated")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
            }
            HStack {
                Button("Save and Exit") {
                    scoreManager.addRecord()
                    scoreManager.resetData()  // 保存後重置數據
                    navigateBack = true  // 保存數據後設置導航條件
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                //                // 隱藏的 NavigationLink 用於觸發導航
                //                NavigationLink(destination: ContentView(), isActive: $navigateBack) {
                //                    EmptyView()
            }.navigationDestination(isPresented: $navigateBack) {
                RecordView()
            }
        }
        .padding()
        .navigationTitle("Final Step")
        .navigationBarHidden(false)
    }
}
