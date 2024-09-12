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
    
    init() {
        loadRecords()
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
        }
    }
    
    func resetData() {
        extent = 0
        scores = Array(repeating: "", count: 6)
        additionalInputs = [0.0, 0.0]
        // 根據需要可重置其他字段
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
