//
//  ARObjectManager.swift
//  ARGameTest
//
//  Created by 張銘育 on 2024/8/19.
//

import SwiftUI

struct ARObjectManager: View {
    @ObservedObject var gamesceneManager: GameSceneManager
    var modelLimit: Int
    @Binding var isShowingEducation: Bool
    

    var body: some View {
        ZStack {
            ARObjectView(modelLimit: modelLimit, isShowingEducation: $isShowingEducation)

            if isShowingEducation {
                AREducationView(gamesceneManager: gamesceneManager, isShowing: $isShowingEducation)
            }
        }
    }
}
