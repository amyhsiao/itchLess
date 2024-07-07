//
//  SceneA.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/16.
//

import Foundation
import SpriteKit

class SceneA: SKScene {
    
    unowned var viewState: SceneProvider!
    private var buttonBack: SKSpriteNode?

    
    override func didMove(to view: SKView) {
        let helloANode = SKLabelNode(text: "Hello, scene A!")
                helloANode.position = CGPoint(x: size.width/2, y: size.height/2)
                helloANode.color = .black
        addChild(helloANode)
        
        buttonBack = createButton(text: "Back")
        buttonBack!.position = CGPoint(x: size.width/2, y: size.height/2-100)
        addChild(buttonBack!)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            self.touchDown(atPoint: t.location(in: self))
        }
    }
    func touchDown(atPoint pos: CGPoint) {
        let nodes = self.nodes(at: pos)
        
        if let buttonBack = self.buttonBack {
            if nodes.contains(buttonBack) {
                let sceneGame = GameScene()
                sceneGame.size = CGSize(width: 300, height: 400)
                sceneGame.scaleMode = .fill
                sceneGame.backgroundColor = .gray
                sceneGame.viewState = self.viewState  // Add this line
                viewState.scene = sceneGame
                view!.presentScene(sceneGame, transition: .fade(withDuration: 1.0))
            }
        }
    }
}
