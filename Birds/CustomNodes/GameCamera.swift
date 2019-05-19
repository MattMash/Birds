//
//  GameCamera.swift
//  Birds
//
//  Created by Matthew Mashiane on 2019/05/02.
//  Copyright © 2019 Matthew Mashiane. All rights reserved.
//

import SpriteKit

class GameCamera: SKCameraNode {
    
    func setConstraints(scene: SKScene, frame: CGRect, node: SKNode?) {
        let scaledSize = CGSize(width: scene.size.width * xScale, height: scene.size.height * yScale)
        let boardContentRect = frame
        
        let xInset = min((scaledSize.width / 2), boardContentRect.width / 2)
        let yInset = min((scaledSize.height / 2), boardContentRect.height / 2)
        let insetContentRect = boardContentRect.insetBy(dx: xInset, dy: yInset)
        
        let xRange = SKRange(lowerLimit: insetContentRect.minX, upperLimit: insetContentRect.maxX)
        let yRange = SKRange(lowerLimit: insetContentRect.minY, upperLimit: insetContentRect.maxY)
        let levelEdgeContraint = SKConstraint.positionX(xRange, y: yRange)
        
        if let node = node {
            let zeroRange = SKRange(constantValue: 0.0)
            let positionConstarint = SKConstraint.distance(zeroRange, to: node)
            constraints = [positionConstarint, levelEdgeContraint]
        } else {
            constraints = [levelEdgeContraint]
        }
    }
    
}
