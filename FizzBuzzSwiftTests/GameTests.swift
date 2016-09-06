//
//  GameTests.swift
//  FizzBuzzSwift
//
//  Created by Jess Astbury on 06/09/2016.
//  Copyright © 2016 Jess Astbury. All rights reserved.
//

import XCTest
@testable import FizzBuzzSwift

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()

    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testGameStartsAtZerio() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightBuzz() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrongBuzz() {
        game.score = 6
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightFB() {
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrongFB() {
        game.score = 16
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightNum() {
        game.score = 3
        let result = game.play(move: "4")
        XCTAssertEqual(result, true)
    }
    
    
    func testIfMoveIsWrongNum() {
        game.score = 5
        let result = game.play(move: "5")
        XCTAssertEqual(result, false)
    }

    
}
