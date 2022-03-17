//
//  BeerListUITests.swift
//  ApiPracticeswiftUIUITests
//
//  Created by Julien Ficerai on 17/03/2022.
//

import Foundation

import XCTest

class BeerListUITests: XCTestCase {

    
    func testBeerListUI() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Beer list"].tap()
        
        XCTAssertEqual(app.tables.cells["Electric India"].exists, true)
        
    }

    func testBeerDetailsUI() throws {
        // UI tests must launch the application that they test.
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Beer list"].tap()
        app.tables.cells["Electric India"].children(matching: .other).element(boundBy: 0).children(matching: .other).element.tap()
       
        
        XCTAssertEqual(app.scrollViews.otherElements.staticTexts["Mussels with a garlic and herb sauce"].exists, true)
        XCTAssertEqual(app.staticTexts["Electric India"].exists, true)
        
    }

    
}
