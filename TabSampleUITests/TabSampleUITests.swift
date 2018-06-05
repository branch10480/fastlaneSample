//
//  TabSampleUITests.swift
//  TabSampleUITests
//
//  Created by Toshiharu Imaeda on 2018/06/05.
//  Copyright © 2018 Toshiharu Imaeda. All rights reserved.
//

import XCTest

class TabSampleUITests: XCTestCase {
        
    override func setUp() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let tabBarsQuery = XCUIApplication().tabBars
        tabBarsQuery.buttons["Item 1"].tap()
        snapshot("first view")
        tabBarsQuery.buttons["Item 2"].tap()
        snapshot("second view")
        
    }
    
}
