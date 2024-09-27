//
//  HomeViewThree.swift
//  AQIFunctionTest
//
//  Created by 張銘育 on 2024/9/26.
//

import SwiftUI

struct HomeViewThree: View {
    @StateObject private var airQualityViewModel = AirQualityViewModel()
    @StateObject private var stationPickerViewModel = StationsPickerViewModel()
    
    @State private var selectedCountryIndex = 0
    @State private var selectedSiteIndex = 0
    @State private var selectedCountyIndex = 0
    @State private var selectedDistrictIndex = 0
    @State private var temperature: Double?
    @State private var humidity: Int?
    @State private var showingWeatherDetails = false
    
    @State private var isShowingSettings = false // 控制設定頁面的顯示
    
//    ESP32
    @State private var ipAddress: String = ""
    @State private var showSettings = false
    @State private var updateTimer: Timer?
    @ObservedObject var sensorData = SensorDataManager.shared
    let esp32Functions = ESP32Functions()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // 表格第一行標題及數據顯示
                    HStack {
                        VStack{
                            Image("盔甲怪獸 2")
                                .resizable()
                                .frame(width: 70, height: 100)
                            Button(action: { esp32Functions.sendCommand(ipAddress: ipAddress, command: "on") }) {
                                Text("開啟清掃")
                            }                        .foregroundColor(.white)
                                .font(.headline.bold())
                                .padding(5)
                            //                            .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color(hex:"F0BE07")))
                            Button(action: { esp32Functions.sendCommand(ipAddress: ipAddress, command: "off") }) {
                                Text("關閉清掃")
                            }                        .foregroundColor(.white)
                                .font(.headline.bold())
                                .padding(5)
                            //                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color(hex:"8375DB")))}
                        VStack{
                                Text("環境守護者")
                                .foregroundColor(.white)
                                .font(.title.bold())
                                .padding(.vertical, 10)
                                .frame(maxWidth: 200)
                                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "B272A4")))
                        HStack(spacing: 20){
                            Text("")
                                .frame(maxWidth: 70)
                                .font(.headline.bold())
                            Text("室外環境")
                                .frame(maxWidth: 70)
                                .font(.headline.bold())
                                .foregroundColor(.secondary)
                            Text("寶寶基地")
                                .frame(maxWidth: 70)
                                .font(.headline.bold())
                                .foregroundColor(.secondary)
                        }
                        HStack{
                            VStack(spacing: 20) {
                                Text("溫度")
                                    .frame(maxWidth: 70)
                                    .font(.headline.bold())
                                Text("濕度")
                                    .frame(maxWidth: 70)
                                    .font(.headline.bold())
                                Text("灰塵量")
                                    .frame(maxWidth: 70)
                                    .font(.headline.bold())
                                Text("空氣品質")
                                    .frame(maxWidth: 70)
                                    .font(.headline.bold())
                            }
                            
                            // 室外環境數據顯示
                            VStack(spacing: 20) {
                                Text(sensorData.temperature != nil ? "\(Int(sensorData.temperature!))°C" : "")
                                    .frame(maxWidth: .infinity)
                                Text(sensorData.humidity != nil ? "\(Int(sensorData.humidity!))%" : "")
                                    .frame(maxWidth: .infinity)
                                Text(sensorData.particulateMatter != nil ? "\(Int(sensorData.particulateMatter!)) µg/m3" : "")
                                    .frame(maxWidth: .infinity)
                                Text(sensorData.toxgas != nil ? "\(Int(sensorData.toxgas!)) ppm" : "")
                                    .frame(maxWidth: .infinity)
                            }                    .foregroundColor(.black)
//                                .font(.title.bold())
                                .padding(.vertical, 10)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color(hex: "FAF0F2")) // 背景顏色
                                        .overlay( // 加上黑色描邊
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.black, lineWidth: 2) // 黑色描邊，線條寬度為 2
                                        )
                                )
                            
                            // 寶寶基地數據顯示
                            VStack(spacing: 20) {
                                Text(stationPickerViewModel.selectedStationDetail?.weatherElement.airTemperature != nil ? "\(stationPickerViewModel.selectedStationDetail!.weatherElement.airTemperature, specifier: "%.1f")°C" : "")
                                    .frame(maxWidth: .infinity)
                                Text(stationPickerViewModel.selectedStationDetail?.weatherElement.relativeHumidity != nil ? "\(stationPickerViewModel.selectedStationDetail!.weatherElement.relativeHumidity)%" : "")
                                    .frame(maxWidth: .infinity)
                                Text(airQualityViewModel.airQualityData?.pm25 != nil ? "\(airQualityViewModel.airQualityData!.pm25)ppm" : "")
                                    .frame(maxWidth: .infinity)
                                Text(airQualityViewModel.airQualityData?.aqi != nil ? "AQI:\(airQualityViewModel.airQualityData!.aqi)" : "")
                                    .frame(maxWidth: .infinity)
                            }
                                .foregroundColor(.black)
