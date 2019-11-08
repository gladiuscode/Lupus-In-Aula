//
//  LupusInAulaTests.swift
//  LupusInAulaTests
//
//  Created by Riccardo Scambia on 11/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import XCTest
@testable import LupusInAula

class LupusInAulaTests: XCTestCase {

    func testAssignRoleLogic_arrayOfPlayersIsEmpty_shouldReturnEmptyArray() {
        
        let gameManager = GameManager.init(withPlayers: [])
        
        let result = gameManager.assignPlayersRole()
        
        XCTAssertTrue(result == nil)
        
    }
    
    func testAssignRoleLogic_arrayOfPlayersWithOnePlayer_shouldReturnEmptyArray() {
        
        let player = Player(nickname: "test", roleType: nil, isAlive: true, isHost: nil, vote: nil)
        
        let gameManager = GameManager.init(withPlayers: [player])
        
        let result = gameManager.assignPlayersRole()
        XCTAssertTrue(result == nil)
        
    }
    

}
