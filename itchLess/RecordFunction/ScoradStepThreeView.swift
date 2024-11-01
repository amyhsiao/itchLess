//
//  ScoradStepThreeView.swift
//  ScoradFunctionTest
//
//  Created by 張銘育 on 2024/7/19.
//

import SwiftUI

struct StepThreeView: View {
    @EnvironmentObject var scoreManager : ScoradManager  // 創建一個新的ScoradManager實例
    @Binding var isShowing : Bool
    @State private var showScore = false
    @State private var navigateBack = false  // 控制導航的狀態
    
    var body: some View {
        VStack(spacing: 20) {
//            Slider(value: $scoreManager.additionalInputs[0], in: 0.0...10.0, step: 0.1) {
//                Text("Select value (0-10)")
//            } minimumValueLabel: {
//                Text("0")
//            } maximumValueLabel: {
//                Text("10")
//            }
//            Text("Selected: \(scoreManager.additionalInputs[0], specifier: "%.1f")")
//            
//            Slider(value: $scoreManager.additionalInputs[1], in: 0.0...10.0, step: 0.1) {
//                Text("Select value (0-10)")
//            } minimumValueLabel: {
//                Text("0")
//            } maximumValueLabel: {
//                Text("10")
//            }
//            Text("Selected: \(scoreManager.additionalInputs[1], specifier: "%.1f")")
            

                // 瘙癢問題評估
                VStack(alignment: .leading, spacing: 8) {
                    Text("瘙癢問題")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("從無瘙癢問題到瘙癢難忍")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Slider(value: $scoreManager.additionalInputs[0], in: 0.0...10.0, step: 0.1) {
                        Text("瘙癢問題自我評估")
                    } minimumValueLabel: {
                        Text("0").font(.caption)
                    } maximumValueLabel: {
                        Text("10").font(.caption)
                    }
                    
                    Text("當前評分: \(scoreManager.additionalInputs[0], specifier: "%.1f")")
                        .font(.footnote)
                        .foregroundColor(.blue)
                }
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)

                // 睡眠問題評估
                VStack(alignment: .leading, spacing: 8) {
                    Text("睡眠問題")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text("從無睡眠問題到完全失眠")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Slider(value: $scoreManager.additionalInputs[1], in: 0.0...10.0, step: 0.1) {
                        Text("睡眠問題自我評估")
                    } minimumValueLabel: {
                        Text("0").font(.caption)
                    } maximumValueLabel: {
                        Text("10").font(.caption)
                    }
                    
                    Text("當前評分: \(scoreManager.additionalInputs[1], specifier: "%.1f")")
                        .font(.footnote)
                        .foregroundColor(.blue)
                }
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)

            
            HStack {
                Button("計算分數") {
                    showScore = true
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                if showScore {
                    Text("總分: \(scoreManager.totalScore, specifier: "%.1f")")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                } else {
                    Text("尚未計算")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
            }
            HStack {
                Button("保存並離開") {
                    scoreManager.addRecord()
                    scoreManager.resetData()  // 保存後重置數據
                    navigateBack = true  // 保存數據後設置導航條件
                    isShowing.toggle()
                    print(isShowing)
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                //                // 隱藏的 NavigationLink 用於觸發導航
                //                NavigationLink(destination: ContentView(), isActive: $navigateBack) {
                //                    EmptyView()
            }.navigationDestination(isPresented: $navigateBack) {
                RecordView(isShowing: $isShowing)
                    .navigationBarHidden(true)
            }
        }
        .padding()
        .navigationTitle("最後一步：主觀症狀")
        .navigationBarHidden(false)
    }
}
