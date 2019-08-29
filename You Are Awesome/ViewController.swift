//
//  ViewController.swift
//  You Are Aweome!
//
//  Created by Molly Soja on 8/25/19.
//  Copyright © 2019 Molly Soja. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    
    var awesomePlayer = AVAudioPlayer()
    
    var index = -1
    var imageIndex = -1
    var numberOfImages = 3
    var numberOfSounds = 3
    var soundIndex = -1
    
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
        
        
        var newIndex: Int
        
        //show message
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //show an image
        repeat {
            newIndex = Int.random(in: 1...numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "bc\(imageIndex)")
        
        //play a sound
        var soundName = ""

        repeat {
            newIndex = Int.random(in: 0...numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        
        soundName = "sound\(newIndex)"
        //can we load sound?
        if let sound = NSDataAsset(name: soundName){
            //check if it's sound file
            do {
            try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            }
            catch{ //if not a sound file
                print("ERROR in \(soundName) couldn't be played as a sound")
            }
        } else{
            print("ERROR: data in \(soundName) could not be played")
        }
        
    }
    

    
}

