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
    public func kelvinValue() -> Float  {
        switch self.unit {
        case .celsius:
            return self.celsius2Kelvin()
        case .fahrenheit:
            return self.fahrenheit2Kelvin()
        default:
            fatalError("invalid unit")
        }
    }
    
    /**
     Calculate Fahrenheit degree from Celsius and Kelvin
     
     - Returns: The calculated degree in Fahrenheit.
     */
    public func fahrenheitValue() -> Float  {
        switch self.unit {
        case .celsius:
            return self.celsius2Fahrenheit()
        case .kelvin:
            return self.kelvin2Fahrenheit()
        default:
            fatalError("invalid unit")
        }
    }
    
    
    /**
     Calculate Celsius degree from Fahrenheit and Kelvin
    
     - Returns: The calculated degree in Celsius.
     */
    public func celsiusValue() -> Float {
        switch self.unit {
        case .fahrenheit:
            return self.fahrenheit2Celsius()
        case .kelvin:
            return self.kelvin2Celsius()
        default:
            fatalError("invalid unit")
        }
    }
    
}
