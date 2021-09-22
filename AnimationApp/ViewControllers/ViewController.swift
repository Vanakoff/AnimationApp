//
//  ViewController.swift
//  AnimationApp
//
//  Created by Andrey Vanakoff on 20/09/2021.
//

import Spring


class ViewController: UIViewController {
        

    //MARK: Outlets
    @IBOutlet var springMotoImageView: SpringImageView!
    
    
    @IBOutlet var presetValueLabel: UILabel!
    @IBOutlet var curveValue: UILabel!
    @IBOutlet var durationValue: UILabel!
    @IBOutlet var forceValue: UILabel!
    

    //MARK: Actions
    @IBAction func springRunButton(_ sender: SpringButton) {
        springMotoImageView.animation = DataManager.shared.presets.randomElement()!
        springMotoImageView.curve = DataManager.shared.curves.randomElement()!
        springMotoImageView.duration = CGFloat(DataManager.shared.durations.randomElement()!)
        springMotoImageView.force = CGFloat(DataManager.shared.forces.randomElement()!)
        springMotoImageView.animate()
        
        presetValueLabel.text = springMotoImageView.animation
        curveValue.text = springMotoImageView.curve
        durationValue.text = String("\(springMotoImageView.duration)")
        forceValue.text = String("\(springMotoImageView.force)")
        
        sender.setTitle(springMotoImageView.animation, for: .normal)
        
        sender.animation = "zoomIn"
        sender.force = 0.1
        sender.animate()
    }
    
}

