//
//  DetailViewController.swift
//  ListPractice
//
//  Created by Heather Cates on 11/24/17.
//  Copyright © 2017 Heather Cates. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var emoji = "no emoji"
    @IBOutlet weak var emojiImg: UILabel!
    @IBOutlet weak var emojiInfo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(emoji)
        // Do any additional setup after loading the view.
        emojiImg.text = emoji
        if (emoji == "🐭"){
            emojiInfo.text = "mouse"
        }
        else if (emoji == "🐸"){
            emojiInfo.text = "frog"
        }
        else if (emoji == "🐵"){
            emojiInfo.text = "monkey"
        }
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
