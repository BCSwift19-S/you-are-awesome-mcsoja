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
    var index = 0
    //Code below executes when the app's first view loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genuis Bar needs help, they call you!",
                        "You brighten my day!",
                        "You are da bomb",
                        "Hey, Fabulous!",
                        "You are tremendous!",
                        "You've got the skills of Jony Ive!",
                        "I can't wait to download your app!"]
//    messageLabel.text = messages[index]
//    index += 1
//    if index == messages.count{
//        index = 0
//    }
        var newIndex = -1
        
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1{
//            messageLabel.text = message2
//        }
//        else if messageLabel.text == message2{
//            messageLabel.text = message3
//        }
//        else{
//            messageLabel.text = message1
//        }
    }

}

