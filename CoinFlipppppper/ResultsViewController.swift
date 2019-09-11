//
//  ResultsViewController.swift
//  CoinFlipppppper
//
//  Created by Max Miranda on 9/10/19.
//  Copyright © 2019 ___MaxAMiranda___. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    
    var faceSelected: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let randomNumber = arc4random_uniform(10)
        var correctFace : String
        if randomNumber < 5 {
            correctFace = "Heads"
        } else {
            correctFace = "Tails"
        }
        if faceSelected == correctFace {
            resultsLabel.text = "You're correct, it was \(correctFace)"
        } else {
            resultsLabel.text = "You're wrong, it was \(correctFace)"
        }
        
    }

}
