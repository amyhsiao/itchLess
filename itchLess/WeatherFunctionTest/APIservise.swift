//
//  APIservise.swift
//  WeatherFunctionTest
//
//  Created by 張銘育 on 2024/7/14.
//

import Foundation

class WeatherService {
    func fetchStations(completion: @escaping ([Station]?) -> Void) {
        let urlString = "https://opendata.cwa.gov.tw/api/v1/rest/datastore/O-A0003-001?Authorization=CWA-682A4754-6D78-457F-A5B5-F66C0940DE59&format=JSON&WeatherElement=AirTemperature,RelativeHumidity&GeoInfo=CountyName,TownName"
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            completion(nil)
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Failed to fetch data: \(error?.localizedDescription ?? "Unknown error")")
                completion(nil)
                return
            }
            
            do {
                let decodedResponse = try JSONDecoder().decode(ApiResponse.self, from: data)
                completion(decodedResponse.records.stations)
            } catch {
                print("Failed to decode JSON: \(error)")
                completion(nil)
            }
        }
        
        task.resume()
    }
}
