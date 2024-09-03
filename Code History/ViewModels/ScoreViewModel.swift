//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Nazrin Atayeva on 03.09.24.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
