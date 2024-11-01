//
//  HomeView.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/7.
//

import SwiftUI

struct HomeView: View {
    //Manage score
    @EnvironmentObject var scoreManager: ScoreManager 
    
    //for info banner
    @State private var currentInfoIndex = 0
    let infoimage = ["home-news-1", "home-news-2", "home-news-3"]
    let infoview = [ClinicView(), ClinicView(), ClinicView()]

    //for reminder banner
    @State private var currentBannerIndex = 0
    @State private var isReminderCompleted = [false, false, false]
    let remindimage = ["home-reminder-1", "home-reminder-2", "home-reminder-3"]
    let remindpoints = [10, 10, 10]
    
    // manage checklist from EditTodo
    @EnvironmentObject var checklistManager: ChecklistManager

    //for todo list
    
    @State private var firstTime = true//
    @State private var firstTimePopup = false
    
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
                            Text("今天天氣偏乾燥，要多多注意寶寶\n皮膚保濕哦～")
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
                    .padding(.bottom, -5)
                    .background (Color.white)
                    .frame(alignment: .leading)
                    
                    
                    // for firstTime popup
                    ScrollView(.vertical){
                        
                        //間隔
                        Image("home-pink-line")
                            .padding(.vertical)
                        
                        //TEXT
                        HStack(){
                            Text("最新資訊")
                                .foregroundColor(Color(red:0.38, green: 0.38, blue: 0.38))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .font(.system(size: 18))
                            NavigationLink(destination: EmptyView())
                            {
                                Text("See all")
                                    .foregroundColor(Color(red:0.964, green: 0.652, blue: 0.728))
                                    .frame(alignment: .trailing)
                                    .padding(.horizontal)
                                    .font(.system(size: 16))
                            }
                        }
                        .padding(.vertical, -10)
                        .offset(y: -5)
                        
                        
                        // 第一個banner
                        TabView(selection: $currentInfoIndex) {
                            ForEach(0..<infoimage.count, id: \.self) { index in
                                
                                ZStack(){
                                    Image(infoimage[index])
                                        .frame(width:110, height:110)
                                    NavigationLink(destination: infoview[index])
                                    {
                                        Image("home-clinic")
                                        //.scaledToFit()
                                            .imageScale(.large)
                                            .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .trailing)
                                        
                                    }
                                    .offset(y: 50)
                                    .padding(.trailing, 40)
                                }
                            }
                        }
                        .frame(height: 170)
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                        .cornerRadius(8)
                        
                        //諮詢小怪&環境守護者
                        
                        HStack(){
                            NavigationLink(destination: ChatView())
                            {
                                Image("home-chatbot")
                            }
                            NavigationLink(destination: HomeViewThree())
                            {
                                Image("home-environment")
                            }
                        }
                        
                        
                        //間隔
                        Image("home-pink-line")
                        //.padding(.vertical)
                        
                        //TEXT
                        HStack(){
                            Text("每日三則小小提醒")
                                .foregroundColor(Color(red:0.38, green: 0.38, blue: 0.38))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.horizontal)
                                .font(.system(size: 18))
                                .offset(y: 5)
                            NavigationLink(destination: EmptyView())
                            {
                                Text("See all")
                                    .foregroundColor(Color(red:0.964, green: 0.652, blue: 0.728))
                                    .frame(alignment: .trailing)
                                    .padding(.horizontal)
                                    .font(.system(size: 16))
                            }
                        }
                        
                        // 第二個 banner：每日三則小小提醒
                        TabView(selection: $currentBannerIndex) {
                            ForEach(0..<remindimage.count, id: \.self) { index in
                                ZStack(alignment: .bottomTrailing){
                                    Image(remindimage[index])
                                        .frame(width:110, height:110)
                                    
                                    Button(action: {
                                        //function for button: increase score
                                        if !isReminderCompleted[index] {
                                            scoreManager.incrementScore(n: remindpoints[index])
                                            isReminderCompleted[index] = true
                                        }
                                    }) {
                                        if !isReminderCompleted[index] {
                                            Text("瞭解！獲得\(remindpoints[index])硬幣")
                                                .padding()
                                                .font(.system(size:16))
                                                .bold()
                                                .background(Color(red:178/256, green: 114/256, blue: 164/256))
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                                        } else{
                                            Text("完成了！")
                                                .font(.system(size:16))
                                                .padding()
                                                .background(Color(red:0.7, green: 0.7, blue: 0.7))
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                                            
                                        }
                                    }
                                    .frame(width:170, height:50)
                                    .offset(x: 110, y:45)
                                }
                                .offset(x: -25, y: -40)
                                
                                
                            }
                        }
                        .frame(height: 300)
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                        //.background(Color(red:0.9, green:0.81, blue:0.9))
                        .cornerRadius(8)
                        .padding(.bottom, -10)
                        
                        
                        //親子共同任務！
                        //間隔
                        Image("home-pink-line")
                            .padding(.top, -50)
                        
                        
                        //TEXT
                        HStack(){
                            VStack(){
                                Text("親子共同任務")
                                    .foregroundColor(Color(red:0.38, green: 0.38, blue: 0.38))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                    .font(.system(size: 18))
                                Text("好的習慣，是保護自己最棒的武器")
                                    .foregroundColor(Color(red:0.38, green: 0.38, blue: 0.38))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.horizontal)
                                    .font(.system(size: 14))
                            }
                            VStack(){
                                Button(action: {
                                    withAnimation{
                                        firstTimePopup.toggle()
                                    }
                                    
                                }) {
                                    Text("我是第一次使用")
                                        .foregroundColor(Color(red:0.964, green: 0.652, blue: 0.728))
                                        .frame(alignment: .trailing)
                                        .font(.system(size: 16))
                                        //.offset(x: -15, y:-10)
                                    
                                }
                                .padding(.trailing)
                                .padding(.top, -3)
                                
                                NavigationLink(destination: EditTodo()){
                                    Text("修改清單")
                                        .foregroundStyle(.gray)
                                }
                                .padding(.top, -5)
                                .font(.system(size: 16))
                            }
                        }
                        .padding(.top, -45)
                        
                          
                        //Todo
                        FilteredChecklistView()
                            .frame(width: 400)
                    
                        Image("home-bottom-bird")
                            .frame(width: 400)
                        
                        
                        
                    }
                    .padding()
                }
                .blur(radius: firstTimePopup ? 3 : 0)
                .overlay(alignment: .top){
                    Group{
                        if (firstTimePopup){
                            Color.black.opacity(0.4) // Background dimming
                                .edgesIgnoringSafeArea(.all)
                                .onTapGesture {
                                    firstTimePopup = false // Dismiss on tap outside
                                }
                            Image("home-firstTime")
                        }
                    }
                }

                
            }
        }
    }
    
}

#Preview {
    HomeView()
        .environmentObject(ScoreManager())
        .environmentObject(ChecklistManager())
}
