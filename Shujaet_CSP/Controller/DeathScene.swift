//
//  File.swift
//  Shujaet_CSP
//
//  Created by Din, Shujaet on 12/19/17.
//  Copyright © 2017 Din, Shujaet. All rights reserved.
//

import UIKit
importSpriteKit

class DeathScene : SKScene
{
    override public func didMove(to view: SKView) -> Void
    {
        self.backgroiundColor SKColor.green
        
        let gameOver = SKlabelNode(tet: "you have died")
        gameOver.name = "game over"
        gameOver.fontSize = 65
        gameOver.fontColor= SKColor.red
        gameOver.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(gameOver)
    }
}
