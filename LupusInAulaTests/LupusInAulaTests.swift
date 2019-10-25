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
        
        let result = assignPlayersRole(withPlayers: [Playing]())
        
        XCTAssertTrue(result.isEmpty)
        XCTAssertEqual(result.count, 0)
        
    }
    
    func testAssignRoleLogic_arrayOfPlayersWithOnePlayer_shouldReturnEmptyArray() {
        
        let player = Player(nickname: "test", roleType: .cheater, isAlive: true, isHost: nil, vote: nil)
        
        let result = assignPlayersRole(withPlayers: [player])
        XCTAssertTrue(result.isEmpty)
        
    }
    

}
