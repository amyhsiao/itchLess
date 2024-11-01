//
//  ScoradStepOneView.swift
//  ScoradFunctionTest
//
//  Created by 張銘育 on 2024/7/19.
//

import SwiftUI

struct StepOneView: View {
    @EnvironmentObject var scoreManager : ScoradManager  // 創建一個新的ScoradManager實例
    @State private var isHeadSelected = false
    @State private var isMainBodySelected = false
    @State private var isRightHandSelected = false
    @State private var isLeftHandSelected = false
    @State private var isGroinSelected = false
    @State private var isRightLegSelected = false
    @State private var isLeftLegSelected = false
    @State private var isBackHeadSelected = false
    @State private var isBackMainBodySelected = false
    @State private var isBackRightHandSelected = false
    @State private var isBackLeftHandSelected = false
    @State private var isBackRightLegSelected = false
    @State private var isBackLeftLegSelected = false
    
    @State private var isBabyHeadSelected = false
    @State private var isBabyMainBodySelected = false
    @State private var isBabyRightHandSelected = false
    @State private var isBabyLeftHandSelected = false
    @State private var isBabyRightPalmSelected = false
    @State private var isBabyLeftPalmSelected = false
    @State private var isBabyGroinSelected = false
    @State private var isBabyRightLegSelected = false
    @State private var isBabyLeftLegSelected = false
    @State private var isBabyBackHeadSelected = false
    @State private var isBabyBackMainBodySelected = false
    @State private var isBabyBackRightHandSelected = false
    @State private var isBabyBackLeftHandSelected = false
    @State private var isBabyBackRightPalmSelected = false
    @State private var isBabyBackLeftPalmSelected = false
    @State private var isBabyBackRightLegSelected = false
    @State private var isBabyBackLeftLegSelected = false
    
    // 新增狀態變量來追蹤是顯示正面還是背面
    @State private var showingFront = true
    
    @State private var selectedMode = "Adult"
    
    let AdultWeights: [Double] = [4.5, 18, 4.5, 4.5, 1.0, 9.0, 9.0, 4.5, 18.0, 4.5, 4.5, 9.0, 9.0]
    let BabyWeights: [Double] = [8.5, 18, 4.5, 1.0, 4.5, 1.0, 1.0, 6.0, 6.0, 8.5, 18.0, 4.5, 1.0, 4.5, 1.0, 6.0, 6.0]
    
