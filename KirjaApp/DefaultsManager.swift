//
//  UserDefaultsManager.swift
//  KirjaApp
//
//  Created by Antonija on 30/11/2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import Foundation

class DefaultsManager {
    
    /// Save Progress
    class func saveProgress(_ value: Int) {
        UserDefaults.standard.setValue(value, forKey: "save")
    }
    
    /// Get Progress
    class func getProgress() -> Int {
        return UserDefaults.standard.value(forKey: "save") as? Int ?? 0
    }
}
