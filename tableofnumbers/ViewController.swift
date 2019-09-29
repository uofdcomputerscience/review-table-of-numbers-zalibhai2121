//
//  ViewController.swift
//  tableofnumbers
//
//  Created by Russell Mirabelli on 9/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let numbers = [1,2,3,4,5,6,7,8,9,1,23,4,5,6,7,8,9,0,2,4,6,7,0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let number = numbers[indexPath.item]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell")!
        if let numberCell = cell as? NumberCell {
            numberCell.numberLabel.text = "\(number)"
        }
        return cell
    }
    
    
}