    var body: some View {
        VStack {
            Picker("Mode", selection: $selectedMode) {
                Text("成人").tag("Adult")
                Text("孩童").tag("Baby")
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            
            Button(showingFront ? "顯示背面觀" : "顯示前面觀") {
                showingFront.toggle()
            }
            
            GeometryReader { geometry in
                ZStack {
                    if selectedMode == "Adult" {
                        if showingFront {
                            HeadShape()
                                .fill(isHeadSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isHeadSelected.toggle()
                                    scoreManager.updateScore(isSelected: isHeadSelected, weight: AdultWeights[0])
                                }
                            MainBodyShape()
                                .fill(isMainBodySelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isMainBodySelected.toggle()
                                    scoreManager.updateScore(isSelected: isMainBodySelected, weight: AdultWeights[1])
                                }
                            RightHandShape()
                                .fill(isRightHandSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isRightHandSelected.toggle()
                                    scoreManager.updateScore(isSelected: isRightHandSelected, weight: AdultWeights[2])
                                }
                            LeftHandShape()
                                .fill(isLeftHandSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isLeftHandSelected.toggle()
                                    scoreManager.updateScore(isSelected: isLeftHandSelected, weight: AdultWeights[3])
                                }
                            GroinShape()
                                .fill(isGroinSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isGroinSelected.toggle()
                                    scoreManager.updateScore(isSelected: isGroinSelected, weight: AdultWeights[4])
                                }
                            RightLegShape()
                                .fill(isRightLegSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isRightLegSelected.toggle()
                                    scoreManager.updateScore(isSelected: isRightLegSelected, weight: AdultWeights[5])
                                }
                            LeftLegShape()
                                .fill(isLeftLegSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isLeftLegSelected.toggle()
                                    scoreManager.updateScore(isSelected: isLeftLegSelected, weight: AdultWeights[6])
                                }
                        }
                        else {
                            BackHeadShape()
                                .fill(isBackHeadSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isBackHeadSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBackHeadSelected, weight: AdultWeights[7])
                                }
                            BackMainBodyShape()
                                .fill(isBackMainBodySelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isBackMainBodySelected.toggle()
                                    scoreManager.updateScore(isSelected: isBackMainBodySelected, weight: AdultWeights[8])
                                }
                            BackRightHandShape()
                                .fill(isBackRightHandSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isBackRightHandSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBackRightHandSelected, weight: AdultWeights[9])
                                }
                            BackLeftHandShape()
                                .fill(isBackLeftHandSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isBackLeftHandSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBackLeftHandSelected, weight: AdultWeights[10])
                                }
                            BackRightLegShape()
                                .fill(isBackRightLegSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isBackRightLegSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBackRightLegSelected, weight: AdultWeights[11])
                                }
                            BackLeftLegShape()
                                .fill(isBackLeftLegSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 1.5)  // 確保長寬一致
                                .onTapGesture {
                                    isBackLeftLegSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBackLeftLegSelected, weight: AdultWeights[12])
                                }
                        }
                    } else {
                        if showingFront {
                            BabyHeadShape()
                                .fill(isBabyHeadSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyHeadSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyHeadSelected, weight: BabyWeights[0])
                                }
                            BabyMainBodyShape()
                                .fill(isBabyMainBodySelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyMainBodySelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyMainBodySelected, weight: BabyWeights[1])
                                }
                            BabyRightHandShape()
                                .fill(isBabyRightHandSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyRightHandSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyRightHandSelected, weight: BabyWeights[2])
                                }
                            BabyRightPalmShape()
                                .fill(isBabyRightPalmSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyRightPalmSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyRightPalmSelected, weight: BabyWeights[3])
                                }
                            BabyLeftHandShape()
                                .fill(isBabyLeftHandSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyLeftHandSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyLeftHandSelected, weight: BabyWeights[4])
                                }
                            BabyLeftPalmShape()
                                .fill(isBabyLeftPalmSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyLeftPalmSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyLeftPalmSelected, weight: BabyWeights[5])
                                }
                            BabyGroinShape()
                                .fill(isBabyGroinSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyGroinSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyGroinSelected, weight: BabyWeights[6])
                                }
                            BabyRightLegShape()
                                .fill(isBabyRightLegSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyRightLegSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyRightLegSelected, weight: BabyWeights[7])
                                }
                            BabyLeftLegShape()
                                .fill(isBabyLeftLegSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyLeftLegSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyLeftLegSelected, weight: BabyWeights[8])
                                }

                        } else {
                            BabyBackHeadShape()
                                .fill(isBabyBackHeadSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyBackHeadSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyBackHeadSelected, weight: BabyWeights[9])
                                }
                            BabyBackMainBodyShape()
                                .fill(isBabyBackMainBodySelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyBackMainBodySelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyBackMainBodySelected, weight: BabyWeights[10])
                                }
                            BabyBackRightHandShape()
                                .fill(isBabyBackRightHandSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyBackRightHandSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyBackRightHandSelected, weight: BabyWeights[11])
                                }
                            BabyBackRightPalmShape()
                                .fill(isBabyBackRightPalmSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyBackRightPalmSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyBackRightPalmSelected, weight: BabyWeights[12])
                                }
                            BabyBackLeftHandShape()
                                .fill(isBabyBackLeftHandSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyBackLeftHandSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyBackLeftHandSelected, weight: BabyWeights[13])
                                }
                            BabyBackLeftPalmShape()
                                .fill(isBabyBackLeftPalmSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyBackLeftPalmSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyBackLeftPalmSelected, weight: BabyWeights[14])
                                }
                            BabyBackRightLegShape()
                                .fill(isBabyBackRightLegSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyBackRightLegSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyBackRightLegSelected, weight: BabyWeights[15])
                                }
                            BabyBackLeftLegShape()
                                .fill(isBabyBackLeftLegSelected ? Color.red : Color(hex: "#e3bba3").opacity(0.375))
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 1.4)  // 確保長寬一致
                                .onTapGesture {
                                    isBabyBackLeftLegSelected.toggle()
                                    scoreManager.updateScore(isSelected: isBabyBackLeftLegSelected, weight: BabyWeights[16])
                                }
                        }
                    }
                }
            }
            HStack {
                NavigationLink(destination: StepTwoView()) {
                    Text("下一步")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
        .navigationTitle("第一步：紀錄濕疹範圍")
        .navigationBarHidden(false)
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }
}
