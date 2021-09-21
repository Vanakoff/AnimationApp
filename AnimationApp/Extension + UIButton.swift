//
//  Extension + UIButton.swift
//  AnimationApp
//
//  Created by Andrey Vanakoff on 20/09/2021.
//

import UIKit

extension UIButton {
    
    func pulseate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.3
        pulse.fromValue = 0.9
        pulse.toValue = 1
     //   pulse.autoreverses = true
      //  pulse.repeatCount = 1
     //   pulse.initialVelocity = 0
     //   pulse.damping = 0
        
        layer.add(pulse, forKey: nil)
    }
    
}
