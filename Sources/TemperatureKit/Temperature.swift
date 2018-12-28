//
//  Temperature.swift
//  TemperatureKit
//
//  Created by Michael Wolski on 28.12.18.
//

import Foundation

struct Temperature: CustomStringConvertible {
    var unit: TemperatureUnit
    var value: Float
    
    var description: String {
        return "\(value) \(unit.rawValue)"
    }
}
