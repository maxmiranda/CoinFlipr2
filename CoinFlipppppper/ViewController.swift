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
    
    // records of what happened in the past
    var selectedFaces: [String]!
    var correctFaces: [String]!
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedFaces = [String]()
        correctFaces = [String]()
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
        destinationVC.mainVC = self
    }
}
