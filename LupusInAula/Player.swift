//
//  Player.swift
//  LupusInAula
//
//  Created by Andrea Bauzano on 18/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Foundation

struct Player {
    let name: String
    let role: Roles
    var isAlive: Bool
    let isHost: Bool
    var vote: String
    
}

enum Roles {
    case teacher
    case student
    case cheater
    
}

func main (){
    let pl = Player(name: "Player1", role: Roles.student, isAlive: true, isHost: true, vote: "Player2")
    
    print("\(pl)")
}
