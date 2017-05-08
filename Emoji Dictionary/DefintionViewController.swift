//
//  DefintionViewController.swift
//  Emoji Dictionary
//
//  Created by Kari Newhouse on 5/8/17.
//  Copyright © 2017 Kari Code. All rights reserved.
//

import UIKit

class DefintionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😀" {
        definitionLabel.text = "A smiley face!"
        }
        if emoji == "🐻" {
            definitionLabel.text = "A cute hamster!"
        }
        if emoji == "😂" {
            definitionLabel.text = "Laughing 'til you cry"
        }
        if emoji == "💩" {
            definitionLabel.text = "The Poo emoji"
        }
        if emoji == "😸" {
            definitionLabel.text = "Kitty cat"
        }
        if emoji == "😛" {
            definitionLabel.text = "Sticking out tongue"
        }
        if emoji == "🐋" {
            definitionLabel.text = "A dolphin!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
