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
            sender.setImage(UIImage(named: "cross.png")?.withRenderingMode(.alwaysTemplate), for: [])
            (sender as? UIButton)?.tintColor = UIColor.red
            crossTurn = false
        }
        else {
            sender.setImage(UIImage(named: "circle.png")?.withRenderingMode(.alwaysTemplate), for: [])
            (sender as? UIButton)?.tintColor = UIColor.blue
            crossTurn = true
        }
        (sender as? UIButton)?.isUserInteractionEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
