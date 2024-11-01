import SwiftUI
import Foundation
import Combine

struct ARObjectEnterView: View {
    @State private var modelLimit: Int = 1  // 默認選擇一個怪物
    @State private var isShowingEducation = false  // 控制教育視圖的顯示
    @ObservedObject var gamesceneManager: GameSceneManager
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Number of monsters: \(modelLimit)\n 把癢癢怪都打敗吧！")  // 顯示默認選擇的怪物數量
                
                // 按鈕進入 AR 視圖
                NavigationLink(destination: ARObjectManager(gamesceneManager: gamesceneManager, modelLimit: 1, isShowingEducation: $isShowingEducation)) {
                    HStack {
                        Image(systemName: "gamecontroller")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .frame(maxWidth: 50)
                            .padding(5)
                        Text("Start")
                    }
                    .foregroundColor(.white)
                    .font(.title2.bold())
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.brown))
                }
                Button("Back"){
//                    dismiss()
                    gamesceneManager.back = true
                    gamesceneManager.showAR = false
                    print("back")
                    print(gamesceneManager.showAR)
                    print(gamesceneManager.showEnd)
                    print(gamesceneManager.back)
                }
            }
            .padding()
            .onChange(of: gamesceneManager.back) { newValue in
                if newValue {
                    dismiss()
                }
            }
        }
        
    }
}
