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
    @EnvironmentObject var scoradManager: ScoradManager
    @EnvironmentObject var scoreManager: ScoreManager

    
    @State private var predictedDays: [[String: Any]] = [] // 用來存放伺服器返回的預測結果
    @State private var errorMessage: String? // 用於顯示錯誤訊息
    @State private var dayValues: [Double] = [30, 32, 38, 33, 43, 51, 48] // 預先填入的數值
    
    @State private var topFeatureNames: [String] = ["", "", ""]
    @State private var isMessageVisible: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack{
                //Top Banner
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
                
                //scroll view
                ScrollView{
                    VStack{
                        HStack{
                            Text("寶寶\n防守日記")
                                .padding(.horizontal,40)
                                .padding(.vertical,20)
                                .background(Color(hex: "A1CDFE"))
                                .cornerRadius(10)
                                .foregroundColor(.black)
                                .font(.system(size:25))
                                .multilineTextAlignment(.center)
                                .padding(.leading,5)
                                .onTapGesture {
                                    // 點按時顯示 "寶寶防守日記"
                                    showDefenseDiary = true
                                }
                            Text("癢癢怪\n各方威脅")
                                .padding(.horizontal,40)
                                .padding(.vertical,20)
                                .background(Color(hex: "FF3381"))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .font(.system(size:25))
                                .multilineTextAlignment(.center)
                                .padding(.trailing,5)
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
                                    .frame(maxWidth: 340, alignment: .leading)
                                    .padding(.top,10)
                                Image("DotLine")
                                    .padding(.horizontal)
                                
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
                                        if let lastRecord = scoradManager.records.last {
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
                                    .frame(maxWidth: 340, alignment: .leading)
                                    .padding(.top,10)
                                Text("可點擊天數，得知當天的指數數值、照片、紀錄文字")
                                    .font(.system(size:10))
                                    .foregroundColor(.black) // 數字顏色為白色
                                    .frame(maxWidth: 340, alignment: .leading)
                                    .padding(.vertical,5)
                                
                                Image("DotLine")
                                    .padding(.horizontal)
                                
                                // Display chart only if there are records, otherwise show "No data recorded" message
                                if !scoradManager.records.isEmpty {
                                    LineView(data: scoradManager.records.map { $0.scorad }) // 使用 LineView 從假設的庫 , title: "POSCORAD", legend: "Trend"
                                        .frame(maxWidth: 340, maxHeight: 200)
                                    Rectangle()
                                        .fill(Color.clear) // 透明的背景
                                        .frame(width: 0.1, height: 290)
                                        .border(Color.black, width: 2) // 給透明方塊加上黑色邊框，便於觀察
                                        .background(Color.black.opacity(0)) // 可選：設置背景顏色，並調整透明度
                                } else {
                                    Text("尚未有數據紀錄")
                                        .font(.system(size: 20))
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: 340, maxHeight: 200)
                                }
                                
                                Text("未來預測")
                                    .font(.system(size:20))
                                    .foregroundColor(.black) // 數字顏色為白色
                                    .frame(maxWidth: 340, alignment: .leading)
                                    .padding(.top,10)
                                Image("DotLine")
                                Text("經由過去幾天的po-scorad指數數值，來看看未來的病情吧～ 小小提醒：診斷與治療請諮詢專業醫師，此數值僅供參考")
                                    .font(.system(size:10))
                                    .foregroundColor(.black) // 數字顏色為白色
                                    .frame(maxWidth: 340, alignment: .leading)
                                    .padding(.vertical,5)
                                
                                // 發送請求按鈕
                                Button(action: {
                                    scoradManager.sendDataToServerForPrediction()
                                }) {
                                    Text("發送 SCORAD 資料並預測")
                                        .padding()
                                        .background(Color(hex:"8375DB"))
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                                .padding()
                                
                                
                                if let errorMessage = scoradManager.errorMessage {
                                    Text("Error: \(errorMessage)")
                                        .foregroundColor(.red)
                                }
                                
                                if !scoradManager.predictedDays.isEmpty {
                                    let lastSevenDays = scoradManager.getLastSevenScoradValues()
                                    
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
                                        ForEach(scoradManager.predictedDays, id: \.day) { prediction in
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
                                    .frame(height: 340)
                                    .padding()
                                } else {
                                    Text("")
                                }
                                
                            }   .background(Color(hex: "D8EAFF"))
                                .cornerRadius(10)
                                .padding(.horizontal,10)
                                
                        }
                        //MARK: 癢癢怪各方威脅
                        else {
                            VStack(spacing:0){
                                Text("癢癢怪各方威脅")
                                    .font(.system(size:20))
                                    .foregroundColor(.black) // 數字顏色為白色
                                    .frame(maxWidth: 340, alignment: .leading)
                                    .padding(.top,10)
                                Image("DotLine")
                                    .renderingMode(.template)  // 將圖片設置為模板模式，只會顯示形狀，不顯示原始顏色
                                    .foregroundColor(.white)
                                VStack(spacing: 0) {
                                    Text("可能的惡化因子")
                                        .font(.system(size: 20))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: 340, alignment: .leading)
                                        .padding(.top, 3)
                                        .padding(.leading, 4)
                                    
                                    ForEach(0..<3, id: \.self) { index in
                                        Text(topFeatureNames.indices.contains(index) ? "\(index + 1). \(topFeatureNames[index])" : "\(index + 1).")
                                            .font(.system(size: 16))
                                            .foregroundColor(.black)
                                            .frame(maxWidth: 340, alignment: .leading)
                                            .padding(.vertical, 2)
                                            .padding(.leading, 8)
                                    }
                                    
                                    Button(action: {
                                        sendEnvironmentalPredictionRequest { modelPredictionData in
                                            if let optimalModel = modelPredictionData.min(by: { $0.value.mse < $1.value.mse }) {
                                                let sortedImportantFeatures = optimalModel.value.featureImportances
                                                    .sorted { $0.value > $1.value }
                                                    .prefix(3)
                                                    .map { $0.key }
                                                self.topFeatureNames = sortedImportantFeatures
                                            }
                                            self.isMessageVisible = true
                                        }
                                    }) {
                                        Text("發送")
                                            .font(.system(size: 16, weight: .bold))
                                            .foregroundColor(.white)
                                            .frame(width: 80, height: 40)
                                            .background(Color.blue)
                                            .cornerRadius(8)
                                            .padding(.top, 8)
                                    }
                                    
                                    Text("利用機器學習方式，找出近期造成皮膚惡化的因素")
                                        .font(.system(size: 10))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: 340, alignment: .leading)
                                        .padding(.vertical, 5)
                                        .padding(.leading, 4)
                                }
                                .background(Color(hex: "FFFFFF"))
                                .cornerRadius(10)
                                .padding(.horizontal)
                                .padding(.vertical)
                                //                            VStack(spacing:0){
                                //                                Text("過敏原檢測")
                                //                                    .font(.system(size:20))
                                //                                    .foregroundColor(.black) // 數字顏色為白色
                                //                                    .frame(maxWidth: 300, alignment: .leading)
                                //                                    .padding(.top,3)
                                //                                    .padding(.leading,4)
                                //                                Text("過去在醫院的過敏原檢測，請拍照 我們將幫忙您和寶寶整理癢癢怪清單")
                                //                                    .font(.system(size:10))
                                //                                    .foregroundColor(.black) // 數字顏色為白色
                                //                                    .frame(maxWidth: 300, alignment: .leading)
                                //                                    .padding(.vertical,5)
                                //                                    .padding(.leading,4)
                                //                                Text("過去紀錄")
                                //                                    .font(.system(size:20))
                                //                                    .foregroundColor(.black) // 數字顏色為白色
                                //                                    .frame(maxWidth: 300, alignment: .leading)
                                //                                    .padding(.top,3)
                                //                                    .padding(.leading,4)
                                //                            }   .background(Color(hex: "FFFFFF"))
                                //                                .cornerRadius(10)
                                //                                .padding(.horizontal)
                                //                                .padding(.vertical)
                                
                            }
                            .background(Color(hex: "FFAECD"))
                            .cornerRadius(10)
                            .padding(.horizontal,20)}
                    }
                }
                .frame(maxWidth: 400)
                /*            .background(Color(hex: "F5F5F5"))  */
                    .overlay(Color.black.opacity(isShowingContact ? 0.5 : 0))
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
        }
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

