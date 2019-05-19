//
//  SKNode+Exentions.swift
//  Birds
//
//  Created by Matthew Mashiane on 2019/05/04.
//  Copyright © 2019 Matthew Mashiane. All rights reserved.
//

import SpriteKit

extension SKNode {
    
    func aspectScale(to size: CGSize, width: Bool, multiplier: CGFloat) {
        let scale = width ? (size.width * multiplier) / self.frame.size.width : (size.height * multiplier) / self.frame.size.height
        
        self.setScale(scale)
    }
}

