//
//  Player.swift
//  LupusInAula
//
//  Created by Andrea Bauzano on 18/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Foundation

let minimumPlayersnumber = 8
let maximumPlayesrNumber = 24

protocol Playing {
    
    var nickname: String { get }
    var roleType: RoleType? { get set }
    var isAlive: Bool { get set }
    var isHost: Bool? { get }
    var vote: String? { get set }
    
}

enum RoleType {
    
    case teacher // veggente 🔮
    case student // contadino 👩🏻‍🌾
    case cheater // lupo 🐺
    
}


struct Player: Playing {
   
    let nickname: String
    var roleType: RoleType?
    var isAlive: Bool
    let isHost: Bool?
    var vote: String?
    
}

func main (){
    
}


// Check if the game can start
func checkValidStart(withPlayers players: [Playing]) -> Bool {
    
    return players.count >= 8
    
}

// Assigning roles when the game is valid and started
func assignPlayersRole(withPlayers players: [Playing]) -> [Playing] {
    
    var resultPlayers = [Player]()
    var wolvesToAssign = players.count < 16 ? 2 : 3
    var teacherToAssign = 1
    
    guard players.isEmpty else {
        return players
    }
    
    // Assigning cheater role
    for _ in 0..<wolvesToAssign {
        
        var cheater: Playing
        
        repeat {
            cheater = players[Int.random(in: 0...players.count)]
            let playerToAdd = Player(nickname: cheater.nickname, roleType: .cheater, isAlive: true, isHost: cheater.isHost, vote: nil)
            resultPlayers.append(playerToAdd)
            wolvesToAssign -= 1
        } while (cheater.roleType == nil)
        
    }
    
    // Assigning teacher role
    var teacher: Playing
    repeat {
        teacher = players[Int.random(in: 0...players.count)]
        let playerToAdd = Player(nickname: teacher.nickname, roleType: .teacher, isAlive: true, isHost: teacher.isHost, vote: nil)
        resultPlayers.append(playerToAdd)
        teacherToAssign = 0
    } while (teacher.roleType == nil && teacherToAssign != 0)
    
    // Assigning student role
    for var player in players {
        if player.roleType != nil {
            player.roleType = RoleType.student
        }
    }
    
    for player in resultPlayers {
        print(player)
    }
    
    return resultPlayers
    
}
