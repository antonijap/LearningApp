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
        @IBOutlet weak var letterLtarget: UIView!

        
        /* S I L L A L L A */

        
        /* L N S L I E L L L */
        @IBOutlet weak var letterL: dragImg!
    
    

        override func viewDidLoad() {
            super.viewDidLoad()
            
            letterL.dropTargets = [letterLtarget]
            

            let notificationName = Notification.Name("onTarget")
            NotificationCenter.default.addObserver(self, selector: #selector(Pulma1VC.onTarget), name: notificationName, object: nil)
        }
            
        @IBAction func puzzle2Btn(_ sender: Any) {
            
        }
        
        func onTarget(notif: AnyObject) {
            print("On target")
        }
    
        @IBAction func takaisinPressed(_ sender: AnyObject) {
            dismiss(animated: true, completion: nil)
        }
        


}



