//
//  BreathingModel.swift
//  Meditation
//
//  Created by Alexey Dubovik on 11.01.24.
//

import Foundation

struct BreathingModel: ActivityProtocol {
    var imageName: String
    var time: TimeInterval
    let interval: TimeInterval = 5
   
    init(imageName: String, time: TimeInterval) {
        self.imageName = imageName
        self.time = time
    }
}
