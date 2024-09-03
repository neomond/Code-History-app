//
//  GameViewModel.swift
//  Code History
//
//  Created by Nazrin Atayeva on 03.09.24.
//

import SwiftUI

// 1
class GameViewModel: ObservableObject {
    // MARK: - Published properties
    // 2
    @Published private var game = Game()
    
    // MARK: - Internal properties
    // 3
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    // 4
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    // MARK: - Internal Methods
    // 2
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    // 3
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }
}

/// We create a new object type named GameViewModel that conforms to the ObservableObject protocol.
/// The view model will emit events when changes are made to its Published properties, namely game.
/// We add a property named game of type Game. This is wrapped in the @Published modifier so our GameViewModel can notify any observers when changes are made to it like when a user makes a guess.
/// A computed variable named currentQuestion. This returns the game’s current question.
/// A variable named questionProgressText that returns the String to be displayed at the top of the screen to indicate the user’s progress.
