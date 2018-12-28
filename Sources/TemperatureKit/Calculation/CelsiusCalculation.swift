//
//  CelsiusCalculation.swift
//  TemperatureKit
//
//  Created by Michael Wolski on 28.12.18.
//

import Foundation

extension Temperature {
    
    func celsius2Fahrenheit() -> Float {
        return (self.value * 9/5) + 32
    }
    
    func celsius2Kelvin() -> Float {
        return self.value + 273.15
    }
}
