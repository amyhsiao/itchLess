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
    let infohead = ["好診所推薦", "最新資訊", "病友活動"]
    let infobody = ["想要找離家近、口碑推薦的使\n用完整數位照護的診所的診所嗎?\n立刻看看有哪些名單!",
        "關於異味性皮膚炎最新的研究與發現",
        "病友協會最近有哪些活動呢？\n歡迎來參加哦！"]
    let infoview = [ClinicView(), ClinicView(), ClinicView()]

    //for reminder banner
    @State private var currentBannerIndex = 0
    @State private var isReminderCompleted = [false, false, false]
    let remindhead = ["飲食篇", "癢癢篇", "保養篇"]
    let remindbody = [
        "濕疹發作時，\n避開容易引起過敏反應的食物\n以及刺激性食物，例如酒精、\n辛辣食物呦",
        "避免用手抓摳\n若抓傷皮膚，可能會有細菌感染。\n寶寶皮膚搔癢難耐時，可將毛巾沾冷水，\n擰乾並敷在患部，緩解不適感",
        "出門前、洗澡後，擦拭乳液可以幫\n助肌膚鎖水、抵禦外界刺激，\n帶寶寶一步步養回健康的角質層"
    ]
    let remindpoints = [100, 100, 100]
    

    //for todo list
    @State private var todoItems = [
            TodoItem(title: "Todo 1", isCompleted: false),
            TodoItem(title: "Todo 2", isCompleted: false),
            TodoItem(title: "Todo 3", isCompleted: false),
            TodoItem(title: "Todo 4", isCompleted: false)
        ]
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 0) {
                // Top Banner
                HStack {
                    Image("home-head-pic")
                        .frame(alignment: .leading)
                        .cornerRadius(8)
                    VStack(spacing: 5){
                        Text("Hi, 小明爸爸/媽媽")
                            .font(.system(size: 24))
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.65, alignment: .leading)
                            .foregroundColor(Color(red:0.424, green: 0.424, blue: 0.424))
                        Text("今日天氣偏乾燥，要多注意寶寶身體哦")
                            .font(.system(size: 14))
                            .frame(maxWidth: UIScreen.main.bounds.width * 0.65, alignment: .leading)
                            .foregroundColor(Color(red:0.424, green: 0.424, blue: 0.424))
                        Button(action: {
                            //function for button: increase score
                            scoreManager.resetScore()
                        }) {
                            Text("(click to reset) Score: \(scoreManager.score)")
                                .font(.system(size: 16))
                                .frame(maxWidth: UIScreen.main.bounds.width * 0.65, alignment: .leading)
                                .foregroundColor(Color(red:0.424, green: 0.424, blue: 0.424))
                        }
                        
                    }
                    .background(.white)
                    .cornerRadius(8)


                    // Notification view
        
                    NavigationLink(destination: NotifView())
                    {
                        Image("home-bell")
                            .foregroundColor(.gray)
                            .scaledToFit()
                            .frame(width: 140, height: 140)
                            .imageScale(.large)
                            .padding(.horizontal, -45)
                            .padding(.vertical, -50)
                    }
                }
                .padding(.vertical, -1)
                .background (Color.white)
                .frame(alignment: .leading)

                ScrollView(.vertical){
                    // 第一個banner
                    TabView(selection: $currentInfoIndex) {
                        ForEach(0..<infohead.count, id: \.self) { index in
                            HStack(){
                                VStack(spacing: 0){
                                    Text(infohead[index])
                                        .font(.system(size: 20, weight: .bold))
                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                        .padding(.horizontal)
                                        .foregroundColor(Color(red:0.716, green: 0.456, blue: 0.656))
                                    Text(infobody[index])
                                        .font(.system(size: 14))
                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                        .padding(.horizontal)
                                        .foregroundColor(Color(red:0.588, green: 0.588, blue: 0.588))
                                    NavigationLink(destination: ClinicView())
                                    {
                                        Image("home-clinic")
                                            .scaledToFit()
                                            .imageScale(.large)
                                            .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading)
                                            .padding(.horizontal)
                                    }
                                }
                                Image("home-baby")
                                    .frame(width:110, height:110)
                            }
                        }
                    }
                    .frame(height: 170)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .background(
                        Color(red:0.948, green: 0.948,  blue:0.964)
                            .frame(height: 250)
                    )
                    .cornerRadius(8)
                    
                    //間隔
                    Image("home-pink-line")
                        .padding(.vertical)
                    
                    //TEXT
                    HStack(){
                        Text("每日三則小小提醒")
                            .foregroundColor(Color(red:0.38, green: 0.38, blue: 0.38))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .font(.system(size: 18))
                        NavigationLink(destination: ReminderView())
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
                        ForEach(0..<remindhead.count, id: \.self) { index in
                            VStack(spacing: 0){
                                Text(remindhead[index])
                                    .font(.system(size: 28, weight: .bold))
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                                    .padding(.top, -80)
                                    .foregroundColor(Color(red:0.616, green: 0.356, blue: 0.556))
                                Text(remindbody[index])
                                    .font(.system(size: 18))
                                    .lineSpacing(8)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                                    .padding(.top, -200)
                                    .foregroundColor(Color(red:0.3, green: 0.3, blue: 0.3))
                                    .multilineTextAlignment(.center)
                                Button(action: {
                                    //function for button: increase score
                                    if !isReminderCompleted[index] {
                                        scoreManager.incrementScore(n: remindpoints[index])
                                        isReminderCompleted[index] = true
                                    }
                                }) {
                                    if !isReminderCompleted[index] {
                                        Text("瞭解了！")
                                            .font(.headline)
                                            .padding()
                                            .background(Color(red:0.616, green: 0.356, blue: 0.556))
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    } else{
                                        Text("已完成！")
                                            .font(.headline)
                                            .padding()
                                            .background(Color(red:0.9, green: 0.9, blue: 0.9))
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    }
                                }
                                .padding(.top, -100)
                            }
                                
                        }
                    }
                    .frame(height: 300)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .background(Color(red:0.9, green:0.81, blue:0.9))
                    .cornerRadius(8)
                    
                    //Todo
                    ScrollView{
                        VStack(spacing: 20) {
                            Text("Todo List")
                                .font(.largeTitle)
                                .padding()
                            
                            ForEach($todoItems) { $item in
                                TodoCardView(item: $item)
                            }
                            
                            Spacer()
                        }
                        
                        .padding()
                    }
                    .background(Color.gray.opacity(0.1))
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(ScoreManager())
}
