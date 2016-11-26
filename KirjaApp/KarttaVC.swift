//
//  KarttaVC.swift
//  KirjaApp
//
//  Created by Ronja Haarte on 6.10.2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation
class KarttaVC: UIViewController {
    
    var sfxOikein: AVAudioPlayer!
    var sfxVaarin: AVAudioPlayer!
    var sfxTakaisin: AVAudioPlayer!
    var sfxNappula: AVAudioPlayer!


    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            
            try sfxOikein = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: Bundle.main.path(forResource: "oikein", ofType: "wav")!) as URL)
            try sfxVaarin = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: Bundle.main.path(forResource: "vaarin", ofType: "wav")!) as URL)
            try sfxTakaisin = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: Bundle.main.path(forResource: "takaisin", ofType: "wav")!) as URL)
            try sfxNappula = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: Bundle.main.path(forResource: "nappula", ofType: "wav")!) as URL)
            
            
            sfxOikein.prepareToPlay()
            sfxVaarin.prepareToPlay()
            sfxTakaisin.prepareToPlay()
            sfxNappula.prepareToPlay()
            
        } catch let err as NSError {
            print(err.debugDescription)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func alkuunPressed(_ sender: AnyObject) {
        sfxTakaisin.play()
        dismiss(animated: true, completion: nil)
    }


}
