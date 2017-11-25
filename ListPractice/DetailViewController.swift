//
//  DetailViewController.swift
//  ListPractice
//
//  Created by Heather Cates on 11/24/17.
//  Copyright © 2017 Heather Cates. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var emoji = Emoji()
    @IBOutlet weak var emojiImg: UILabel!
    @IBOutlet weak var emojiInfo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        emojiImg.text = emoji.emojiImg
        emojiInfo.text = emoji.emojiInfo
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
