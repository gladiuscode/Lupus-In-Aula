//
//  Player.swift
//  LupusInAula
//
//  Created by Andrea Bauzano on 18/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Foundation



protocol Playing {
    
    var nickname: String { get }
    var roleType: Int? { get set }
    var isAlive: Bool { get set }
    var isHost: Bool? { get }
    var vote: String? { get set }
    
}

enum RoleType: Int {
    
    case teacher = 1 // veggente 🔮
    case student = 2 // contadino 👩🏻‍🌾
    case cheater = 3 // lupo 🐺
    
}


struct Player: Playing, Codable {
    
    let nickname: String
    var roleType: Int?
    var isAlive: Bool
    let isHost: Bool?
    var vote: String?
    
    var roleTypeCase: RoleType? {
        guard roleType != nil else {
            return nil
        }
        return RoleType(rawValue: roleType!)
    }
    
    mutating func assignRole(assignedRoleType: RoleType) {
        
        self.roleType = assignedRoleType.rawValue
        
    }
    
}
