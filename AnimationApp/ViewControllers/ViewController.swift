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
    @IBOutlet var curveValueLabel: UILabel!
    @IBOutlet var durationValueLabel: UILabel!
    @IBOutlet var forceValueLabel: UILabel!

    //MARK: Actions
    @IBAction func springRunButton(_ sender: SpringButton) {
        springMotoImageView.animation = DataManager.shared.presets.randomElement()!
        springMotoImageView.curve = DataManager.shared.curves.randomElement()!
        springMotoImageView.duration = CGFloat(DataManager.shared.durations.randomElement()!)
        springMotoImageView.force = CGFloat(DataManager.shared.forces.randomElement()!)
        springMotoImageView.animate()
        
        presetValueLabel.text = springMotoImageView.animation
        curveValueLabel.text = springMotoImageView.curve
        durationValueLabel.text = String("\(springMotoImageView.duration)")
        forceValueLabel.text = String("\(springMotoImageView.force)")
        
        sender.setTitle(springMotoImageView.animation, for: .normal)
        
        sender.animation = "zoomIn"
        sender.force = 0.1
        sender.animate()
    }
}
