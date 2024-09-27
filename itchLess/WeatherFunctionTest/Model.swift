//
//  Model.swift
//  WeatherFunctionTest
//
//  Created by 張銘育 on 2024/7/14.
//

import Foundation

// 定義時間資訊
struct ObsTime: Codable {
    let dateTime: String
    
    enum CodingKeys: String, CodingKey {
        case dateTime = "DateTime"
    }
}

// 定義地理資訊
struct GeoInfo: Codable {
    let countyName: String
    let townName: String
    
    enum CodingKeys: String, CodingKey {
        case countyName = "CountyName"
        case townName = "TownName"
    }
}

// 定義天氣要素
struct WeatherElement: Codable {
    let airTemperature: Double
    let relativeHumidity: Int
    
    enum CodingKeys: String, CodingKey {
        case airTemperature = "AirTemperature"
        case relativeHumidity = "RelativeHumidity"
    }
}

// 更新Station結構
struct Station: Codable {
    let stationName: String
    let stationId: String
    let obsTime: ObsTime
    let geoInfo: GeoInfo
    let weatherElement: WeatherElement
    
    enum CodingKeys: String, CodingKey {
        case stationName = "StationName"
        case stationId = "StationId"
        case obsTime = "ObsTime"
        case geoInfo = "GeoInfo"
        case weatherElement = "WeatherElement"
    }
}

// 更新WeatherData結構
struct WeatherData: Codable {
    let stations: [Station]
    
    enum CodingKeys: String, CodingKey {
        case stations = "Station"
    }
}

// 更新ApiResponse結構
struct ApiResponse: Codable {
    let records: WeatherData
    
    enum CodingKeys: String, CodingKey {
        case records = "records"
    }
}

