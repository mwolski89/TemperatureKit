//
//  FahrenheitCalculation.swift
//  TemperatureKitTests
//
//  Created by Michael Wolski on 28.12.18.
//

import XCTest
@testable import TemperatureKit

class FahrenheitCalculation: XCTestCase {

    func test_celsiusToFahrenheit() {
        var celsius = Temperature(unit: .celsius, value: 1.0)
        
        let fahrenheit = celsius.toFahrenheit()
        assert(fahrenheit == 33.8)
        
        celsius.value = 30.0
        let fahrenheitAdvanced = celsius.toFahrenheit()
        assert(fahrenheitAdvanced == 86.0)
    }
    
    func test_kelvinToFahrenheit() {
        var kelvin = Temperature(unit: .kelvin, value: 1.0)
        
        let fahrenheit = kelvin.toFahrenheit()
        assert(fahrenheit == -457.869965)
        
        kelvin.value = 5
        let fahrenheitAdvanced = kelvin.toFahrenheit()
        assert(fahrenheitAdvanced == -450.669983)
    }

}
