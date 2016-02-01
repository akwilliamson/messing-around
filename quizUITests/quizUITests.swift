//
//  quizUITests.swift
//  quizUITests
//
//  Created by Aaron Williamson on 1/31/16.
//  Copyright © 2016 Aaron Williamson. All rights reserved.
//

import XCTest

class quizUITests: XCTestCase {
    
    let app = XCUIApplication()
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testQuestionButtonExists() {
        let questionButton = app.buttons["Next Question"]
        XCTAssertTrue(questionButton.exists, "Question button does not exist")
    }
    
    func testAnswerButtonExists() {
        let answerButton = app.buttons["Show Answer"]
        XCTAssertTrue(answerButton.exists, "Answer button does not exist")
    }
    
    func testCheckLabelsExist() {
        let label = app.staticTexts["???"]
        XCTAssertTrue(label.exists, "Labels do not exist")
    }
    
}
