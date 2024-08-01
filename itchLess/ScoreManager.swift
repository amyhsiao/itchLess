//
//  ScoreManager.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/8/1.
//

import Foundation
import Combine

class ScoreManager: ObservableObject {
    @Published var score: Int = 0
    
    func incrementScore(n: Int) {
        score += n
    }
    
    func resetScore() {
        score = 0
    }
}
