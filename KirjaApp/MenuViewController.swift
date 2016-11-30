//
//  ViewController.swift
//  KirjaApp
//
//  Created by Ronja Haarte on 6.10.2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    // Outlets
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func aloitaPressed(_ sender: Any) {
        AudioManager.sharedInstance.play(.glock)
        performSegue(withIdentifier: "KarttaSegue", sender: self)
    }
    
    @IBAction func ohjeetPressed(_ sender: Any) {
        AudioManager.sharedInstance.play(.glock)
        performSegue(withIdentifier: "InfoSegue", sender: self)
    }
    
}

