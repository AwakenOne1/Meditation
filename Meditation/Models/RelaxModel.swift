//
//  RelaxModel.swift
//  Meditation
//
//  Created by Alexey Dubovik on 29.12.23.
//

import Foundation

struct RelaxModel: RelaxModelProtocol {
    var time: TimeInterval
    var soundUrl: String
    let imageName: String
    init(time: TimeInterval, soundTitle: String, imageName: String) {
        self.time = time
        self.soundUrl = soundTitle
        self.imageName = imageName
    }
}
