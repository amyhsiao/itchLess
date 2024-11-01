//
//  AREducationView.swift
//  ARGameTest
//
//  Created by 張銘育 on 2024/8/19.
//

import SwiftUI

struct AREducationView: View {
    @ObservedObject var gamesceneManager = GameSceneManager()
    @Environment(\.presentationMode) var presentationMode
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Text("An entity has been removed.")
                .foregroundColor(.black)
                .font(.headline)
                .padding()
            
            Button("OK") {
                isShowing = false  // 將綁定的布林值設為false
                presentationMode.wrappedValue.dismiss()  // 關閉當前視圖
                gamesceneManager.showAR = false
                gamesceneManager.showEnd = true
                gamesceneManager.back = true
                print("ok")
                print(gamesceneManager.showEnd)
                print(gamesceneManager.showAR)
                print(gamesceneManager.back)
            }
            .foregroundColor(.white)
            .font(.title2.bold())
            .padding(.vertical, 10)
            .frame(maxWidth: 150)
            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.brown))
        }
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(uiColor: .white)))
        .cornerRadius(15)
        .shadow(radius: 10)
    }
}
