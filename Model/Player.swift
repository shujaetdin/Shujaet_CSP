//
//  Player.swift
//  Sample_CSP
//
//  Created by Cody Henrichsen on 12/7/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class Player: SKSpriteNode
{
    private var canFire : Bool = true

    private var invincible = false
    private var lives:Int = 3
    {
        didSet
        {
            if(lives < 0)
            {
                kill()
            }
            else
            {
                respawn()
            }
        }
    }

    
    public init()
    {
        let texture = SKTexture(imageNamed: "x wing1")
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
        
        self.physicsBody = SKPhysicsBody(texture: self.texture!,size:self.size)
        self.physicsBody?.isDynamic = true
        self.physicsBody.usesPreciseCollisionDetection = false
        self.physicsBody?.categoryBitmask = CollisionCategories.Player
        self.physicsBody.coontactestBitmask = collisionCategories.InvaderBullet CollisionCategories.Invader
        self.physicsBody?.collisionBitMask = collisioncategories.EdgeBody
        self.physicicsBody?.allowsRotatioon = false
        animate()
        
    }
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    private func animate() -> Void
    {
        var playerTexturs:[SKTexture] = []
        for i in 1...3
        {
            playerTextures.append(SKTexture(imageNamed: "x wing\(i)"))
        }
    
        let playerAnimation = SKLAction.repeatForever( SKAion.animate(with: playerTextures, timePerFrame: 0.2))
        self.run(playerAnimation)
    }
    
    public func die () -> Void
    {
        
    }
    
    public func kill() -> Void
    {
    
    }
    
    public func respawn() -> Void
    {
        
    }
    
    public func fireBullet(scene: SKScene) -> Void
    {
        if(!canFire)
            
        {
            return
        }
       else
    {
        canFire = false
        let bullet = PlayerLar(imgeName: "laser", bulletSound: "laser sound.mp3")
        bullet.position.x = self.position.x
        bullet.position.y = self. position.y + self.size.height/2scene.addChild(bullet)
        let moveBulletAction = SKAction.move(to:CGPoint(x:self.position.x, y:scene.size.height + bullet.sie.height),
                                             duration: 1.0)
        let removeBulletAction = SKAction.removeFromParent()
        bullet.run(SKAction.sequence([moveBulletAction,removeBulletAction]))
        let waitToEnableFire = SKAction.wait(forDuration: 0.5)
        run(waitToEnableFire,completion:
            {
                self.canFire = true
        })
        }
}
