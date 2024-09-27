//
//  ESP32Function.swift
//  FunctionTestTwo
//
//  Created by 張銘育 on 2024/9/26.
//

import Foundation
import SwiftUI

class ESP32Functions {
    func confirmIPAddress(ipAddress: String) {
        guard !ipAddress.isEmpty else {
            print("Please enter a valid IP address.")
            return
        }
        print("IP address confirmed: \(ipAddress)")
    }

    func sendCommand(ipAddress: String, command: String) {
        guard !ipAddress.isEmpty else {
            print("IP address not confirmed.")
            return
        }

        guard let url = URL(string: "http://\(ipAddress):8080/\(command)") else {
            print("Invalid IP address: \(ipAddress)")
            return
        }

        print("Sending command: \(command) to \(url)")
        sendRequest(to: url)
    }

    func sendRequest(to url: URL) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Network request error: \(error)")
                return
            }

            guard let data = data else {
                print("No data received.")
                return
            }

            guard let cleanedData = self.extractJSON(from: data) else {
                print("Failed to extract valid JSON.")
                return
            }

            do {
                if let jsonObject = try JSONSerialization.jsonObject(with: cleanedData) as? [String: Double] {
                    DispatchQueue.main.async {
                        SensorDataManager.shared.temperature = jsonObject["temp"]
                        SensorDataManager.shared.humidity = jsonObject["humid"]
                        SensorDataManager.shared.toxgas = jsonObject["toxgas"]
                        SensorDataManager.shared.particulateMatter = jsonObject["partic"]
                    }
                }
            } catch {
                print("JSON parsing error: \(error)")
            }
        }.resume()
    }

    func extractJSON(from rawData: Data) -> Data? {
        guard let rawString = String(data: rawData, encoding: .utf8),
              let startIndex = rawString.firstIndex(of: "{"),
              let endIndex = rawString.lastIndex(of: "}") else {
            print("Unable to convert data to string.")
            return nil
        }

        let jsonString = rawString[startIndex...endIndex]
        return Data(jsonString.utf8)
    }

    func setupTimer(ipAddress: String, updateTimer: inout Timer?) {
        updateTimer = Timer.scheduledTimer(withTimeInterval: 10.0, repeats: true) { _ in
            guard !ipAddress.isEmpty, let url = URL(string: "http://\(ipAddress):8080/update") else {
                print("IP address not confirmed or invalid.")
                return
            }
            self.sendRequest(to: url)
        }
    }
}
