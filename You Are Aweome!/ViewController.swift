//
//  ViewController.swift
//  You Are Aweome!
//
//  Created by Molly Soja on 8/25/19.
//  Copyright © 2019 Molly Soja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!

    //Code below executes when the app's first view loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
        messageLabel.textColor = UIColor.red
    }
    
    @IBAction func showAnotherMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Great!"
        messageLabel.textColor = UIColor.blue
    }
    
    

}

