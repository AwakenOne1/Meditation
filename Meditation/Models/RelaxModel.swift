//
//  RelaxModel.swift
//  Meditation
//
//  Created by Alexey Dubovik on 29.12.23.
//

import Foundation

class RelaxModel: RelaxModelProtocol {
    var time: TimeInterval
    var soundUrl: String
    var imageName: String
    
    init(time: TimeInterval, soundTitle: String, imageName: String) {
        self.time = time
        self.soundUrl = soundTitle
        self.imageName = imageName
    }
}
