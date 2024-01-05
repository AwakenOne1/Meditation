//
//  RelaxProtocol.swift
//  Meditation
//
//  Created by Alexey Dubovik on 29.12.23.
//

import Foundation

protocol RelaxModelProtocol {
    var imageName: String { get }
    var time: TimeInterval { get }
    var soundUrl: String { get set }
}
