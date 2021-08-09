//
//  Game.swift
//  Bullseye
//
//  Created by Ashima T on 16/01/21.
//

import Foundation
struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int{
        let difference = abs(self.target - sliderValue)
        
        let awardedPoints = 100 - difference
        return awardedPoints
    }
    
}
