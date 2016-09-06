//
//  Game.swift
//  FizzBuzzSwift
//
//  Created by Jess Astbury on 06/09/2016.
//  Copyright © 2016 Jess Astbury. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: String) -> Bool {
        
        let result = brain.check(number: score + 1)
        
        if result == move {
            score+=1
            return true
        } else {
            return false
        }
    }

}
