//
//  DataManager.swift
//  AnimationApp
//
//  Created by Andrey Vanakoff on 22/09/2021.
//

class DataManager {
    static let shared = DataManager()
    
    let presets = ["shake", "pop", "swing", "wobble",
                   "flipX", "flipY", "zoomIn",
                   "zoomOut", "flash", "fall"
    ]
    let curves = ["spring",
                  "linear",
                  "easeIn",
                  "easeOut",
                  "easeInOut"
    ]
    let forces = [0, 0.1, 0.3, 0.5, 0.7, 1]
    let durations = [0, 0.1, 0.3, 0.5, 0.7, 1]
    
    private init () {}
}
