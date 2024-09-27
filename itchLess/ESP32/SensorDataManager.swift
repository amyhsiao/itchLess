//
//  SensorDataManager.swift
//  ESP32_HTTP
//
//  Created by 張銘育 on 2024/7/10.
//

import Foundation
import Combine

class SensorDataManager: ObservableObject {
    static let shared = SensorDataManager()

    // 使用 @Published 來標記需要被 SwiftUI 觀察的屬性
    @Published var temperature: Double?
    @Published var humidity: Double?
    @Published var toxgas: Double?
    @Published var particulateMatter: Double?

    private init() {} // 私有化初始化方法，保證單例模式
}
