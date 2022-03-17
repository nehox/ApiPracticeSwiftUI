//
//  ApiPracticeswiftUITests.swift
//  ApiPracticeswiftUITests
//
//  Created by Julien Ficerai on 16/03/2022.
//

import XCTest
import Foundation
@testable import ApiPracticeswiftUI

class ApiPracticeswiftUITests: XCTestCase {

    var beer: Beer?
    
    override func setUp() {
        super.setUp()
       do {
            let testBundle = Bundle(for: type(of: self))
            if let url = testBundle.url(forResource: "beer", withExtension: "json") {
                let jsonData = try Data(contentsOf: url)
                self.beer = try JSONDecoder().decode(Beer.self, from: jsonData)
            }
        } catch {
            print("oups")
        }
    }
    
    func testId() {
        XCTAssertEqual(beer?.id, 1)
    }
    
    func testName() {
        XCTAssertEqual(beer?.name, "Buzz")
    }
    
    func testTagline() {
        XCTAssertEqual(beer?.tagline, "A Real Bitter Experience.")
    }
    
    func testFirst_brewed() {
        XCTAssertEqual(beer?.first_brewed, "09/2007")
    }
    
    func testImage_url(){
        XCTAssertEqual(beer?.image_url, "https://images.punkapi.com/v2/keg.png")
    }
    
    func testDescription(){
        XCTAssertEqual(beer?.description, "A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.")
    }
    
    func testAbv(){
        XCTAssertEqual(beer?.abv, 4.5)
    }
    
    func testIbu(){
        XCTAssertEqual(beer?.ibu, 60)
    }
    
    func testEbc(){
        XCTAssertEqual(beer?.ebc, 20)
    }
    
    func testSrm(){
        XCTAssertEqual(beer?.srm, 10)
    }
    
    func testPh(){
        XCTAssertEqual(beer?.ph, 4.4)
    }
    
    func testAttenuation_level(){
        XCTAssertEqual(beer?.attenuation_level, 75)
    }
    
    func testFood_pairing(){
        XCTAssertEqual(beer?.food_pairing,[
            "Spicy chicken tikka masala",
            "Grilled chicken quesadilla",
            "Caramel toffee cake"
        ])
    }
}
