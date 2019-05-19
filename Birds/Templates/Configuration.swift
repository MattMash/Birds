//
//  Configuration.swift
//  Birds
//
//  Created by Matthew Mashiane on 2019/05/02.
//  Copyright © 2019 Matthew Mashiane. All rights reserved.
//

import CoreGraphics

struct ZPositions {
    static let background: CGFloat = 0
    static let obstacles: CGFloat = 1
    static let hudBackground: CGFloat = 10
    static let hudLabal: CGFloat = 11
}

struct PhycicsCategory {
    static let none: UInt32 = 0
    static let all: UInt32 = UInt32.max
    static let edge: UInt32 = 0x1
    static let bird: UInt32 = 0x1 << 1
    static let block: UInt32 = 0x1 << 2
}

extension CGPoint {
    static public func * (left: CGPoint, right: CGFloat) -> CGPoint {
        return CGPoint(x: left.x * right, y: left.y * right)
    }
    
    static public func + (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x + right.x, y: left.y + right.y)
    }
    
    static public func - (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x - right.x, y: left.y - right.y)
    }
}
