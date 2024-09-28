//
//  showEndGameInfo.swift
//  ad2024
//
//  Created by 孫定宇 on 2024/9/13.
//

import SwiftUI

struct EndGameInfo: View {
    
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
                    Image("cleanroom")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 480, height: 633.97)
                        .position(x: 196, y: 350)
                }
            }
        }
    }
}

