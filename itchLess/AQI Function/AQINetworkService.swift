//
//  AQINetworkService.swift
//  itchLess
//
//  Created by 張銘育 on 2024/7/13.
//

// NetworkService.swift

import SwiftUI
import Combine

class AirQualityViewModel: ObservableObject {
    @Published var airQualityData: AirQualityData?

    func fetchAirQualityData(selectedCountry: String, selectedSite: String) {
        let urlString = "https://data.moenv.gov.tw/api/v2/aqx_p_432?language=zh&offset=0&limit=1000&sort=ImportDate%20desc&format=JSON&api_key=704141d0-1984-4772-b345-403f20dda997"
        
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }

        print("Starting request with URL: \(urlString)")
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    print("HTTP Request Failed \(error)")
                    return
                }
                guard let data = data else {
                    print("No data received")
                    return
                }
                do {
                    let decoder = JSONDecoder()
                    let jsonData = try decoder.decode(AirQualityResponse.self, from: data)
                    if jsonData.records.isEmpty {
                        print("No records found for the selected criteria")
                    } else {
                        for record in jsonData.records where record.county == selectedCountry && record.sitename == selectedSite {
                            // 使用資料結構來儲存 AQI 和 PM2.5
                            let airQuality = AirQualityData(aqi: record.aqi, pm25: record.pm25)
                            self?.airQualityData = airQuality
                            print("Data updated: AQI: \(airQuality.aqi), PM2.5: \(airQuality.pm25)")
                        }
                    }
                } catch {
                    print("Failed to decode JSON: \(error)")
                }
            }
        }.resume()
    }
}
