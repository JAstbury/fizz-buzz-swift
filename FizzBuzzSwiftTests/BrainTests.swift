//
//  BrainTests.swift
//  FizzBuzzSwift
//
//  Created by Jess Astbury on 06/09/2016.
//  Copyright © 2016 Jess Astbury. All rights reserved.
//

import XCTest
@testable import FizzBuzzSwift

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 7)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(number: 7)
        XCTAssertEqual(result, false)
    }
    
    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleByFive(number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleByFive(number: 7)
        XCTAssertEqual(result, false)
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, "Fizz")
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, "Buzz")
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, "FizzBuzz")
    }
    
    func testSayNumber() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, "1")
    }
    
}
