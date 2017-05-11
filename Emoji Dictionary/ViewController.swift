//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Kari Newhouse on 5/4/17.
//  Copyright © 2017 Kari Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolTableView: UITableView!
    
    var emojis : [Emoji] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        coolTableView.dataSource = self
        coolTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefintionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😸"
        emoji2.birthYear = 2008
        emoji2.category = "Animal"
        emoji2.definition = "A kitty face"
    
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2010
        emoji3.category = "Thing"
        emoji3.definition = "The poo emoji"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😂"
        emoji4.birthYear = 2016
        emoji4.category = "Smiley"
        emoji4.definition = "Laugh til you cry smiley"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😛"
        emoji5.birthYear = 2013
        emoji5.category = "Smiley"
        emoji5.definition = "Stick out tongue smiley"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐻"
        emoji6.birthYear = 2012
        emoji6.category = "Animal"
        emoji6.definition = "A cute hamster"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🐋"
        emoji7.birthYear = 2006
        emoji7.category = "Animal"
        emoji7.definition = "A dolphin"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7,]
    }
    
}

