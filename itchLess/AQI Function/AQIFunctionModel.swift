//
//  AQIFunctionModel.swift
//  itchLess
//
//  Created by 張銘育 on 2024/7/13.
//

// AirQualityData.swift


import Foundation

struct AirQualityRecord: Codable, Identifiable {
    var id = UUID()
    var county: String
    var sitename: String
    var aqi: String
    var status: String
    var pm10: String
    var pm25: String

    enum CodingKeys: String, CodingKey {
        case county, sitename, aqi, status
        case pm10 = "pm10"
        case pm25 = "pm2.5"
    }
}

struct AirQualityResponse: Codable {
    let records: [AirQualityRecord]
}

struct AirQualityData {
    let aqi: String
    let pm25: String
}
