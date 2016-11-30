//
//  InfoVC.swift
//  KirjaApp
//
//  Created by Ronja Haarte on 6.10.2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import UIKit
import AVFoundation

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goBackPressed(_ sender: Any) {
        AudioManager.sharedInstance.play(.takaisin)
        dismiss(animated: true, completion: nil)
    }
}
