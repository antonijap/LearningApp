//
//  DragImg.swift
//  KirjaApp
//
//  Created by Ronja Haarte on 27.10.2016.
//  Copyright © 2016 Ronja Haarte. All rights reserved.
//

import Foundation
import UIKit

class dragImg: UIImageView {
    
    var originalPosition: CGPoint!
    var dropTargets = [UIView]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        originalPosition = self.center
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.location(in: self.superview)
            self.center = CGPoint(x: position.x, y: position.y)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let position = touch.location(in: self.superview)
            
            if dropTargets.count >= 1 {
                for target in dropTargets {
                    let isOnTarget = target.frame.contains(position)
                    print(isOnTarget)
                    
                    if isOnTarget {
                        NotificationCenter.default.post(Notification(name: Notification.Name(rawValue:"onTarget")))
                        // Make it stay there
                        self.center = target.center
                        break
                    } else {
                        self.center = originalPosition
                    }
                }
            }
        }
    }
}


