//
//  RmodelDataManager.swift
//  FunctionTestTwo
//
//  Created by 張銘育 on 2024/9/27.
//

import Foundation

class ScoradPredictDataManager {
    static let shared = ScoradPredictDataManager()

    func sendDataToServer(dayValues: [Double], completion: @escaping ([[String: Any]]?, String?) -> Void) {
        let url = URL(string: "https://final-r-app-e6a219e3197c.herokuapp.com/")! // 替換為你的伺服器 URL
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body: [String: Any] = [
            "scorad_values": dayValues,
            "days": 8
        ]
        
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
        
        // 發送 POST 請求
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(nil, "網路錯誤: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                completion(nil, "伺服器沒有返回數據")
                return
            }
            
            // 解析伺服器回傳的 JSON 數據
            if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] {
                completion(json, nil)
            } else {
                completion(nil, "無法解析伺服器返回的數據")
            }
        }.resume()
    }
}
