import XCTest
@testable import TemperatureKit

final class TemperatureKitTests: XCTestCase {
    
    
    func testCelsiusToFahrenheit() throws {
        var celsius = Temperature(unit: .celsius, value: 1.0)
        
        let fahrenheit = celsius.toFahrenheit()
        assert(fahrenheit == 33.8)
        
        celsius.value = 30.0
        let fahrenheitAdvanced = celsius.toFahrenheit()
        assert(fahrenheitAdvanced == 86.0)
    }
    
    func testKelvinToFahrenheit() throws {
        var kelvin = Temperature(unit: .kelvin, value: 1.0)

        let fahrenheit = kelvin.toFahrenheit()
        assert(fahrenheit == -457.869965)
        
        kelvin.value = 5
        let fahrenheitAdvanced = kelvin.toFahrenheit()
        assert(fahrenheitAdvanced == -450.669983)
    }
    
    
    func testFahrenheitToCelcsius() throws {
        var fahrenheit = Temperature(unit: .fahrenheit, value: 1.0)
        
        let celsius = fahrenheit.toCelsius()
        assert(celsius == -17.2222233)
        
        fahrenheit.value = 5
        let celsiusAdvanced = fahrenheit.toCelsius()
        assert(celsiusAdvanced == -15.0)
    }
    
    func testKelvinToCelcsius() throws {
        var kelvin = Temperature(unit: .kelvin, value: 1)
        
        let celsius = kelvin.toCelsius()
        assert(celsius == -272.15)
        
        kelvin.value = 5
        let celsiusAdvanced = kelvin.toCelsius()
        assert(celsiusAdvanced == -268.15)
    }
    
    func testCelsiusToKelvin() throws {
        var celsius = Temperature(unit: .celsius, value: 1.0)
        
        let kelvin = celsius.toKelvin()
        assert(kelvin == 274.15)

        celsius.value = 30
        let kelvinAdvanced = celsius.toKelvin()
        assert(kelvinAdvanced == 303.15)
    }

    func testFahrenheitToKelvin() throws {
        var fahrenheit = Temperature(unit: .fahrenheit, value: 1.0)
        
        let kelvin = fahrenheit.toKelvin()
        assert(kelvin == 255.927765)
        
        fahrenheit.value = 5
        let kelvinAdvanced = fahrenheit.toKelvin()
        assert(kelvinAdvanced == 258.15)
    }

    
}
