//
//  Background.swift
//  lab_4
//
//  Created by DL on 24/03/2023.
//

import UIKit

protocol BackgroundProtocol {
    var backgroundColor: UIColor { get }
}

class Background {
    static var currentBackground:BackgroundProtocol = WhiteBackground()
}
