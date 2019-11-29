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
        
        let sut = GameManager(withPlayers: [Playing]())
        let result = sut.assignPlayersRole()
        
        guard result == nil else {
            XCTFail()
            return
        }
        
    }
    
    func testAssignRoleLogic_arrayOfPlayersIsLessThanMinimum_shouldReturnNil() {
        
        let sut = GameManager(withPlayers: [Playing]())
        let result = sut.assignPlayersRole()
        
        guard result == nil else {
            XCTFail()
            return
        }
        
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

    
    func testGameManager() {
        
        let player1 = Player(nickname: "Test1",
                             roleType: nil,
                             isAlive: true,
                             isHost: nil,
                             vote: nil)
        let sut = GameManager(withPlayers: [player1])
        
        let result = sut.assignPlayersRole()
        
        print(result)
        
    }
    
    func testTimeManager() {
        
        let exp = expectation(description: #function)
        
        let sut = TimeManager()
        
        sut.whenDayStatusHasChanged = { dayStatus in
            
            print(dayStatus)
            
        }
        
        sut.start()
        
        waitForExpectations(timeout: 20, handler: nil)
        
    }
    
}
