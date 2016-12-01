//
//  KarttaVC.swift
//  KirjaApp
//
//  Created by Ronja Haarte on 6.10.2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import UIKit

class KarttaViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var levelOne: UIButton!
    @IBOutlet weak var levelTwo: UIButton!
    @IBOutlet weak var levelThree: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Configure Kartta
        checkprogress(progress: DefaultsManager.getProgress())
    }
    
    func checkprogress(progress: Int) {
        // Get Progress
        switch progress {
        case 0:
            levelOne.alpha = 1 // User Interaction is always enabled on level one
            levelTwo.alpha = 0.5
            levelTwo.isUserInteractionEnabled = false
            levelThree.alpha = 0.5
            levelThree.isUserInteractionEnabled = false
        case 1:
            levelOne.alpha = 1
            levelTwo.alpha = 1
            levelTwo.isUserInteractionEnabled = true
            levelThree.alpha = 0.5
            levelThree.isUserInteractionEnabled = false
        case 2:
            levelOne.alpha = 1
            levelTwo.alpha = 1
            levelTwo.isUserInteractionEnabled = true
            levelThree.alpha = 1
            levelThree.isUserInteractionEnabled = true
        default:
            levelOne.alpha = 1
            levelTwo.alpha = 1
            levelThree.alpha = 1
        }
    }
    
    @IBAction func alkuunPressed(_ sender: AnyObject) {
        AudioManager.sharedInstance.play(.takaisin)
        dismiss(animated: true, completion: nil)
    }
}
