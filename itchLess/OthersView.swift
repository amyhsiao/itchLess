//
//  OthersView.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/7.
//

import SwiftUI

struct OthersView: View {
    @EnvironmentObject var scoreManager: ScoreManager
    @State private var settingPopup = false
    @State private var addressSee = true
    @State private var phoneticShow = true
    
    let commodities = ["commodity-1", "commodity-2", "commodity-3", "commodity-4"]
    
    var body: some View {
        
        NavigationView {
            ZStack(){
                VStack(spacing: 0) {
                    // Top Banner
                    HStack {
                        Image("home-head-pic")
                            .frame(alignment: .leading)
                            .cornerRadius(8)
                            .padding(.horizontal)
                        
                        VStack(spacing: 5){
                            Text("Hi, 小明爸爸/媽媽")
                                .font(.system(size: 24))
                                .bold()
                                .frame(maxWidth: UIScreen.main.bounds.width * 0.65, alignment: .leading)
                                .foregroundColor(Color(red:0.424, green: 0.424, blue: 0.424))
                            Text("來看看更多資訊吧！")
                                .font(.system(size: 14))
                                .frame(maxWidth: UIScreen.main.bounds.width * 0.65, alignment: .leading)
                                .foregroundColor(Color(red:0.424, green: 0.424, blue: 0.424))
                            
                        }
                        .background(.white)
                        .cornerRadius(8)
                        .offset(x:-20)
                        
                        
                        // points view
                        
                        ZStack(alignment: .bottom)
                        {
                            Image("home-bbdollars")
                                .foregroundColor(.gray)
                                .scaledToFit()
                                .frame(width: 160, height: 160, alignment: .leading)
                                .imageScale(.large)
                                .padding(.horizontal, -45)
                                .padding(.vertical, -50)
                            
                            // Button for testing
                            Button(action: {
                                //function for button: increase score
                                scoreManager.resetScore()
                            }) {
                                Text("\(scoreManager.score)")
                                    .font(.title)
                                    .offset(x: -45, y: -5)
                                    .foregroundColor(Color(red:0.3, green: 0.3, blue: 0.3))
                            }
                        }
                        .offset(x:20)
                    }
                    .padding(.vertical, -6)
                    .background (Color.white)
                    .frame(alignment: .leading)
                    
                    ScrollView(.vertical){
                        //間隔
                        Image("home-pink-line")
                            .padding(.vertical)
                            .padding(.top, 0)
                        
                        //商品兌換
                        HStack(alignment: .top){
                            VStack(spacing: 0){
                                Text("商城兌換")
                                    .foregroundColor(Color(red:0.38, green: 0.38, blue: 0.38))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                    .font(.system(size: 20))
                                    .bold()
                                //.offset(x: 15)
                                Text("來看看寶貝幣可以兌換什麼吧～")
                                    .foregroundColor(Color(red:0.38, green: 0.38, blue: 0.38))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                    .font(.system(size: 16))
                                //.offset(x: 15)
                            }
                            NavigationLink(destination: ReminderView())
                            {
                                Text("See all")
                                    .foregroundColor(Color(red:0.964, green: 0.652, blue: 0.728))
                                    .frame(alignment: .trailing)
                                    .padding(.horizontal)
                                    .font(.system(size: 16))
                            }
                        }
                        //.padding(.vertical, -18)
                        .padding(.top, -18)
                        
                    }
                    
                    // 左右滑的商品
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 0) {
                            ForEach(commodities, id: \.self) { commodity in
                                Image(commodity)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 150)
                                    .clipped()
                                    .cornerRadius(10)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top, -210)
                    .padding(.bottom, 400)
                    Spacer()
                    
                    
                    
                    //諮詢小怪
                    ZStack(alignment: .trailing){
                        Image("諮詢小怪")
                            .frame(width: 350)
                        //.resizable()
                            .scaledToFit()
                        //.padding(.horizontal)
                        VStack(){
                            Image("常見問題")
                            Image("我想問")
                        }
                        .padding(.trailing, 30)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.top, -440)
                    //.padding(.bottom, 100)
                    //.offset(y: -65)
                    
                    
                    // 四個按鈕
                    
                    HStack(){
                        Image("診所地圖")
                        Image("協會網站")
                    }
                    //.offset(y: -75)
                    .padding(.top, -260)
                    
                    HStack(){
                        Button(action: {
                            settingPopup.toggle()
                        }) {
                            Image("設定")
                        }
                        
                        Image("word-for-author")
                    }
                    .padding(.top, -130)
                    
                    
                    
                }
                .blur(radius: settingPopup ? 3 : 0)
                
                if settingPopup {
                    Color.black.opacity(0.4) // Background dimming
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            settingPopup = false // Dismiss on tap outside
                        }

                    // Centered Pop-Up
                    VStack(spacing: 20) {
                        Image("setting")
                        Toggle("寶寶基地地址", isOn: $addressSee)
                            .font(.system(size: 28))
                            .frame(alignment: .leading)
                            .padding()
                            .tint(.pink)
                        
                        Toggle("遊戲介面注音設定", isOn: $phoneticShow)
                            .font(.system(size: 28))
                            .frame(alignment: .leading)
                            .padding()
                            .tint(.pink)
                        
                        Button("Close") {
                            settingPopup = false // Dismiss on button tap
                        }
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    }
                    .frame(width: 350, height: 350)
                    .background(Color(red:230/256, green: 229/256, blue: 209/256))
                    .cornerRadius(12)
                    .shadow(radius: 10)
                    .padding()
                    .transition(.scale) // Optional: Add a transition effect
                    .animation(.easeOut, value: settingPopup) // Optional: Animate the appearance
                }
                
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    OthersView()
        .environmentObject(ScoreManager())
}
