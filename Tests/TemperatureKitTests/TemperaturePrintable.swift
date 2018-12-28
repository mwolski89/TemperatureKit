//
//  TemperaturePrintable.swift
//  TemperatureKitTests
//
//  Created by Michael Wolski on 28.12.18.
//

import XCTest
@testable import TemperatureKit

class TemperaturePrintable: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_celsiusPrintable() {
        let celsius = Temperature(unit: .celsius, value: 23.0)
        assert("23.0 °C" == (celsius.description))
    }

}

extension TemperaturePrintable {
    static var allTests = [
        ("test_celsiusPrintable", test_celsiusPrintable),
    ]
}
