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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        database = Firestore.firestore()
        
        database.collection("Game Istances").addDocument(data: "Stanza 1")
        
    
    }


}
