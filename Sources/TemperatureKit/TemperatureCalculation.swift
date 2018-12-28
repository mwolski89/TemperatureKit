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
    public func toFahrenheit() -> Float  {
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
    public func toCelsius() -> Float {
        switch self.unit {
        case .fahrenheit:
            return self.fahrenheit2Celsius()
        case .kelvin:
            return self.kelvin2Celsius()
        default:
            fatalError("invalid unit")
        }
    }
    
    fileprivate func celsius2Fahrenheit() -> Float {
        return (self.value * 9/5) + 32
    }
    
    fileprivate func celsius2Kelvin() -> Float {
        return self.value + 273.15
    }
    
    
    fileprivate func fahrenheit2Celsius() -> Float {
        return (self.value - 32) / 1.8
    }
    
    fileprivate func fahrenheit2Kelvin() -> Float {
        return ((self.value - 32) * 5/9) + 273.15
    }
    
    
    fileprivate func kelvin2Celsius() -> Float {
        return self.value - 273.15
    }
    
    fileprivate func kelvin2Fahrenheit() -> Float {
        return (self.value - 273.15) * 9/5 + 32
    }
    
}