//                                .font(.title.bold())
                                .padding(.vertical, 10)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color(hex: "E7F4F5")) // 背景顏色
                                        .overlay( // 加上黑色描邊
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.black, lineWidth: 2) // 黑色描邊，線條寬度為 2
                                        )
                                )
                        }
                            Button("取得測站資料") {
                                // 向兩個 API 同時發送請求
                                let selectedCountry = CountriesData.allCountries[selectedCountryIndex].country
                                let selectedSite = CountriesData.allCountries[selectedCountryIndex].sitenames[selectedSiteIndex]
                                airQualityViewModel.fetchAirQualityData(selectedCountry: selectedCountry, selectedSite: selectedSite)
                                stationPickerViewModel.updateStationDetail()
                            }.foregroundColor(.white)
                                .font(.title3.bold())
                                .padding(10)
                                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color(hex:"B272A8")))
                    }
                    }
                    
                }
                .padding()
            }
            .navigationBarItems(leading: Button(action: {
                isShowingSettings.toggle() // 打開設定頁面
            }) {
                Image(systemName: "gear").foregroundColor(Color(hex:"B272A8"))
                    .font(.title.bold())
//                    .padding(10)
            })
            .sheet(isPresented: $isShowingSettings) {
                SettingsView(
                    selectedCountryIndex: $selectedCountryIndex,
                    selectedSiteIndex: $selectedSiteIndex,
                    stationPickerViewModel: stationPickerViewModel,
                    onSave: { selectedCountry, selectedSite, selectedCounty, selectedTown, selectedStation in
                        // 當返回主頁面時觸發的資料發送
                        airQualityViewModel.fetchAirQualityData(selectedCountry: selectedCountry, selectedSite: selectedSite)
                    },
                    ipAddress: $ipAddress,
                    confirmAction: {
                        setupTimer() // 確認後設置定時器並開始通訊
                    }
                )
            }
            .onChange(of: selectedCountryIndex) { _ in
                selectedSiteIndex = 0
                showingWeatherDetails = false
                temperature = nil
                humidity = nil
            }.background(Color(hex:"E6E5D1"))
        }
    }
    
    func setupTimer() {
        // Invalidate any existing timer before setting a new one
        updateTimer?.invalidate()

        // Schedule the timer to check the current IP address every 10 seconds
        updateTimer = Timer.scheduledTimer(withTimeInterval: 10.0, repeats: true) { _ in
            guard !self.ipAddress.isEmpty, let url = URL(string: "http://\(self.ipAddress):8080/update") else {
                print("IP address not confirmed or invalid.")
                return
            }
            print("Sending update request to: \(url)")
            self.esp32Functions.sendRequest(to: url)
        }
    }
}

struct SettingsView: View {
    @Binding var selectedCountryIndex: Int
    @Binding var selectedSiteIndex: Int
    
    @ObservedObject var stationPickerViewModel: StationsPickerViewModel
    var onSave: (String, String, String, String, String) -> Void
    
    @Binding var ipAddress: String
    var confirmAction: () -> Void
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Form {
            // 國家與測站選擇
            Section(header: Text("國家和測站")) {
                countryAndSitePickers
            }
            
            // 氣象站選擇
            Section(header: Text("氣象站選擇")) {
                stationPickers
            }
            
            // ESP32 IP 輸入
            Section(header: Text("ESP32 設置")) {
                ipInputSection
            }
        }
        .navigationBarItems(trailing: Button("完成") {
            onSaveAction()
        })
    }

    private var countryAndSitePickers: some View {
        VStack {
            Picker("國家", selection: $selectedCountryIndex) {
                ForEach(0..<CountriesData.allCountries.count, id: \.self) { index in
                    Text(CountriesData.allCountries[index].country).tag(index)
                }
            }
            Picker("測站", selection: $selectedSiteIndex) {
                ForEach(0..<CountriesData.allCountries[selectedCountryIndex].sitenames.count, id: \.self) { index in
                    Text(CountriesData.allCountries[selectedCountryIndex].sitenames[index]).tag(index)
                }
            }
        }
    }
    
    private var stationPickers: some View {
        VStack {
            Picker("縣市", selection: $stationPickerViewModel.selectedCountyIndex) {
                ForEach(0..<stationPickerViewModel.counties.count, id: \.self) { index in
                    Text(stationPickerViewModel.counties[index]).tag(index)
                }
            }
            Picker("區域", selection: $stationPickerViewModel.selectedTownIndex) {
                ForEach(0..<stationPickerViewModel.towns.count, id: \.self) { index in
                    Text(stationPickerViewModel.towns[index]).tag(index)
                }
            }
            Picker("氣象站", selection: $stationPickerViewModel.selectedStationIndex) {
                ForEach(0..<stationPickerViewModel.stations.count, id: \.self) { index in
                    Text(stationPickerViewModel.stations[index]).tag(index)
                }
            }
        }
    }
    
    private var ipInputSection: some View {
        VStack(spacing: 20) {
            TextField("輸入 ESP32 IP 位址", text: $ipAddress)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                confirmAction()
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("確認 IP")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
    }
    
    private func onSaveAction() {
        let selectedCountry = CountriesData.allCountries[selectedCountryIndex].country
        let selectedSite = CountriesData.allCountries[selectedCountryIndex].sitenames[selectedSiteIndex]
        let selectedCounty = stationPickerViewModel.counties[stationPickerViewModel.selectedCountyIndex]
        let selectedTown = stationPickerViewModel.towns[stationPickerViewModel.selectedTownIndex]
        let selectedStation = stationPickerViewModel.stations[stationPickerViewModel.selectedStationIndex]
        
        onSave(selectedCountry, selectedSite, selectedCounty, selectedTown, selectedStation)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    HomeViewThree()
}
