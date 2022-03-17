//
//  RandomBeerUITests.swift
//  ApiPracticeswiftUIUITests
//
//  Created by Julien Ficerai on 17/03/2022.
//

import XCTest

class RandomBeerTests: XCTestCase {
    
    
    func testRandomBeerUI () throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Random beer"].tap()
        
        sleep(3)
        
        while(app.staticTexts["Avery Brown Dredge"].exists) {
            app.buttons["Drink !"].tap()
        }
        
        XCTAssertEqual(app.staticTexts["Avery Brown Dredge"].exists, false)
        XCTAssertEqual(app.images.count, 1)
    }
}
