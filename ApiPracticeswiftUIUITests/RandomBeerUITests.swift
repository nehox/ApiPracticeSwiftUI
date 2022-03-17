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
        
        let image1 = app.images.firstMatch
        sleep(3)
        let image2 = app.images.firstMatch
        
        
        XCTAssertNotEqual(image1, image2)
        XCTAssertEqual(app.images.count, 1)
        
    }
}
