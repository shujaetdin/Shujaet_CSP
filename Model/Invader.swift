//
//  Invader.swift
//  Sample_CSP
//
//  Created by Cody Henrichsen on 12/6/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class Invader: SKSpriteNode
{
    var invaderRow : Int = 0
    var invaderCol : Int = 0
 
    
    //MARK: - Initializers
    public init()
    {
        let texture = SKTexture(imageNamed: "enemy1")
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
        self.name = "invader"
        
        self.physicsBody = SKPhysicsBody(texture: self.texture!, size: texture.size())
        self.physicsBody?.isDynamic = true
        self.physcsBody?.usesPrecisionCollisionDetection = false
        self.physicsBody?.categoryBitMask = CollisionCategories.Invader
        self.physicsBody?.contactTestBitMask = CollisionCategorie.PlayerBullet |
            CollisionCategories.Player
        self.physicsBody?.collisionBitMask = CollisionCategories.EdgeBody
    }
    
    //Required for Storyboarduse
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    //MARK: - Invader methods 
    public func fireBullet(scene: SKScene) -> Void
    {
        let bullet = InvaderLaser(imageName: "laser", bulletSound: nil)
        bullet.position.x = self.position.x
        ullet.position.y = elf.position.y - self.size.height

    }
}
