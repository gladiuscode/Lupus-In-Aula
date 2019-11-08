//
//  RemoteDatabaseManager.swift
//  LupusInAula
//
//  Created by Riccardo Scambia on 18/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import Firebase


/// The class in charge of handling the Firebase
/// database integration.
class RemoteDatabaseManager {

    let gitGodPlsDontFuckThisUp = true
    
    /// Names for collections on database
    let databaseName: String = "Games"
    let collectionPlayers: String = "Players"
    
    var database: Firestore
    
    init() {
        database = Firestore.firestore()
    }

    
    /// This function will start a room, it will check wether it already exists with the given name
    func initRoomBy(nameOfRoom name: String) {
        
        // Save host
        //saveUser(nickname: "Pippo", isHost: true)
        database.collection(databaseName).document(name).addSnapshotListener{ documentSnapshot, error in
            
        // TODO: finish this control
            
            
        }
    }
    
    /// This function will destroy a room with a given name
    func resetRoomBy(nameOfRoom name: String){
        // At once this will check wether the room with the given name already exists
        
        /// If exists (and it's called when a game is finished) it will destroy the room
        /// Delete players and room is empty
        database.collection(databaseName).document(name)
                  .collection(collectionPlayers).getDocuments{ (snapshot, error) in
                  if let err = error {
                      print(err.localizedDescription)
                      return
                  }
                  
                  if let data = snapshot?.documents {
                      for element in data{
                          element.reference.delete()
                      }
                  }
              }
        
        /// Delete room
        database.collection(databaseName).document(name).delete()
        
    }
    
    /// This function will save a user and check wether the user with the given name already exists
    /// it will return wether the relative user is the master/host of a room
    func saveUserWith(nickname: String, isHost: Bool) {
        /// Check wether the user is already present
        
        /// return wether the user is the host
    }
    
    /// This function will take the role given to a relative user and update the information
    /// about a user with the given role
    func setPlayerRoleBy(nickname: String, name: String, userRole: String){
        /// Check if the room already exists
        // guard let for the following two
        checkUserBy(nickname: nickname)
        
        /// Check if the user already exists
        checkRoomBy(name: name)
        
        /// Update the information (from the db, at a given player) with the role given
        
        
    }
    
    /// Check wether a user exists - if it's present in a document on the db
    func checkUserBy(nickname: String) -> Bool{
        
        return true
    }
    
    /// Check wether a room exists - if it's present in a document on the db
    func checkRoomBy(name: String) -> Bool{
        
        return true
    }
    
    
    
}
