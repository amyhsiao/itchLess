//
//  WeatherFunctionPickerTest.swift
//  WeatherFunctionTest
//
//  Created by 張銘育 on 2024/7/14.
//


//import Foundation
//import Combine
//
//class StationsPickerViewModel: ObservableObject {
//    @Published var counties: [String]
//    @Published var towns: [String] = []
//    @Published var stations: [String] = []
//
//    @Published var selectedCountyIndex: Int = 0 {
//        didSet {
//            updateTowns()
//        }
//    }
//    @Published var selectedTownIndex: Int = 0 {
//        didSet {
//            updateStations()
//        }
//    }
//    @Published var selectedStationIndex: Int = 0 {
//        didSet {
//            updateSelectedStationName()
//        }
//    }
//    @Published var selectedStationName: String = ""
//
//    init() {
//        counties = Array(stationsByCounty.keys).sorted()
//        updateTowns()
//    }
//
//    private func updateTowns() {
//        if selectedCountyIndex < counties.count {
//            let selectedCounty = counties[selectedCountyIndex]
//            towns = Array(stationsByCounty[selectedCounty]?.keys.sorted() ?? [])
//            selectedTownIndex = 0 // Reset town selection
//            updateStations()
//        }
//    }
//
//    private func updateStations() {
//        if selectedTownIndex < towns.count {
//            let selectedTown = towns[selectedTownIndex]
//            let selectedCounty = counties[selectedCountyIndex]
//            stations = stationsByCounty[selectedCounty]?[selectedTown] ?? []
//            selectedStationIndex = 0 // Reset station selection
//            updateSelectedStationName()
//        }
//    }
//
//    private func updateSelectedStationName() {
//        if selectedStationIndex < stations.count {
//            selectedStationName = stations[selectedStationIndex]
//        }
//    }
//}
import Foundation
import Combine

class StationsPickerViewModel: ObservableObject {
    @Published var counties: [String]
    @Published var towns: [String] = []
    @Published var stations: [String] = []
    
    @Published var selectedCountyIndex: Int = 0 {
        didSet {
            updateTowns()
        }
    }
    @Published var selectedTownIndex: Int = 0 {
        didSet {
            updateStations()
        }
    }
    @Published var selectedStationIndex: Int = 0 {
        didSet {
            updateSelectedStationName()
        }
    }
    @Published var selectedStationName: String = ""
    
    @Published var selectedStationDetail: Station?  // 新增用於存儲選中氣象站詳細信息的變量
    
    private var allStations: [Station] = []  // 用於存儲所有站點的數據
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        counties = Array(stationsByCounty.keys).sorted()
        updateTowns()
        fetchStationsData()
    }
    
    private func updateTowns() {
        if selectedCountyIndex < counties.count {
            let selectedCounty = counties[selectedCountyIndex]
            towns = Array(stationsByCounty[selectedCounty]?.keys.sorted() ?? [])
            selectedTownIndex = 0 // Reset town selection
            updateStations()
        }
    }
    
    private func updateStations() {
        if selectedTownIndex < towns.count {
            let selectedTown = towns[selectedTownIndex]
            let selectedCounty = counties[selectedCountyIndex]
            stations = stationsByCounty[selectedCounty]?[selectedTown] ?? []
            selectedStationIndex = 0 // Reset station selection
            updateSelectedStationName()
        }
    }
    
    private func updateSelectedStationName() {
        if selectedStationIndex < stations.count {
            selectedStationName = stations[selectedStationIndex]
        }
    }
    
    private func fetchStationsData() {
        WeatherService().fetchStations { [weak self] stations in
            DispatchQueue.main.async {
                guard let stations = stations else { return }
                self?.allStations = stations
                self?.counties = Array(Set(stations.map { $0.geoInfo.countyName })).sorted()
                self?.updateTowns()
            }
        }
    }
    
//    private func updateSelectedStationDetail() {
//        guard selectedStationIndex < stations.count else { return }
//        selectedStationDetail = allStations.first { $0.stationName == stations[selectedStationIndex] }
//    }
    
    
    // 觸發更新氣象站詳細信息的方法
    func updateStationDetail() {
        guard selectedStationIndex < stations.count,
              let selectedStationId = allStations.first(where: { $0.stationName == stations[selectedStationIndex] })?.stationId else { return }
        
        // 這裡可能還需要一個 API 調用來獲取最新的詳細信息
        selectedStationDetail = allStations.first { $0.stationId == selectedStationId }
    }
    
}
