//
//  Room.swift
//  LupusInAula
//
//  Created by Andrea Milone on 25/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Foundation



// Struttura tipo player
// Funzione su giorno e notte
// Disable from6 the room
// Funzione della ricezione delle persone.


protocol Working {
    
    var hostName: String { get }
    var isDay: Bool { get }
    var isCompleted: Bool { get }
    
}



struct Room: Working {
    
    let hostName: String
    let isDay: Bool
    var isCompleted: Bool
    
}
