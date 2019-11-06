//
//  ViewController.swift
//  TicTacToe(revision)
//
//  Created by Jaheed Haynes on 11/6/19.
//  Copyright © 2019 Jaheed Haynes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 1 = Freddy, 2 = Jason
    
    var activeGame = true
    
    var activePlayer = 1
    
    var gameState = [0,0,0,0,0,0,0,0,0] // 0 is empty (no choice)
    
    let winningCombo = [[0,1,2], [3,4,5], [6,7,8], [0,5,8], [2,4,6],[0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 && activeGame {
            
            gameState[activePosition] = activePlayer
            
            if activePlayer == 1 {
                
                sender.setImage(UIImage(named: "FK.jpg"), for: [])
                // Jason turn
                activePlayer = 2
            } else {
                
                sender.setImage(UIImage(named: "JV.jpg"), for: [])
                activePlayer = 1
                
            }
            for combo in winningCombo {
            // looping through each instance to verify winning value
                
                if gameState[combo[0]] != 0 && gameState[combo[0]] == gameState[combo[1]] && gameState[combo[1]] == gameState[combo[2]] {
                    
                    // loop to prompt restart game
                    activeGame = false
                    
                    print(gameState[combo[0]])
            }
        }
        print(sender.tag)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

