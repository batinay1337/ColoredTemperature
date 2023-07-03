import XCTest
import SwiftUI
@testable import ColoredTemperature

final class ColoredTemperatureTests: XCTestCase {
    func testGetTemperatureColor() {
        let coloredTemperature = ColoredTemperature()
        
        // Test various temperature values
        XCTAssertEqual(coloredTemperature.getTemperatureColor(-20), Color(red: 156/255, green: 47/255, blue: 174/255))
        XCTAssertEqual(coloredTemperature.getTemperatureColor(5), Color(red: 29/255, green: 170/255, blue: 241/255))
        XCTAssertEqual(coloredTemperature.getTemperatureColor(25), Color(red: 140/255, green: 192/255, blue: 81/255))
        XCTAssertEqual(coloredTemperature.getTemperatureColor(40), Color(red: 251/255, green: 88/255, blue: 47/255))
        
        // Test boundary conditions
        XCTAssertEqual(coloredTemperature.getTemperatureColor(-17.8), Color(red: 102/255, green: 63/255, blue: 180/255))
        XCTAssertEqual(coloredTemperature.getTemperatureColor(10), Color(red: 21/255, green: 149/255, blue: 136/255))
        XCTAssertEqual(coloredTemperature.getTemperatureColor(37.8), Color(red: 253/255, green: 151/255, blue: 40/255))
        
        // Test default case
        XCTAssertEqual(coloredTemperature.getTemperatureColor(50), Color.primary)
    }
}
