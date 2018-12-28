//
//  FahrenheitCalculation.swift
//  TemperatureKit
//
//  Created by Michael Wolski on 28.12.18.
//

import Foundation

extension Temperature {
    
    func fahrenheit2Celsius() -> Float {
        return (self.value - 32) / 1.8
    }
    
    func fahrenheit2Kelvin() -> Float {
        return ((self.value - 32) * 5/9) + 273.15
    }
}
