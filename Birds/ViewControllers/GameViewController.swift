//
//  GameViewController.swift
//  Birds
//
//  Created by Matthew Mashiane on 2019/05/02.
//  Copyright © 2019 Matthew Mashiane. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

protocol SceneManagerDelegate {
    func presentMenuScene()
    func presentLevelScene()
    func presentGameScene(level: Int)
}

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        presentMenuScene()
    }
}

extension GameViewController: SceneManagerDelegate {
    
    func presentMenuScene() {
        let menuScene = MenuScene()
        menuScene.sceneManagerDelegate = self
        present(scene: menuScene)
    }
    
    func presentLevelScene() {
        let levelScene = LevelScene()
        levelScene.sceneManagerDelegate = self
        present(scene: levelScene)
    }
    
    func presentGameScene(level: Int) {
        let sceneName = "GameScene_\(level)"
        if let gameScene = SKScene(fileNamed: sceneName) as? GameScene {
            gameScene.sceneManagerDelegate = self
            gameScene.level = level
            present(scene: gameScene)
        }
    }
    
    func present(scene: SKScene) {
        
        if let view = self.view as! SKView? {
            if let gestureRecognizers = view.gestureRecognizers {
                for gestureRecognizer in gestureRecognizers {
                    view.removeGestureRecognizer(gestureRecognizer)
                }
            }
            scene.scene?.scaleMode = .resizeFill
            view.presentScene(scene)
            view.ignoresSiblingOrder = true
            
        }
    }
    
}
