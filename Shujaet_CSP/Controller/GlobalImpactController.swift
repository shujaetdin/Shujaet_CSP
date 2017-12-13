//
//  GlobalImpactController.swift
//  Shujaet_CSP
//
//  Created by Din, Shujaet on 11/10/17.
//  Copyright © 2017 Din, Shujaet. All rights reserved.
//

import UIKit


class GlobalImpactController: UIViewController {
    @IBOutlet weak var groupsketch: UIImageView!
    @IBOutlet weak var problemText: UILabel!
    @IBOutlet weak var connectionText: UILabel!
    
   private func setupGlobalImpact() -> void
   {
    groupsketch.image = UIImage(named: "groupsketch")
    self.problemText.text = "Many people suffer from Aids, but as computer programmers we can help find solution."
    self.connectionText.text = "Mnay people from my native country of India suffer from aids."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
