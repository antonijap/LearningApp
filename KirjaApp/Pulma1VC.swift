//
//  Pulma1VC.swift
//  KirjaApp
//
//  Created by Ronja Haarte on 10.10.2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import UIKit
import AVFoundation

    
    class Pulma1VC: UIViewController {
        
        @IBOutlet weak var puzzle2BtnOutlet: UIButton!
        
        
        /* O L E N */
        @IBOutlet weak var letterOTarget: UIView!
        @IBOutlet weak var letterLTarget: UIView!
        @IBOutlet weak var letterETarget: UIView!
        @IBOutlet weak var letterNTarget: UIView!
        
        /* S I L L A L L A */
        @IBOutlet weak var letterSTarget: UIView!
        @IBOutlet weak var letterITarget: UIView!
        @IBOutlet weak var letterL1Target: UIView!
        @IBOutlet weak var letterL2Target: UIView!
        @IBOutlet weak var letterA1Target: UIView!
        @IBOutlet weak var letterL3Target: UIView!
        @IBOutlet weak var letterL4Target: UIView!
        @IBOutlet weak var letterA2Target: UIView!
        
        /* L N S L I E L L L */
        @IBOutlet weak var letterL: dragImg!
        @IBOutlet weak var letterN: dragImg!
        @IBOutlet weak var letterS: dragImg!
        @IBOutlet weak var letterL2: dragImg!
        @IBOutlet weak var letterI: dragImg!
        @IBOutlet weak var letterE: dragImg!
        @IBOutlet weak var letterL3: dragImg!
        @IBOutlet weak var letterL4: dragImg!
        @IBOutlet weak var letterL5: dragImg!
        
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
 
           let notificationName = Notification.Name("onTarget")
            NotificationCenter.default.addObserver(self, selector: #selector(Pulma1VC.onTarget), name: notificationName, object: nil)
        }
            
        @IBAction func puzzle2Btn(_ sender: Any) {
            
        }
        
        func onTarget(notif: AnyObject) {
            
        }
        
    
        

    @IBAction func takaisinPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
        


}



