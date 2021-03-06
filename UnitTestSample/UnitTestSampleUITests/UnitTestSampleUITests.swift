//
//  UnitTestSampleUITests.swift
//  UnitTestSampleUITests
//
//  Created by Nitin Bhatia on 4/15/21.
//

import XCTest

class UnitTestSampleUITests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLogin(){
        
        //issue UI Testing Failure - Neither element nor any descendant has keyboard focus on secureTextField
        //Solution select simulator go to I/O in menu > Keyboard > Uncheck Connect hardware keyboard or Simulator, make sure 'Hardware -> Keyboard -> Connect hardware keyboard' is off or toggle it once make it off again.
        
        let validUserName = "nitin" //written by me
        let validPassword = "123" //written by me
        
        
        let app = XCUIApplication() //generated by record button
        app.launch() //written by me
        
        let txtUserName =  app.textFields["txtUserName"] //generated by record button but assing it to vairable done by me
        XCTAssertTrue(txtUserName.exists) //written by me
        txtUserName.tap() // written by me
        
        txtUserName.typeText(validUserName) //written by me
        
        let txtPassword =  app.textFields["txtPassword"] //generated by record button but assing it to vairable done by me
        XCTAssertTrue(txtPassword.exists) //written by me
        txtPassword.tap() //written by me
        txtPassword.typeText(validPassword) //written by me
        app/*@START_MENU_TOKEN@*/.staticTexts["Login"]/*[[".buttons[\"Login\"].staticTexts[\"Login\"]",".staticTexts[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap() // generated by record button
        app.alerts["info!"].scrollViews.otherElements.buttons["Cancel"].tap() //generated by record button
        
        
    }
    
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
