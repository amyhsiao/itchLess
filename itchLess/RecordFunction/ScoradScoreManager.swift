//
//  ScoradsScoreManager.swift
//  ScoradFunctionTest
//
//  Created by 張銘育 on 2024/7/18.
//

import Foundation

struct SCORADRecord: Codable {
    var date: Date
    var extent: Double
    var itchingVAS: Double
    var sleepDisturbanceVAS: Double
    var dryness: String
    var redness: String
    var swelling: String
    var scabsOozing: String
    var tracesOfScratching: String
    var thickening: String

    var intensity: Double {
        let drynessScore = Double(dryness) ?? 0
        let rednessScore = Double(redness) ?? 0
        let swellingScore = Double(swelling) ?? 0
        let scabsOozingScore = Double(scabsOozing) ?? 0
        let tracesOfScratchingScore = Double(tracesOfScratching) ?? 0
        let thickeningScore = Double(thickening) ?? 0

        let scores = [drynessScore, rednessScore, swellingScore, scabsOozingScore, tracesOfScratchingScore, thickeningScore]
        return scores.reduce(0.0, +)
    }

    var subjectiveSymptoms: Double {
        return itchingVAS + sleepDisturbanceVAS
    }

    var oscorad: Double {
        return extent / 5 + 7 * intensity / 2
    }

    var scorad: Double {
        return oscorad + subjectiveSymptoms
    }
}

class ScoradManager: ObservableObject {
    @Published var extent: Double = 0  // 重命名為 extent
    @Published var scores: [String] = Array(repeating: "", count: 6)  // 初始值設為 ""
    @Published var additionalInputs: [Double] = [0.0, 0.0]
    @Published var records: [SCORADRecord] = []
    @Published var predictedDays: [Prediction] = []  // 儲存預測結果
    @Published var errorMessage: String?  // 保存錯誤信息
    
    init() {
        loadRecords()
        print("已加載記錄: \(records.count) 筆")
    }
    
    func updateScore(isSelected: Bool, weight: Double) {
        if isSelected {
            extent += weight
        } else {
            extent -= weight
        }
    }
    
    var totalScore: Double {
        let scoreSum = scores.compactMap(Double.init).reduce(0.0, +)  // 將字符串數組轉換為 Double 並計算總和
        let additionalSum = additionalInputs.reduce(0.0, +)  // 直接計算 Double 類型的數組總和
        return extent/5 + 7*scoreSum/2 + additionalSum
    }
    //    func addRecord() {
    //        let newRecord = SCORADRecord(date: Date(), score: totalScore)
    //        records.append(newRecord)
    //        saveRecords()  // 保存更新後的記錄
    //    }
    
    func addRecord() {
        print("Current Scores: \(scores)")
        let newRecord = SCORADRecord(
            date: Date(),
            extent: extent,
            itchingVAS: additionalInputs[0],
            sleepDisturbanceVAS: additionalInputs[1],
            dryness: scores[0].isEmpty ? "0" : scores[0],
            redness: scores[1].isEmpty ? "0" : scores[1],
            swelling: scores[2].isEmpty ? "0" : scores[2],
            scabsOozing: scores[3].isEmpty ? "0" : scores[3],
            tracesOfScratching: scores[4].isEmpty ? "0" : scores[4],
            thickening: scores[5].isEmpty ? "0" : scores[5]
        )
        records.append(newRecord)
        saveRecords()
        printRecord(newRecord)
    }
    
    func printRecord(_ record: SCORADRecord) {
        print("Date: \(record.date)")
        print("Extent: \(record.extent)")
        print("Itching VAS: \(record.itchingVAS)")
        print("Sleep Disturbance VAS: \(record.sleepDisturbanceVAS)")
        print("Dryness: \(record.dryness)")
        print("Redness: \(record.redness)")
        print("Swelling: \(record.swelling)")
        print("Scabs/Oozing: \(record.scabsOozing)")
        print("Traces of Scratching: \(record.tracesOfScratching)")
        print("Thickening: \(record.thickening)")
        print("Intensity: \(record.intensity)")
        print("Subjective Symptoms: \(record.subjectiveSymptoms)")
        print("OSCORAD: \(record.oscorad)")
        print("SCORAD: \(record.scorad)")
    }
    
