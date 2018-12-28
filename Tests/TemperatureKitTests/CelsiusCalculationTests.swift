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
        
        let celsius = fahrenheit.celsiusValue()
        assert(celsius == -17.2222233)
        
        fahrenheit.value = 5
        let celsiusAdvanced = fahrenheit.celsiusValue()
        assert(celsiusAdvanced == -15.0)
    }
    
    func test_kelvin2Celcsius() {
        var kelvin = Temperature(unit: .kelvin, value: 1)
        
        let celsius = kelvin.celsiusValue()
        assert(celsius == -272.15)
        
        kelvin.value = 5
        let celsiusAdvanced = kelvin.celsiusValue()
        assert(celsiusAdvanced == -268.15)
    }

}

extension CelsiusCalculationTests {
    static var allTests = [
        ("test_fahrenheit2Celcsius", test_fahrenheit2Celcsius),
        ("test_kelvin2Celcsius", test_kelvin2Celcsius),
    ]
}
