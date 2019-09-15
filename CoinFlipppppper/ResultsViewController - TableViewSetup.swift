//
//  File.swift
//  CoinFlipppppper
//
//  Created by Max Miranda on 9/14/19.
//  Copyright © 2019 ___MaxAMiranda___. All rights reserved.
//

import UIKit

extension ResultsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainVC.selectedFaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultsCell", for: indexPath) as! ResultsCell
        var rowNum = indexPath.row
        cell.choiceLabel.text = mainVC.selectedFaces[rowNum]
        cell.resultLabel.text = mainVC.correctFaces[rowNum]
        return cell
    }
}

extension ResultsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
