//
//  ViewController.swift
//  LupusInAula
//
//  Created by Riccardo Scambia on 11/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import UIKit
import FirebaseFirestore

class ViewController: UIViewController {
    
    var database: Firestore!
    let databaseName: String = "Games"
    let collectionPlayers: String = "Players"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /// Init database
        database = Firestore.firestore()
    
        /// Add data in path:  Games/Stanza1/Players
        database.collection(databaseName).document("Stanza1")
            .collection(collectionPlayers).addDocument(data:
            ["nickname" : "PAOLINO",
                "ruolo" : "Lupo",
                "host" : true
        ])
    
       
        
        /// Add another data in path:  Games/Stanza1/Players
//        database.collection(databaseName).document("Stanza1")
//            .collection(collectionPlayers).addDocument(data: dictionary)
//
        
        /// Print all collection "Players"
//        database.collection(databaseName).document("Stanza1")
//            .collection(collectionPlayers).getDocuments{ (snapshot, error) in
//            if let err = error {
//                print(err.localizedDescription)
//                return
//            }
//
//            if let data = snapshot?.documents {
//                for element in data{
//                    print(element.data())
//                }
//            }
//        }
        
        /// Try a RemoteDatabaseManager function
//        let RoomName: String = "Stanza1"
//        let databaseManager = RemoteDatabaseManager.init()
//        
        /// Delete collection "Players" and "Stanza1"
        //databaseManager.resetRoomBy(nameOfRoom: RoomName)
        
    }


    
    
}

