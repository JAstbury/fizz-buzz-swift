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
        game.play()
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let result = game.play("Fizz")
        XCTAssertEqual(result, true)
    }

    
}
