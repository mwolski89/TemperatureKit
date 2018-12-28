//
//  KelvinCalculation.swift
//  TemperatureKit
//
//  Created by Michael Wolski on 28.12.18.
//

import Foundation

extension Temperature {
    
    func kelvin2Celsius() -> Float {
        return self.value - 273.15
    }
    
    func kelvin2Fahrenheit() -> Float {
        return (self.value - 273.15) * 9/5 + 32
    }
}
