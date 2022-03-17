//
//  ApiPracticeswiftUIUITests.swift
//  ApiPracticeswiftUIUITests
//
//  Created by Julien Ficerai on 16/03/2022.
//

import XCTest

class ApiPracticeswiftUIUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBeerHomeUI() throws {
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertEqual(app.buttons["Beer list"].exists, true)
        XCTAssertEqual(app.buttons["Random beer"].exists, true)
        
    }
    
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
       
        
        XCTAssertEqual(app.images.count, 1)
        XCTAssertEqual(app.scrollViews.otherElements.staticTexts["Mussels with a garlic and herb sauce"].exists, true)
        XCTAssertEqual(app.staticTexts["Electric India"].exists, true)
        
    }
}
