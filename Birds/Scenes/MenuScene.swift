//
//  MenuScene.swift
//  Birds
//
//  Created by Matthew Mashiane on 2019/05/14.
//  Copyright © 2019 Matthew Mashiane. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {

    var sceneManagerDelegate: SceneManagerDelegate?
    
    override func didMove(to view: SKView) {
        setupMenu()
    }
    
    func setupMenu() {
        let button = SpriteKitButton(defaultButtonImage: "playButton", action: gotoLevelScene, index: 0)
        button.position = CGPoint(x: frame.midX, y: frame.midY)
        button.aspectScale(to: frame.size, width: false, multiplier: 0.2)
        addChild(button)
    }
    
    func gotoLevelScene(_: Int) {
        sceneManagerDelegate?.presentLevelScene()
    }
    
}
