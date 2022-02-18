//
//  RecruTests.swift
//  RecruTests
//
//  Created by Marcin Ratajczak on 18/02/2022.
//

import XCTest
@testable import Recru

class RecruTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIfValidateEmptyString() throws {
        let result = URLValidator.validateAddres(addressString: "")
        XCTAssertEqual(result, .incorrect("Address can not be empty"))
    }
    
    func testIfValidateNilString() throws {
        let result = URLValidator.validateAddres(addressString: nil)
        XCTAssertEqual(result, .incorrect("Address can not be empty"))
    }
    
    func testIfValidateCorrectString() throws {
        let result = URLValidator.validateAddres(addressString: "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210331185031/Java-Programming-Examples.png")
        let url = URL(string: "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210331185031/Java-Programming-Examples.png")
        XCTAssertNotNil(url)
        XCTAssertEqual(result, .correct(url!))
    }
}
