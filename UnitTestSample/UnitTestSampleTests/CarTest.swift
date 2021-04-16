//
//  CarTest.swift
//  UnitTestSampleTests
//
//  Created by Nitin Bhatia on 4/15/21.
//

import XCTest
@testable import UnitTestSample //application name

class CarTest: XCTestCase {
    
    var ferrari:Car!
    var jeep:Car!
    var honda:Car!
    
    //MARK: to set up initial state for all test methods.
    override func setUp() {
        super.setUp()
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
    }
    
    //MARK: perform clean up after testing of each method
    override func tearDown() {
        super.tearDown()
        ferrari = nil
        jeep = nil
        honda = nil
    }
    
   
    
    func testSportFasterThanJeep() {
        let minutes = 60
        //1 start ferrari
        ferrari.start(minutes: minutes)
        //2 start jeep
        jeep.start(minutes: minutes)
        //Test it
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
    
}
