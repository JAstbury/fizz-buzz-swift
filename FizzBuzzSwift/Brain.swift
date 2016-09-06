//
//  Brain.swift
//  FizzBuzzSwift
//
//  Created by Jess Astbury on 06/09/2016.
//  Copyright © 2016 Jess Astbury. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return Move.FizzBuzz
        } else if isDivisibleByThree(number: number) {
            return Move.Fizz
        } else if isDivisibleByFive(number: number) {
            return Move.Buzz
        } else {
            return Move.Number
        }
    }
}

