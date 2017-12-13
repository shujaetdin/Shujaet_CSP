//
//  ProgrammingViewController.swift
//  Shujaet_CSP
//
//  Created by Din, Shujaet on 12/13/17.
//  Copyright © 2017 Din, Shujaet. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingViewController: UIViewController
{
    //MARK: UI Components
    
    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gaScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showFPS = true
        gameView.showNodeCount = true
        gameView.ingoreSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
