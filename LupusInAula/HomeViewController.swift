//
//  HomeViewController.swift
//  LupusInAula
//
//  Created by Riccardo Scambia on 25/10/2019.
//  Copyright © 2019 ITS. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var entraInAulaButton: UIButton!
    
    @IBOutlet weak var regolamentoButton: UIButton!
    
    // MARK: - Life Viewcycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup ui
        entraInAulaButton.layer.cornerRadius = 5
        regolamentoButton.layer.cornerRadius = 5

    }
    
    // MARK: - Actions
    
    @IBAction func entraInAulaAction(_ sender: Any) {
        
        
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    
    }
    
    @IBAction func regolamentoAction(_ sender: Any) {
        
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
