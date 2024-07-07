//
//  GameScene.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/16.
//

import Foundation
import SpriteKit

public func createButton(text: String) -> SKSpriteNode {
    let buttonTexture = SKTexture(imageNamed: "ic-button") // Replace with your button image
    let buttonNode = SKSpriteNode(texture: buttonTexture)
    buttonNode.size = CGSize(width: 50, height: 50)
    
    // Add a label for the button text
    let textNode = SKLabelNode(fontNamed: "Helvetica")
    textNode.text = text
    textNode.position = CGPoint(x: buttonNode.frame.midX, y: buttonNode.frame.midY-20)
    textNode.fontSize = 45
    buttonNode.addChild(textNode)
    
    return buttonNode
}

class GameScene: SKScene {
    unowned var viewState: SceneProvider!
    private var buttonA: SKSpriteNode?
    private var buttonB: SKSpriteNode?
    
    override func didMove(to view: SKView) {
        let helloNode = SKLabelNode(text: "Hello, SpriteKit!")
        helloNode.position = CGPoint(x: size.width/2, y: size.height/2)
        helloNode.color = .black
        buttonA = createButton(text: "A")
        buttonA!.position = CGPoint(x: size.width/2, y: size.height/2)
        buttonB = createButton(text: "B")
        buttonB!.position = CGPoint(x: size.width/2, y: size.height/2-100)
        addChild(helloNode)
        addChild(buttonA!)
        addChild(buttonB!)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            self.touchDown(atPoint: t.location(in: self))
        }
    }
    func touchDown(atPoint pos: CGPoint) {
        let nodes = self.nodes(at: pos)
        
        if let buttonA = self.buttonA {
            if nodes.contains(buttonA) {
                let sceneA = SceneA()
                sceneA.size = CGSize(width: 300, height: 400)
                sceneA.scaleMode = .fill
                sceneA.backgroundColor = .gray
                sceneA.viewState = self.viewState  // Add this line
                viewState.scene = sceneA
                view!.presentScene(sceneA, transition: .fade(withDuration: 1.0))
            }
        }
    }
    
}
