//
//  LupusInAulaTests.swift
//  LupusInAulaTests
//
//  Created by Riccardo Scambia on 11/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import XCTest
@testable import LupusInAula

struct MockPlayer: Playing {
    
    let nickname: String
    var roleType: Int?
    var isAlive: Bool
    let isHost: Bool?
    var vote: String?
    
    static func fakePlayer() -> MockPlayer {
        
        return MockPlayer(nickname: "randomUser ", roleType: nil, isAlive: true, isHost: false, vote: nil)
        
    }
}

class LupusInAulaTests: XCTestCase {

    func testAssignRoleLogic_arrayOfPlayersIsEmpty_shouldReturnNil() {
        
<<<<<<< HEAD
        let gameManager = GameManager.init(withPlayers: [])
        
        let result = gameManager.assignPlayersRole()
        
        XCTAssertTrue(result == nil)
=======
        let sut = GameManager(withPlayers: [Playing]())
        let result = sut.assignPlayersRole()
        
        guard result == nil else {
            XCTFail()
            return
        }
>>>>>>> master
        
    }
    
    func testAssignRoleLogic_arrayOfPlayersIsLessThanMinimum_shouldReturnNil() {
        
<<<<<<< HEAD
        let player = Player(nickname: "test", roleType: nil, isAlive: true, isHost: nil, vote: nil)
        
        let gameManager = GameManager.init(withPlayers: [player])
        
        let result = gameManager.assignPlayersRole()
        XCTAssertTrue(result == nil)
=======
        let sut = GameManager(withPlayers: [Playing]())
        let result = sut.assignPlayersRole()
        
        guard result == nil else {
            XCTFail()
            return
        }
>>>>>>> master
        
    }
    
//    func testAssignRoleLogic_arrayOfPlayersWithOnePlayer_shouldReturnEmptyArray() {
//
//        let player = Player(nickname: "test", roleType: .cheater, isAlive: true, isHost: nil, vote: nil)
//
//        let result = assignPlayersRole(withPlayers: [player])
//        XCTAssertTrue(result.isEmpty)
//
//    }
//

}
