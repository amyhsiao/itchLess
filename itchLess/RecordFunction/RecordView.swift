//
//  RecordView.swift
//  AQIFunctionTest
//
//  Created by 張銘育 on 2024/9/5.
//

import SwiftUI
import SwiftUICharts
import Charts

struct RecordView: View {
    // 用於追蹤當前顯示的內容，預設顯示 "寶寶防守日記"
    @State private var showDefenseDiary = true
    @State var isShowingContact = false
    @EnvironmentObject var scoreManager: ScoradManager
    
    @State private var predictedDays: [[String: Any]] = [] // 用來存放伺服器返回的預測結果
    @State private var errorMessage: String? // 用於顯示錯誤訊息
    @State private var dayValues: [Double] = [30, 32, 38, 33, 43, 51, 48] // 預先填入的數值
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("寶寶\n防守日記")
                        .padding(.horizontal,25)
                        .padding(.vertical,20)
                        .background(Color(hex: "A1CDFE"))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.system(size:25))
                        .multilineTextAlignment(.center)
                        .padding(.leading,10)
                        .onTapGesture {
                            // 點按時顯示 "寶寶防守日記"
                            showDefenseDiary = true
                        }
                    Text("癢癢怪\n各方威脅")
                        .padding(.horizontal,25)
                        .padding(.vertical,20)
                        .background(Color(hex: "FF3381"))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.system(size:25))
                        .multilineTextAlignment(.center)
                        .padding(.trailing,10)
                        .onTapGesture {
                            // 點按時顯示 "癢癢怪各方威脅"
                            showDefenseDiary = false
                        }
                }
                
                //MARK: 寶寶防守日記
                //根據 showDefenseDiary 狀態切換顯示的內容
                if showDefenseDiary {
                    VStack(spacing:0){
                        Text("寶寶防守日記")
                            .font(.system(size:20))
                            .foregroundColor(.black) // 數字顏色為白色
                            .frame(maxWidth: 300, alignment: .leading)
                            .padding(.top,10)
                        Image("DotLine")
                        
                        HStack {
                            Image("RecordButtonPNG")
                                .onTapGesture {
                                    isShowingContact = true
                                }

                            VStack {
                                Text("什麼是po-scorad指數？")
                                    .multilineTextAlignment(.center)
                                    .font(.system(size: 12))
                                    .foregroundColor(Color(hex: "2337ED"))

                                // 顯示最後一個 SCORAD 記錄，如果沒有記錄則顯示 "N/A"
                                if let lastRecord = scoreManager.records.last {
                                    Text("\(lastRecord.scorad, specifier: "%.2f")") // 使用最後一個記錄的分數
                                        .font(.system(size: 40)) // 字體大小
                                        .foregroundColor(.white) // 數字顏色為白色
                                        .frame(width: 140, height: 140) // 設定文字框大小
                                        .background(Color(hex: "5156CD"))
                                        .overlay(Circle() // 最外面的白色圓
                                            .stroke(Color(hex: "5BEBDA"), lineWidth: 23))
                                        .clipShape(Circle()) // 確保外部超出部分被切割形成圓形
                                } else {
                                    Text("N/A") // 如果沒有記錄時顯示 "N/A"
                                        .font(.system(size: 40)) // 字體大小
                                        .foregroundColor(.white) // 顯示白色
                                        .frame(width: 140, height: 140)
                                        .background(Color(hex: "5156CD"))
                                        .overlay(Circle() // 最外面的白色圓
                                            .stroke(Color(hex: "5BEBDA"), lineWidth: 23))
                                        .clipShape(Circle())
                                }

                                Text("今日po-scorad指數")
                                    .multilineTextAlignment(.center)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color(hex: "000000"))
                            }
                        }
                        Text("記錄曲線")
                            .font(.system(size:20))
                            .foregroundColor(.black) // 數字顏色為白色
                            .frame(maxWidth: 300, alignment: .leading)
                            .padding(.top,10)
                        Text("可點擊天數，得知當天的指數數值、照片、紀錄文字")
                            .font(.system(size:10))
                            .foregroundColor(.black) // 數字顏色為白色
                            .frame(maxWidth: 300, alignment: .leading)
                            .padding(.vertical,5)
                        
                        Image("DotLine")

                        LineView(data: scoreManager.records.map { $0.scorad }) // 使用 LineView 從假設的庫 , title: "POSCORAD", legend: "Trend"
                            .frame(maxWidth: 300, maxHeight: 200)
                        Rectangle()
                            .fill(Color.clear) // 透明的背景
                            .frame(width: 0.1, height: 290)
                            .border(Color.black, width: 2) // 給透明方塊加上黑色邊框，便於觀察
                            .background(Color.black.opacity(0)) // 可選：設置背景顏色，並調整透明度

//                        ScrollView{
//                            VStack{
//                                ForEach(scoreManager.records, id: \.date) { record in
//                                    HStack {
//                                        VStack(alignment: .leading) {
//                                            Text("日期: \(record.date, formatter: dateFormatter)")
//                                                .font(.system(size: 16))
//                                                .foregroundColor(.gray)
//                                            Text("SCORAD 指數: \(record.scorad, specifier: "%.2f")")
//                                                .font(.system(size: 20))
//                                                .fontWeight(.bold)
//                                                .foregroundColor(.black)
//                                        }
//                                        Spacer()
//                                        Image(systemName: "chart.bar.xaxis")
//                                            .resizable()
//                                            .scaledToFit()
//                                            .frame(width: 40, height: 40)
//                                            .foregroundColor(.blue)
//                                    }
//                                    .padding()
//                                    .background(Color(hex: "F0F8FF"))
//                                }
//                            }.frame(height: 300)
//                        }
                        Text("未來預測")
                            .font(.system(size:20))
                            .foregroundColor(.black) // 數字顏色為白色
                            .frame(maxWidth: 300, alignment: .leading)
                            .padding(.top,10)
                        Image("DotLine")
                        Text("經由過去幾天的po-scorad指數數值，來看看未來的病情吧～ 小小提醒：診斷與治療請諮詢專業醫師，此數值僅供參考")
                            .font(.system(size:10))
                            .foregroundColor(.black) // 數字顏色為白色
                            .frame(maxWidth: 300, alignment: .leading)
                            .padding(.vertical,5)
                        
                        // 發送請求按鈕
                        Button(action: {
                            scoreManager.sendDataToServerForPrediction()
                        }) {
                            Text("發送 SCORAD 資料並預測")
                                .padding()
                                .background(Color(hex:"8375DB"))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .padding()


                        if let errorMessage = scoreManager.errorMessage {
                                        Text("Error: \(errorMessage)")
                                            .foregroundColor(.red)
                                    }

                        if !scoreManager.predictedDays.isEmpty {
                            let lastSevenDays = scoreManager.getLastSevenScoradValues()

                            Chart {
                                // 繪製 1-7 天的實際數據
                                ForEach(Array(lastSevenDays.enumerated()), id: \.offset) { index, actualValue in
                                    LineMark(
                                        x: .value("Day", index + 1), // 將實際數據的天數從 1 開始
                                        y: .value("SCORAD", actualValue)
                                    )
                                    .foregroundStyle(Color(hex:"F8A45B"))
                                    .symbol(Circle())
                                    .symbolSize(100)
                                }

                                // 繪製 8-14 天的預測數據
                                ForEach(scoreManager.predictedDays, id: \.day) { prediction in
                                    LineMark(
                                        x: .value("Day", prediction.day),
                                        y: .value("SCORAD", prediction.scorad)
                                    )
                                    .foregroundStyle(Color(hex:"F8A45B"))
                                    .symbol(Circle())
                                    .symbolSize(100)

                                    AreaMark(
                                        x: .value("Day", prediction.day),
                                        yStart: .value("Lower Bound", prediction.q2_5),
                                        yEnd: .value("Upper Bound", prediction.q97_5)
                                    )
                                    .foregroundStyle(Color.red.opacity(0.3)) // 用紅色繪製區域範圍
                                }
                            }
                            .frame(height: 300)
                            .padding()
                        } else {
                                       Text("")
                                   }
                        
                    }   .background(Color(hex: "D8EAFF"))
                        .cornerRadius(10)
                        .padding(.horizontal,20)
                }
                //MARK: 癢癢怪各方威脅
                else {
                    VStack(spacing:0){
                        Text("癢癢怪各方威脅")
                            .font(.system(size:20))
                            .foregroundColor(.black) // 數字顏色為白色
                            .frame(maxWidth: 300, alignment: .leading)
                            .padding(.top,10)
                        Image("DotLine")
                            .renderingMode(.template)  // 將圖片設置為模板模式，只會顯示形狀，不顯示原始顏色
                            .foregroundColor(.white)
                        VStack(spacing:0){
                            Text("可能的惡化因子")
                                .font(.system(size:20))
                                .foregroundColor(.black) // 數字顏色為白色
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.top,3)
                                .padding(.leading,4)
                            Text("利用機器學習方式，找出近期造成皮膚惡化的因素")
                                .font(.system(size:10))
                                .foregroundColor(.black) // 數字顏色為白色
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.vertical,5)
                                .padding(.leading,4)
                        }   .background(Color(hex: "FFFFFF"))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.top)
                        VStack(spacing:0){
                            Text("過敏原檢測")
                                .font(.system(size:20))
                                .foregroundColor(.black) // 數字顏色為白色
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.top,3)
                                .padding(.leading,4)
                            Text("過去在醫院的過敏原檢測，請拍照 我們將幫忙您和寶寶整理癢癢怪清單")
                                .font(.system(size:10))
                                .foregroundColor(.black) // 數字顏色為白色
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.vertical,5)
                                .padding(.leading,4)
                            Text("過去紀錄")
                                .font(.system(size:20))
                                .foregroundColor(.black) // 數字顏色為白色
                                .frame(maxWidth: 300, alignment: .leading)
                                .padding(.top,3)
                                .padding(.leading,4)
                        }   .background(Color(hex: "FFFFFF"))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.vertical)
                        

                        
                        
                    }
                    .background(Color(hex: "FFAECD"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)}
            }
        }.frame(maxWidth: 400)
/*            .background(Color(hex: "F5F5F5"))  */          .overlay(Color.black.opacity(isShowingContact ? 0.5 : 0))
            .overlay(alignment: .top){
                Group{
                    if (isShowingContact){
                        RecordEntranceView(isShowing: $isShowingContact)
//                            .offset(y: UIScreen.main.bounds.maxY * 0.1)
                            .transition(.slide)
                    }
                }
            }
            .animation(.spring(), value: isShowingContact)
    }
    // 發送數據到伺服器
    func sendTestData() {
        ScoradPredictDataManager.shared.sendDataToServer(dayValues: dayValues) { result, error in
            DispatchQueue.main.async {
                if let error = error {
                    self.errorMessage = error
                } else if let result = result {
                    self.predictedDays = result
                    self.errorMessage = nil
                }
            }
        }
    }
}

extension Color {
    init(hex3: String) {
        let hex = hex3.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

#Preview {
    RecordView()        .environmentObject(ScoradManager())
}