    func saveRecords() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(records) {
            UserDefaults.standard.set(encoded, forKey: "records")
        }
    }
    
    func loadRecords() {
        let decoder = JSONDecoder()
        if let savedRecords = UserDefaults.standard.object(forKey: "records") as? Data,
           let loadedRecords = try? decoder.decode([SCORADRecord].self, from: savedRecords) {
            records = loadedRecords
            print("成功加載 \(records.count) 筆記錄")
        } else {
            print("無法加載記錄")
        }
    }
    
    func resetData() {
        extent = 0
        scores = Array(repeating: "", count: 6)
        additionalInputs = [0.0, 0.0]
        // 根據需要可重置其他字段
    }
    
    // 獲取最近 7 天的 SCORAD 數值
    func getLastSevenScoradValues() -> [Double] {
        let lastSevenRecords = records.suffix(7)
        if lastSevenRecords.count < 7 {
            print("資料不足，少於七筆")
        } else {
            print("最近 7 筆資料:")
            for record in lastSevenRecords {
                print("Date: \(record.date), SCORAD: \(record.scorad)")
            }
        }
        return lastSevenRecords.map { $0.scorad }
    }
    
    // 發送最近 7 天的 SCORAD 數據到伺服器進行預測
    func sendDataToServerForPrediction() {
        let scoradValues = getLastSevenScoradValues()
            .map { round($0 * 100) / 100 }  // 將數字四捨五入至小數點後 2 位
        
        guard scoradValues.count == 7 else {
            print("資料不足，少於七筆")
            return
        }

        // 構建 JSON 請求體，只包含 scorad_values
        let body: [String: Any] = [
            "scorad_values": scoradValues
        ]

        // 檢查 JSON 轉換是否正確
        guard let jsonData = try? JSONSerialization.data(withJSONObject: body, options: []) else {
            print("無法生成 JSON")
            return
        }

        // 檢查生成的 JSON
        if let jsonString = String(data: jsonData, encoding: .utf8) {
            print("請求的 JSON body: \(jsonString)")
        }

        // 構建 HTTP 請求
        let url = URL(string: "https://final-r-app-e6a219e3197c.herokuapp.com/")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonData
        

        // 發送請求並處理回應
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                DispatchQueue.main.async {
                    self.errorMessage = "網路錯誤: \(error.localizedDescription)"
                }
                return
            }

            guard let data = data else {
                DispatchQueue.main.async {
                    self.errorMessage = "伺服器沒有返回數據"
                }
                return
            }

            // 解析伺服器返回的數據
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] {
                    DispatchQueue.main.async {
                        self.predictedDays = json.compactMap { dict in
                            guard let day = dict["Day"] as? Int,
                                  let scorad = dict["SCORAD"] as? Double,
                                  let q2_5 = dict["Q2_5"] as? Double,
                                  let q97_5 = dict["Q97_5"] as? Double else {
                                return nil
                            }
                            return Prediction(day: day, scorad: scorad, q2_5: q2_5, q97_5: q97_5)
                        }
                        self.errorMessage = nil  // 清除錯誤信息
                    }
                } else {
                    DispatchQueue.main.async {
                        self.errorMessage = "無法解析伺服器返回的數據"
                    }
                }
            } catch {
                DispatchQueue.main.async {
                    self.errorMessage = "JSON 解析錯誤: \(error.localizedDescription)"
                }
            }
        }.resume()
    }
    
}

class NavigationController: ObservableObject {
    @Published var currentView: String = "ContentView"

    func navigate(to view: String) {
        currentView = view
    }

    func goHome() {
        currentView = "ContentView"
    }
}

// 預測的結果數據結構
struct Prediction: Identifiable {
    var id: Int { day }
    var day: Int
    var scorad: Double
    var q2_5: Double
    var q97_5: Double
}
