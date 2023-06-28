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
        
        print(app.tables.cells["Buzz"])
        
        XCTAssertEqual(app.collectionViews/*@START_MENU_TOKEN@*/.cells.buttons["Buzz"]/*[[".cells.buttons[\"Buzz\"]",".buttons[\"Buzz\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.exists, true)
        
    }

    func testBeerDetailsUI() throws {
        // UI tests must launch the application that they test.
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Beer list"].tap()
        app.collectionViews.cells.buttons["Electric India"].tap()
        
        app.collectionViews.cells.buttons["Electric India"].tap()
       
        XCTAssertEqual(app.scrollViews.otherElements.staticTexts["Mussels with a garlic and herb sauce"].exists, true)
        XCTAssertEqual(app.staticTexts["Electric India"].exists, true)
        
    }

    
}
