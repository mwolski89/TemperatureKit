//
//  KelvinCalculation.swift
//  TemperatureKitTests
//
//  Created by Michael Wolski on 28.12.18.
//

import XCTest
@testable import TemperatureKit

class KelvinCalculation: XCTestCase {

    func test_celsiusToKelvin() {
        var celsius = Temperature(unit: .celsius, value: 1.0)
        
        let kelvin = celsius.toKelvin()
        assert(kelvin == 274.15)
        
        celsius.value = 30
        let kelvinAdvanced = celsius.toKelvin()
        assert(kelvinAdvanced == 303.15)
    }
    
    func test_fahrenheitToKelvin() {
        var fahrenheit = Temperature(unit: .fahrenheit, value: 1.0)
        
        let kelvin = fahrenheit.toKelvin()
        assert(kelvin == 255.927765)
        
        fahrenheit.value = 5
        let kelvinAdvanced = fahrenheit.toKelvin()
        assert(kelvinAdvanced == 258.15)
    }

}
