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
        game.play(move: Move.Number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(move: Move.Fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let response  = game.play(move: Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightBuzz() {
        game.score = 4
        let response  = game.play(move: Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrongBuzz() {
        game.score = 6
        let response = game.play(move: Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightFB() {
        game.score = 14
        let response = game.play(move: Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrongFB() {
        game.score = 16
        let response = game.play(move: Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveIsRightNum() {
        game.score = 3
        let response = game.play(move: Move.Number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    
    func testIfMoveIsWrongNum() {
        game.score = 5
        let response = game.play(move: Move.Number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: Move.Number)
        let result = response.right
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: Move.Number)
        let result = response.right
        XCTAssertNotNil(response.score)
    }

    
}
