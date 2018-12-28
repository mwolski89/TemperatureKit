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
        
        let kelvin = celsius.kelvinValue()
        assert(kelvin == 274.15)
        
        celsius.value = 30
        let kelvinAdvanced = celsius.kelvinValue()
        assert(kelvinAdvanced == 303.15)
    }
    
    func test_fahrenheitToKelvin() {
        var fahrenheit = Temperature(unit: .fahrenheit, value: 1.0)
        
        let kelvin = fahrenheit.kelvinValue()
        assert(kelvin == 255.927765)
        
        fahrenheit.value = 5
        let kelvinAdvanced = fahrenheit.kelvinValue()
        assert(kelvinAdvanced == 258.15)
    }

}
