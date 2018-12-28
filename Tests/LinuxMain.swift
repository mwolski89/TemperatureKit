import XCTest

import TemperatureKitTests

// TODO: fix this !?!
var tests = [XCTestCaseEntry]()
tests += TemperaturePrintable.allTests()
tests += KelvinCalculation.allTests()
tests += FahrenheitCalculation.allTests()
tests += CelsiusCalculationTests.allTests()
XCTMain(tests)