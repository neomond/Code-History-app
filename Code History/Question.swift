//
//  Question.swift
//  Code History
//
//  Created by Nazrin Atayeva on 02.09.24.
//

import Foundation

struct Question {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
}

///The questionText property will store the actual question that we want to display in the view. 
///The possibleAnswers property will store an Array of strings that the view will display as the possible answers to the question.
///The correctAnswerIndex property will store the index of the correct answer in the possibleAnswers array.

