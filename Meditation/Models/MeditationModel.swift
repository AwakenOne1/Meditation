//
//  MeditationProtocol.swift
//  Meditation
//
//  Created by Alexey Dubovik on 11.01.24.
//

import Foundation

struct MeditationModel: ActivityProtocol {
    var imageName: String
    var time: TimeInterval
    
    init(imageName: String, time: TimeInterval) {
        self.imageName = imageName
        self.time = time
    }
}

