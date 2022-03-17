//
//  HomeUITests.swift
//  ApiPracticeswiftUIUITests
//
//  Created by Julien Ficerai on 17/03/2022.
//

import Foundation
import XCTest


class HomeUITests: XCTestCase {
    
    func testBeerHomeUI() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertEqual(app.buttons["Beer list"].exists, true)
        XCTAssertEqual(app.buttons["Random beer"].exists, true)
        
    }

}
