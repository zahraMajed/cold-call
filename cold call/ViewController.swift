//
//  ViewController.swift
//  cold call
//
//  Created by admin on 04/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    let namesArray = ["Zahra","Noor","Sara","Huda","Rawan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
    }

    @IBAction func getNamesRandomlly(_ sender: Any) {
        let index = Int.random(in: 0..<5)
        nameLabel.text = namesArray[index]
    }
    
}

