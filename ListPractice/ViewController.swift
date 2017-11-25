//
//  ViewController.swift
//  ListPractice
//
//  Created by Heather Cates on 11/24/17.
//  Copyright © 2017 Heather Cates. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {//needs data scource and delegate to populate rows

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
    }
    //get number of rows needed
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    //what to populate rows with
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row].emojiImg
        return cell
    }
    //for when someone clicks it will segue to detail page. sends this info to the detailed view
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //unhighlight the row when back
        tableView.deselectRow(at: indexPath, animated: true)
        //get the emoji we want and send it over to detail view
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier:"moveSegue", sender: emoji)
    }
    //segue send out
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! DetailViewController
        detailVC.emoji = sender as! Emoji
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //make emoji array 
    func makeEmojiArray() -> [Emoji]{
        let em1 = Emoji()
        em1.emojiImg = "🐭"
        em1.emojiInfo = "mouse"
        
        let em2 = Emoji()
        em2.emojiImg = "🐸"
        em2.emojiInfo = "frog"
        
        let em3 = Emoji()
        em3.emojiImg = "🐵"
        em3.emojiInfo = "monkey"
        
        return [em1, em2, em3]
    
    }


}

