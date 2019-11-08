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
// Disable from the room
// Funzione della ricezione delle persone.

func dayOrNight(isDay: Bool, isVote: Bool, rolePlayer: String){
    
    let rdm = RemoteDatabaseManager()

    if(rolePlayer == "Lupo" && isVote == true){
        isDay = false;
    }else{
        isDay = true;
    }
}