struct PredictionModelResult: Decodable {
    let mse: Double
    let featureImportances: [String: Double]

    enum CodingKeys: String, CodingKey {
        case mse = "MSE"
        case featureImportances = "Feature Importances"
    }
}

func sendEnvironmentalPredictionRequest(completion: @escaping ([String: PredictionModelResult]) -> Void) {
    let predictionURL = URL(string: "https://flask-enviromonitor-c6bc9e4fd03c.herokuapp.com/predict")!
    var predictionRequest = URLRequest(url: predictionURL)
    predictionRequest.httpMethod = "POST"
    predictionRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let environmentData = [
        "環境溫度": [28.2, 30.7, 29.0, 26.5, 24.3, 31.1, 32.0, 27.8, 25.9, 29.4, 26.0, 28.6, 31.5, 24.1, 32.5, 29.9, 27.2, 23.4, 28.5, 25.2, 31.7, 27.3, 30.4, 32.8, 28.9, 30.2, 24.7, 27.6, 31.2, 29.1, 26.7, 28.3, 30.0, 24.5, 27.9, 25.4, 29.6, 30.9, 26.8, 28.0],
        "環境溼度": [57.9, 61.8, 74.8, 69.3, 55.4, 60.2, 72.6, 58.1, 63.9, 55.0, 65.2, 57.0, 70.4, 52.9, 75.3, 59.8, 64.5, 71.1, 56.2, 73.5, 60.7, 68.6, 59.0, 54.7, 69.8, 72.0, 66.1, 54.3, 71.7, 60.0, 65.8, 59.4, 58.6, 68.2, 54.8, 63.5, 71.3, 57.6, 62.4, 69.9],
        "空氣品質（AQI）": [129, 153, 66, 140, 98, 110, 115, 90, 180, 165, 130, 155, 70, 120, 160, 105, 135, 85, 175, 145, 100, 118, 112, 95, 170, 150, 125, 88, 180, 165, 130, 154, 75, 115, 160, 105, 138, 80, 170, 148],
        "PM2.5濃度": [110, 77, 143, 100, 90, 120, 130, 85, 160, 150, 115, 78, 142, 105, 98, 123, 132, 80, 170, 148, 109, 76, 140, 101, 95, 119, 131, 86, 158, 152, 116, 79, 141, 104, 99, 121, 133, 81, 168, 149],
        "Random Score": [88, 78, 89, 92, 77, 90, 85, 93, 87, 91, 82, 84, 94, 79, 95, 96, 81, 83, 97, 80, 98, 86, 100, 99, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61]
    ]
    
    predictionRequest.httpBody = try! JSONSerialization.data(withJSONObject: environmentData, options: [])
    
    let predictionTask = URLSession.shared.dataTask(with: predictionRequest) { responseData, response, responseError in
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            print("Error with response: status code not 200")
            return
        }

        guard let responseData = responseData, responseError == nil else {
            print("Error: \(responseError?.localizedDescription ?? "No data")")
            return
        }

        do {
            let decodedResponse = try JSONDecoder().decode([String: PredictionModelResult].self, from: responseData)
            DispatchQueue.main.async {
                completion(decodedResponse)
            }
        } catch {
            print("Error decoding JSON: \(error)")
        }
    }
    predictionTask.resume()
}

#Preview {
    RecordView()        
        .environmentObject(ScoradManager())
        .environmentObject(ScoreManager())
}
