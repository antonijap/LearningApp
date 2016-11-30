//
//  AudioManager.swift
//  KirjaApp
//
//  Created by Antonija on 30/11/2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import Foundation
import AVFoundation

enum Sound: String {
    case oikein
    case glock
    case vaarin
    case takaisin
    case nappula
}

class AudioManager {
    static let sharedInstance = AudioManager()
    private init() {}
    
    var player: AVAudioPlayer!
    
    /// Playing Audio File
    func play(_ audio: Sound) {
        let url = Bundle.main.url(forResource: audio.rawValue, withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
