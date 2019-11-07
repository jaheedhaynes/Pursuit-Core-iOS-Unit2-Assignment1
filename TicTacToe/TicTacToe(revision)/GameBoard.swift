//
//  GameBoard.swift
//  TicTacToe(revision)
//
//  Created by Jaheed Haynes on 11/6/19.
//  Copyright © 2019 Jaheed Haynes. All rights reserved.
//

import UIKit


var activeGame = true

// 1 = Freddy, 2 = Jason
// starts with Freddy (1) then alternates with an 'if else' statement in the buttonPressed method in the ViewController

// First player to make a choice. currentPlayer will alternate between 1 & 2
var currentPlayer = 1



// Zero(0) is empty space that hasn't been action pressed on (no choice)
// space is pressed on it will have a value of 1(Freddy) or 2(Jason) with the corresponding position in the array range (0...8)
var gameStatus = [0,0,0,0,0,0,0,0,0]



// winning combination array matrix (multi-dimensional array)
// These correspond with the .tag value minus one (-1)
//eg. 'index[0] = gameButton.tag[1]'
let winningCombos = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6],[0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]


//func gameTie() {
//    for imageIntTag in gameStatus {
//        if gameStatus != gameStatus {
//
//        }
//    }
//}
