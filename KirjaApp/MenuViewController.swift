//
//  ViewController.swift
//  KirjaApp
//
//  Created by Ronja Haarte on 6.10.2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let audioManager = AudioManager()
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func aloitaBtn(_ sender: Any) {
        AudioManager.sharedInstance.play(.glock)
    }
    
    @IBAction func ohjeetBtn(_ sender: Any) {
        AudioManager.sharedInstance.play(.oikein)
    }


}

