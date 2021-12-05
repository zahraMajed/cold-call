//
//  ViewController.swift
//  cold call
//
//  Created by admin on 04/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let namesArray = ["Zahra","Noor","Sara","Huda","Rawan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numLabel.isHidden = true
    }

    @IBAction func getNamesRandomlly(_ sender: Any) {
        let index = Int.random(in: 0..<5)
        nameLabel.text = namesArray[index]
        let num = Int.random(in: 1...5)
        switch num {
        case 1...2 :
            numLabel.textColor = UIColor.red
        case 3...4:
            numLabel.textColor = UIColor.orange
        default:
            numLabel.textColor = UIColor.green
        }
        numLabel.isHidden = false
        numLabel.text = String(num)
    }
    
}

