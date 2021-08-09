//
//  BullseyeTests2.swift
//  BullseyeTests2
//
//  Created by Ashima T on 16/01/21.
//

import XCTest
@testable import Bullseye
class BullseyeTests2: XCTestCase {

    var game: Game!
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
        
    

    
}
