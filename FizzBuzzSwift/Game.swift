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
    
    override init() {
        score = 0
        super.init()
    }
    
    func play() {
        score ++
    }

}
