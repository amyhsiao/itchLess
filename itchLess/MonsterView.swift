//
//  MonsterView.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/7.
//

import SwiftUI
import SpriteKit

struct MonsterView: View {
    @StateObject var sceneProvider = SceneProvider()  // << @StateObject ensures the container for the presented scene, ie. SceneProvider, isn't deallocated
        
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height

    var body: some View {
        VStack {
            Text ("MonsterView loaded")
                .tint(.white)
            SpriteView(scene: sceneProvider.scene)
                .frame(width: 400, height: 700)
                .edgesIgnoringSafeArea(.all)
        }
    }

}

#Preview {
    MonsterView()
}

final class SceneProvider: ObservableObject {
    @Published var scene: SKScene

    init() {
        let initialScene = SceneA()
        initialScene.size = CGSize(width: 300, height: 400)
        initialScene.scaleMode = .fill
        initialScene.backgroundColor = .gray
        self.scene = initialScene
        initialScene.viewState = self
    }
}
