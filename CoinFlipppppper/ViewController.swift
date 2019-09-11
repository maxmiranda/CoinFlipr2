//
//  ViewController.swift
//  CoinFlipppppper
//
//  Created by Max Miranda on 9/10/19.
//  Copyright © 2019 ___MaxAMiranda___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var faceSelected: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func headsPressed(_ sender: Any) {
        faceSelected = "Heads"
        self.performSegue(withIdentifier: "toResultsVC", sender: self)
    }
    
    @IBAction func tailsPressed(_ sender: Any) {
        faceSelected = "Tails"
        self.performSegue(withIdentifier: "toResultsVC", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.faceSelected = faceSelected
    }
}

