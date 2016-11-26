//
//  Puzzle1ViewController.swift
//  KirjaApp
//
//  Created by Antonija on 26/11/2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import UIKit

class Puzzle1ViewController: UIViewController {
    
    // Targets
    @IBOutlet weak var letterLtarget: UIView!
    @IBOutlet weak var letterEtarget: UIView!
    @IBOutlet weak var letterNtarget: UIView!
    @IBOutlet weak var letterStarget: UIView!
    @IBOutlet weak var letterItarget: UIView!
    @IBOutlet weak var letterL2target: UIView!
    @IBOutlet weak var letterL3target: UIView!
    @IBOutlet weak var letterL4target: UIView!
    @IBOutlet weak var letterL5target: UIView!
    
    
    // Letters
    /* S I L L A L L A */
    @IBOutlet weak var letterL: dragImg!
    @IBOutlet weak var letterE: dragImg!
    @IBOutlet weak var letterN: dragImg!
    @IBOutlet weak var letterS: dragImg!
    @IBOutlet weak var letterI: dragImg!
    @IBOutlet weak var letterL2: dragImg!
    @IBOutlet weak var letterL3: dragImg!
    @IBOutlet weak var letterL4: dragImg!
    @IBOutlet weak var letterL5: dragImg!
    
    
    // Button
    @IBOutlet weak var mapButton: UIButton!
    
    var counter = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notificationName = Notification.Name("onTarget")
        NotificationCenter.default.addObserver(self, selector: #selector(Pulma1VC.onTarget), name: notificationName, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        letterL.dropTargets = [letterLtarget, letterL2target, letterL3target, letterL4target, letterL5target]
        letterE.dropTargets = [letterEtarget]
        letterN.dropTargets = [letterNtarget]
        letterS.dropTargets = [letterStarget]
        letterI.dropTargets = [letterItarget]
        letterL2.dropTargets = [letterLtarget, letterL2target, letterL3target, letterL4target, letterL5target]
        letterL3.dropTargets = [letterLtarget, letterL2target, letterL3target, letterL4target, letterL5target]
        letterL4.dropTargets = [letterLtarget, letterL2target, letterL3target, letterL4target, letterL5target]
        letterL5.dropTargets = [letterLtarget, letterL2target, letterL3target, letterL4target, letterL5target]
    }
    
    func onTarget(notif: AnyObject) {
        counter += 1
        print(counter)
        if counter == 9 {
            mapButton.isHidden = false
        }
    }
    
    @IBAction func goToMap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
