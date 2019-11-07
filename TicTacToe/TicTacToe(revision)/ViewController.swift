//
//  ViewController.swift
//  TicTacToe(revision)
//
//  Created by Jaheed Haynes on 11/6/19.
//  Copyright © 2019 Jaheed Haynes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var winnerPromptMessage: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func playAgainActionMethod(_ sender: UIButton) {
       
        // starts game over with a clean grid
        // original variables from the model therefore there isnt a need to redeclare
        
       activeGame = true
        
        // Player (1 - Freddy) turn first
       currentPlayer = 1
        
       // game values return back to empty
       gameStatus = [0,0,0,0,0,0,0,0,0]
        

        
        // loop and iterate through the values of the array (1 to 9)
        // ressetting the images to nil within the scope of the array
        for imageIntTag in 1..<10 {
            if let restartButton = view.viewWithTag(imageIntTag) as? UIButton {
                restartButton.setImage(nil, for: [])
            }
            
            // Hides/Removes Winner Message
            winnerPromptMessage.isHidden = true
            
             // Hides/Removes playAgainButton Message
            playAgainButton.isHidden = true
        }
    }
    
    
    @IBAction func buttonPressed(_ gameButton: UIButton) {
        
        // since tags set ranged from 1-9, the position of each tag must be deducted by one to reflect actual position in array[0...8]
        let activePosition = gameButton.tag - 1
        
        if gameStatus[activePosition] == 0 && activeGame {
            
            gameStatus[activePosition] = currentPlayer
            
            if currentPlayer == 1 {
                
                // Freddy(1) turn
                gameButton.setImage(UIImage(named: "FK.jpg"), for: [])
                
                // Jason(2) turn
                currentPlayer = 2
                
            } else {
                
                gameButton.setImage(UIImage(named: "JV.jpg"), for: [])
                currentPlayer = 1
                
            }
            

            
            for combo in winningCombos {
                
                // looping through each instance to verify winning combo value for each element in the winning array. First it verify's that the value is not empty '0'. Then proceeds to check for each element in the array starts at index [0], then index [1], then index [2]
                
                if gameStatus[combo[0]] != 0 && gameStatus[combo[0]] == gameStatus[combo[1]] && gameStatus[combo[1]] == gameStatus[combo[2]] {
                    
//                    if gameStatus.contains(0) == false {
//                         winnerPromptMessage.text = "DRAW"
//                    }
                    
                    // Bool to prompt the game to end
                    activeGame = false
                    
                    // Winner banner is printed
                    winnerPromptMessage.isHidden = false
                    
                    // Play Again Button is presented
                    playAgainButton.isHidden = false
                    
                    // determining the winner or draw
                    if gameStatus.contains(0) == false {
                         winnerPromptMessage.text = "DRAW"
                    } else if gameStatus[combo[0]] == 1 {
                        winnerPromptMessage.text = "👹 FREDDY WON 👹"
                    } else if gameStatus[combo[0]] == 2 {
                        winnerPromptMessage.text = "😈 JASON WON 😈"
                    }
                    
                    print(gameStatus)
//                    if gameStatus[combo[0]] == 0 {
//                        winnerPromptMessage.text = "DRAW"
//
//
//                    }
                    
                    
                    // For loop needs to be placed here in case of a draw
//                    if activeGame == true {
//                        for imageIntTag in gameStatus {
//
//                        }
//                    }
                    
                    
                } else if gameStatus.contains(0) == false {
                     winnerPromptMessage.text = "DRAW"
                }
//                if gameStatus.contains(0) == false {
//                     winnerPromptMessage.text = "DRAW"
//                }
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        winnerPromptMessage.isHidden = true
        playAgainButton.isHidden = true
    }
    
    
}


