//
//  TemperatureCalculation.swift
//  TemperatureKit
//
//  Created by Michael Wolski on 28.12.18.
//

import Foundation

extension Temperature {
    /**
     Calculate Kelvin degree from Celsius and Fahrenheit
     
     - Returns: The calculated degree in Kelvin.
     */
    public func toKelvin() -> Float  {
        switch self.unit {
        case .celsius:
            return self.value + 273.15
        case .fahrenheit:
            return ((self.value - 32) * 5/9) + 273.15
        default:
            return 0
        }
    }
    
    /**
     Calculate Fahrenheit degree from Celsius and Kelvin
     
     - Returns: The calculated degree in Fahrenheit.
     */
    public func toFahrenheit() -> Float  {
        switch self.unit {
        case .celsius:
            return (self.value * 9/5) + 32
        case .kelvin:
            return (self.value - 273.15) * 9/5 + 32
        default:
            return 0
        }
    }
    
    
    /**
     Calculate Celsius degree from Fahrenheit and Kelvin
    
     - Returns: The calculated degree in Celsius.
     */
    public func toCelsius() -> Float {
        switch self.unit {
        case .fahrenheit:
            return (self.value - 32) / 1.8
        case .kelvin:
            return self.value - 273.15
        default:
            return 0
        }
    }
}
