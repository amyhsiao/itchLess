//
//  0913.swift
//  ad2024
//
//  Created by 孫定宇 on 2024/9/13.
//

import SwiftUI

struct game02 : View {
    // 狀態變量，用來控制不同元件的顯示和行為
    @State private var showOverlay = false // 控制第一個視窗的顯示狀態
    @State private var showGameIntro = false // 控制進入遊戲的視窗的顯示狀態
    @State private var showEndGame = false // 控制結束遊戲視窗的顯示狀態
    @State private var showEndGameInfo = false // 控制新視窗的顯示狀態
    @State private var showBlankView = false // 控制空白視窗的顯示狀態
    @State private var buttonAPressed = false // 確定按下 button_A
    @State private var showMouse1 = false
    @State private var showMouse2 = false
    @State private var showMouse3 = false
    @State private var showDirtyBear = true
    @State private var showDirtyClothes = true
    @State private var showDirtyDot = true
    @State private var showMonster = false // 控制 monster_1 的顯示狀態
    @State private var monsterScale: CGFloat = 0.1 // 初始化縮放比例
    @State private var monsterRotation: Double = 0 // 初始化旋轉角度
    @State private var showText = false
    
    var body: some View {
        ZStack {
            // 主視圖背景
            VStack(spacing: 0) {
                // Top Banner
                HStack {
                    VStack(spacing: 5) {
                        Text("Hi, 小明小朋友")
                            .font(.system(size: 24))
                            .bold()
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.65, alignment: .leading)
                            .foregroundColor(Color(red: 0.424, green: 0.424, blue: 0.424))
                        Text("一起來打倒癢癢怪吧")
                            .font(.system(size: 14))
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.65, alignment: .leading)
                            .foregroundColor(Color(red: 0.424, green: 0.424, blue: 0.424))
                    }
                    .background(.white)
                    .cornerRadius(8)
                    .offset(x: -20)
                }
                .padding(.vertical, -6)
                .background(Color.white)
                .frame(alignment: .leading)
                
                // Game Room
                ZStack {
                    Image("截圖 2024-07-18 下午6.18.30 1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 480, height: 633.97)
                        .position(x: 196, y: 350)
                    
                    if showDirtyBear {
                        Image("dirtybear")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250, height: 120)
                            .position(x: 196, y: 600)
                            .onTapGesture {
                                if buttonAPressed {
                                    showDirtyBear = false
                                    showMouse1 = false
                                    checkAllItemsDisappeared()
                                }
                            }
                    }
                    
                    if showDirtyClothes {
                        Image("dirtyclothes")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 100)
                            .position(x: 100, y: 430)
                            .onTapGesture {
                                if buttonAPressed {
                                    showDirtyClothes = false
                                    showMouse2 = false
                                    checkAllItemsDisappeared()
                                }
                            }
                    }
                    
                    if showDirtyDot {
                        Image("dirtydot")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 150)
                            .position(x: 320, y: 350)
                            .onTapGesture {
                                if buttonAPressed {
                                    showDirtyDot = false
                                    showMouse3 = false
                                    checkAllItemsDisappeared()
                                }
                            }
                    }
                    
                    if showMouse1 {
                        Image("mouse")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .position(x: 230, y: 550)
                    }
                    
                    if showMouse2 {
                        Image("mouse_1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .position(x: 100, y: 350)
                    }
                    
                    if showMouse3 {
                        Image("mouse_2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .position(x: 320, y: 280)
                    }
                    
                    if showMonster {
                        VStack {
                            Image("monster_1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .scaleEffect(monsterScale) // 設置縮放比例
                                .rotationEffect(.degrees(monsterRotation)) // 設置旋轉角
                                .position(x: 200, y: 300)
                                .onTapGesture {
                                    showGameIntro = true
                                }
                                .onAppear {
                                    withAnimation(.easeInOut(duration: 2)) {
                                        monsterScale = 1.0 // 動畫將逐漸放大到 1 倍
                                        monsterRotation = 360 // 動畫旋轉一整圈
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                        withAnimation(.easeIn(duration: 2)) {
                                            showText = true
                                        }
                                    }
                                }
                                .transition(.opacity)
                            
                            if showText {
                                Text("灰塵怪")
                                    .foregroundColor(.white) // 使原文字透明
                                    .font(.system(size: 80, weight: .bold))
                                    .padding(4)
                                    .background(Color.purple) // 添加邊框顏色
                                    .cornerRadius(8) // 邊框圓角
                                    .padding(.top, 20) // 調整文字和圖片之間的間距
                                    .transition(.opacity)
                                    .animation(.easeIn(duration: 2), value: showText) // 加入動畫
                                    .position(x: 200, y: 150) // 調整文字位置
                            }
                        }
                    }
                }
            }.onAppear {
                // 3秒後顯示第一個視窗
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation {
                        showOverlay = true
                    }
                }
            }
            
            // 第一個視窗，按鈕 A
            if showOverlay {
                Color.black.opacity(0.6) // 背景變暗
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("遊戲頁面說明(入局說明) (2)") // 替換成你的圖片
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400)
                        .foregroundColor(.yellow)
                        .padding(.bottom, 50)
                    
                    Button(action: {
                        buttonAPressed = true // 設定 button_A 已按下
                        showOverlay = false // 按下按鈕後隱藏視窗
                        
                        // 開始倒計時
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            if showDirtyBear { showMouse1 = true }
                            if showDirtyClothes { showMouse2 = true }
                            if showDirtyDot { showMouse3 = true }
                        }
                    }) {
                        Text("知道了")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                }
                .transition(.opacity) // 視窗的淡入淡出效果
            }
            
            // 第二個視窗，進入遊戲
            if showGameIntro {
                Color.black.opacity(0.6)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("遊戲頁面說明(進入遊戲) ")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400)
                        .padding(.bottom, 50)
                    
                    Button(action: {
                        showGameIntro = false // 關閉視窗
                        showBlankView = true // 顯示空白視窗
                    }) {
                        Text("進入遊戲")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                }
                .transition(.opacity)
            }
            
            // 空白視窗
            if showBlankView {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Button(action: {
                        showBlankView = false // 隱藏空白視窗
                        showEndGame = true // 顯示結束遊戲視窗
                    }) {
                        Text("結束遊戲")
                            .padding()
                            .background(Color.red)
                            .cornerRadius(8)
                    }
                }
            }
            
            // 結束遊戲視窗
            if showEndGame {
                Color.black.opacity(0.6)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("遊戲頁面說明(任務完成)") // 替換成你想要顯示的圖片名稱
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400)
                        .padding(.bottom, 50)
                    
                    Button(action: {
                        withAnimation(nil) { // 禁用動畫
                            showEndGame = false // 關閉結束遊戲視窗
                            showEndGameInfo = true // 顯示結束遊戲信息視窗
                        }
                    })
                        {
                        Text("我知道了")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                }
                
               
                
                
            }
                
        }
        .fullScreenCover(isPresented: $showEndGameInfo) {
            EndGameInfo()
            
        }
    }
        // 檢查所有物品是否已經消失
        private func checkAllItemsDisappeared() {
            if !showDirtyBear && !showDirtyClothes && !showDirtyDot {
                withAnimation {
                    showMonster = true
                }
            }
        }
    }
    
struct game02_Previews: PreviewProvider {
    static var previews: some View {
            game02()
        }
    }
    

