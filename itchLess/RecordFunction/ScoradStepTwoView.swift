//
//  ScoradStepTwoView.swift
//  ScoradFunctionTest
//
//  Created by 張銘育 on 2024/7/19.
//

import SwiftUI

//struct StepTwoView: View {
//    @ObservedObject var scoreManager: ScoradManager
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Enter Scores (0-3)")
//                .font(.headline)
//
//            ForEach(0..<6, id: \.self) { index in
//                TextField("Score \(index + 1)", text: $scoreManager.scores[index])
//                    .keyboardType(.numberPad)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//            }
//
//            NavigationLink(destination: StepThreeView(scoreManager: scoreManager)) {
//                Text("Next")
//                    .padding()
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//            }
//        }
//        .padding()
//        .navigationTitle("Step 2")
//        .navigationBarHidden(false)
//    }
//}

import SwiftUI

struct Symptom: Identifiable, Equatable {
    let name: String
    let imageName: String
    var id: String { name }
}

struct StepTwoView: View {
    @EnvironmentObject var scoreManager : ScoradManager  // 創建一個新的ScoradManager實例
    
    let symptoms = [
        Symptom(name: "症狀1", imageName: "SymptomPreview1"),
        Symptom(name: "症狀2", imageName: "SymptomPreview2"),
        Symptom(name: "症狀3", imageName: "SymptomPreview3"),
        Symptom(name: "症狀4", imageName: "SymptomPreview4"),
        Symptom(name: "症狀5", imageName: "SymptomPreview5"),
        Symptom(name: "症狀6", imageName: "SymptomPreview6")
    ]
    
    @State private var selectedSymptom: Symptom?
    @State private var showDetailSelection = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Enter Scores (0-3)")
                .font(.headline)
            
            
            NavigationView {
                List(symptoms) { symptom in
                    HStack {
                        Image(symptom.imageName)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(8)
                        Button(symptom.name) {
                            self.selectedSymptom = symptom
                        }
                        Spacer()
                        Text(scoreManager.scores[symptoms.firstIndex(where: {$0 == symptom}) ?? 0])
                            .padding(.trailing)
                    }
                }
                .navigationTitle("選擇疾病特徵")
                .onChange(of: selectedSymptom) { _, _ in
                    if selectedSymptom != nil {
                        self.showDetailSelection = true
                    }
                }
            }
            .sheet(isPresented: $showDetailSelection) {
                if let symptom = selectedSymptom, let index = symptoms.firstIndex(of: symptom) {
                    SymptomDetailSelectionView(symptomIndex: index, symptom: symptom.name, scoreManager: scoreManager, isPresented: $showDetailSelection)
                }
            }
            
            
            NavigationLink(destination: StepThreeView()) {
                Text("Next")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .navigationTitle("Step 2")
        .navigationBarHidden(false)
    }
}

struct SymptomDetailSelectionView: View {
    var symptomIndex: Int
    var symptom: String
    @ObservedObject var scoreManager: ScoradManager
    @Binding var isPresented: Bool
    
    var images: [String] {
        (1...4).map { "\(symptom)_\($0)" }
    }
    
    let captions = ["金", "木", "水", "火"]  // 圖片描述文字
    
    @State private var selectedImageIndex: Int?
    
    var body: some View {
        VStack {
            Text("選擇 \(symptom) 的疾病程度")
            ForEach(Array(images.enumerated()), id: \.element) { index, imageName in
                VStack {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 170) // 設定圖片最大寬度
                        .clipped() // 剪裁超出框架的圖片部分
                        .onTapGesture {
                            selectedImageIndex = index
                        }
                        .border(Color.blue, width: selectedImageIndex == index ? 3 : 0)
                    
                    Text(captions[index]) // 在圖片下方顯示對應的描述文字
                }
            }
            Button("確認") {
                if let index = selectedImageIndex {
                    scoreManager.scores[symptomIndex] = String(index)
                    selectedImageIndex = nil
                    isPresented = false
                }
            }
        }
        .padding()
    }
}

