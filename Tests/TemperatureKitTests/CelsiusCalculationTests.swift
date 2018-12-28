//
//  CelsiusCalculationTests.swift
//  TemperatureKitTests
//
//  Created by Michael Wolski on 28.12.18.
//

import XCTest
@testable import TemperatureKit

class CelsiusCalculationTests: XCTestCase {

    func test_fahrenheit2Celcsius() {
        var fahrenheit = Temperature(unit: .fahrenheit, value: 1.0)
        
        let celsius = fahrenheit.toCelsius()
        assert(celsius == -17.2222233)
        
        fahrenheit.value = 5
        let celsiusAdvanced = fahrenheit.toCelsius()
        assert(celsiusAdvanced == -15.0)
    }
    
    func test_kelvin2Celcsius() {
        var kelvin = Temperature(unit: .kelvin, value: 1)
        
        let celsius = kelvin.toCelsius()
        assert(celsius == -272.15)
        
        kelvin.value = 5
        let celsiusAdvanced = kelvin.toCelsius()
        assert(celsiusAdvanced == -268.15)
    }

}
