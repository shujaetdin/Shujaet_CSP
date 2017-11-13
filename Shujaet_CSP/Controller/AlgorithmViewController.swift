//
//  AlgorithmViewController.swift
//  Shujaet_CSP
//
//  Created by Din, Shujaet on 11/8/17.
//  Copyright © 2017 Din, Shujaet. All rights reserved.
//

import UIKit

 public class AlgorithmViewController: UIViewController {
 {
    //Mark; Data members
    @IBoutlet weak var algorithText: UILabl!
    
    private funcsetupAlgorithm() -> Void  }
{
    var algorithmSteps : [String] = []
    
    //TODO: Defne algorithm and all steps
    let algorithm :String = "These are the inructions to create a project in Java using Eclipse and Github \n"
    let stepOne :String = "First, open java eclipse and create a new project"
    let stepTwo :String = "Second, set the settings on the roject and make sure it is in the correct format and folder"
    let stepThree :String = "Third, create classes, and packages as you go along"
    let stepFour :String = "Fourth, create a controller package and make sure you have imported all that need to be imported. "
    let stepFive :String = "Latsly, Figure "

    // TODO Finish adding all steps to the algorithm
    algorithmsSteps = [stepOne, stepTwo, stepThree]

    let attributesDictionary =  [NSAttributedStringKey.font : agorithmText.font]
    let fullttrubutedString = NSmutableAttributedString(string: algorithm, attributes: attributesDictionary)

    for step in algorithmSteps
{
    let bullet :String =
    let formattedStep :String = "\n\(bullet) \(step)"
    let attribuStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
    let paragraphStyle = createParagraphStyle()
    
    attributed SingStep.addAttributes([NSAttributedStringKey.paragrpahStyle : paragraphStyle], range: NSMakeRange(0, attributeStringStep.length))
    
    fullAttributedString.appen(attributedStringStep)
    }
    algorithmxt.atributedText  fullAttributedString
}
    







