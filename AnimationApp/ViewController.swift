//
//  ViewController.swift
//  AnimationApp
//
//  Created by Andrey Vanakoff on 20/09/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var motoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func runButton(_ sender: UIButton) {
        sender.pulseate()
        
        UIView.animateKeyframes(
            withDuration: 0.3,
            delay: 0,
            options: [.autoreverse, .repeat]) {
            self.motoImageView.frame.origin.x += 30
        }
    }
    
}

