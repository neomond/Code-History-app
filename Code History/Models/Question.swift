//
//  Question.swift
//  Code History
//
//  Created by Nazrin Atayeva on 02.09.24.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?", possibleAnswers: ["Steve Jobs",
                                                                                     "Linus Torvalds",
                                                                                     "Bill Gates",
                                                                                     "Tim Berners-Lee"], correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming language?", possibleAnswers: ["Simula",
                                                                                                             "Python",
                                                                                                             "Swift",
                                                                                                             "C"], correctAnswerIndex: 0)
    ]
}

/// The questionText property will store the actual question that we want to display in the view.
/// The possibleAnswers property will store an Array of strings that the view will display as the possible answers to the question.
/// The correctAnswerIndex property will store the index of the correct answer in the possibleAnswers array.

/// Make sure that your defined structure is hashable so that your can use it as a key in a dictionary.
/// Swift makes this very easy by providing a Hashable protocol. 
/// Simply have Question conform to Hashable and you will be able to use Question objects as keys in dictionaries, and thus map a specific question to the index that the user guessed.
