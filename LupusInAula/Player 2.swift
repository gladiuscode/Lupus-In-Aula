//
//  Player.swift
//  LupusInAula
//
//  Created by Andrea Bauzano on 18/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Foundation

struct Player {
    let nickname : String
    let status : Bool
    let role: Roles
}

enum Roles {
    case teacher
    case student
    case cheater
    
}

func main (){
    let pl = Player(nickname: "cioa", status: true, role: Roles.student)
    
    print("\(pl)")
}
