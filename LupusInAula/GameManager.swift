//
//  GameManager.swift
//  LupusInAula
//
//  Created by Alessio Bollo on 08/11/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Foundation

class GameManager {
    
    let minimumPlayersnumber = 8
    let maximumPlayesrNumber = 24
    let players: [Playing]
    
    /// To initialize when the game starts.
    var timeManager: TimeManager?
    
    init(withPlayers players: [Playing]) {
        self.players = players
    }
    
    // Check if the game can start
    func checkValidStart() -> Bool {
        
        return players.count >= minimumPlayersnumber && players.count <= maximumPlayesrNumber
        
    }
    
    // Assigning roles when the game is valid and started
    func assignPlayersRole() -> [Playing]? {
        
        var playersToCompute = players
        var resultPlayers = [Player]()
        let wolvesToAssign = players.count < 16 ? 2 : 3
        
        guard players.isEmpty == false else {
            return nil
        }
        
        guard players.count >= minimumPlayersnumber else {
            return nil
        }
        
        guard players.count <= maximumPlayesrNumber else {
            return nil
        }
        
        // Assigning cheater role
        // requirements:
        // teacher role must be only ONE
        // cheater role must be min 2 max 3 depending on the number of players
        // student role must be the rest of players
        let randomIndexForTeacher = Int.random(in: 0..<playersToCompute.count)
        let teacherRole = playersToCompute.remove(at: randomIndexForTeacher)
        let teacherPlayer = Player(nickname: teacherRole.nickname, roleType: RoleType.teacher.rawValue, isAlive: true, isHost: teacherRole.isHost, vote: nil)
        resultPlayers.append(teacherPlayer)
        
        for _ in 1...wolvesToAssign {
            
            let randomIndexForWolf = Int.random(in: 0..<playersToCompute.count)
            let wolfRole = playersToCompute.remove(at: randomIndexForWolf)
            let wolfPlayer = Player(nickname: wolfRole.nickname, roleType: RoleType.cheater.rawValue, isAlive: true, isHost: wolfRole.isHost, vote: nil)
            resultPlayers.append(wolfPlayer)
            
        }
        
        
        for indexForStudent in 1...playersToCompute.count {
            
            let studentRole = playersToCompute.remove(at: indexForStudent)
            let studentPlayer = Player(nickname: studentRole.nickname, roleType: RoleType.student.rawValue, isAlive: true, isHost: studentRole.isHost, vote: nil)
            resultPlayers.append(studentPlayer)
            
        }
        
        return resultPlayers
        
    }
    
}
