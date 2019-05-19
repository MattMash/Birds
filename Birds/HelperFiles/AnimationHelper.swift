//
//  AnimationHelper.swift
//  Birds
//
//  Created by Matthew Mashiane on 2019/05/19.
//  Copyright © 2019 Matthew Mashiane. All rights reserved.
//

import SpriteKit

class AnimationHelper {
    
    static func loadTextures(from atlas: SKTextureAtlas, withName name: String) -> [SKTexture] {
        var textures = [SKTexture]()
        
        for index in 0..<atlas.textureNames.count {
            let textureName = name + String(index + 1)
            textures.append(atlas.textureNamed(textureName))
        }
        
        return textures
    }
    
}
