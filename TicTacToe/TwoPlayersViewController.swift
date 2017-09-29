//
//  TwoPlayersViewController.swift
//  TicTacToe
//
//  Created by Radoslaw Kuzicki on 28/09/2017.
//  Copyright © 2017 radek. All rights reserved.
//

import UIKit

class TwoPlayersViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    var boardArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    //cross in 1, circle is 2
    let winningCombinations = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]
    ]
    var crossTurn = true
    var moves = 0
    var activeGame = true
    @IBAction func buttonPressed(_ sender: AnyObject) {
        if (activeGame) {
            var won = false
            if (crossTurn) {
                sender.setImage(UIImage(named: "cross.png")?.withRenderingMode(.alwaysTemplate), for: [])
                (sender as? UIButton)?.tintColor = UIColor.red
                crossTurn = false
                boardArray[sender.tag] = 1
            }
            else {
                sender.setImage(UIImage(named: "circle.png")?.withRenderingMode(.alwaysTemplate), for: [])
                (sender as? UIButton)?.tintColor = UIColor.blue
                crossTurn = true
                boardArray[sender.tag] = 2
            }
            (sender as? UIButton)?.isUserInteractionEnabled = false
            moves += 1
            if (moves > 4) {
                for com in winningCombinations {
                    if boardArray[com[0]] > 0 && boardArray[com[0]] == boardArray[com[1]] && boardArray[com[0]] == boardArray[com[2]] {
                        if (crossTurn == false) {
                            resultLabel.text = "Crosses win"
                            won = true
                            activeGame = false
                        
                        }
                        else {
                            resultLabel.text = "Circles win"
                            won = true
                            activeGame = false
                        }
                    }
                }
            }
            if !won && moves == 9 {
                resultLabel.text = "DRAW"
                activeGame = false
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
