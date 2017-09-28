//
//  TwoPlayersViewController.swift
//  TicTacToe
//
//  Created by Radoslaw Kuzicki on 28/09/2017.
//  Copyright © 2017 radek. All rights reserved.
//

import UIKit

class TwoPlayersViewController: UIViewController {
    
    var crossTurn = true
    @IBAction func buttonPressed(_ sender: AnyObject) {
        if (crossTurn) {
            sender.setImage(UIImage(named: "cross.png"), for: [])
            crossTurn = false
        }
        else {
            sender.setImage(UIImage(named: "circle.png"), for: [])
            crossTurn = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Game loaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
