//
//  Question.swift
//  Personality Makeup Test
//
//  Created by Victor Huang on 2/7/18.
//  Copyright © 2018 Victor Huang. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answer : Bool
    let personality : String
    let optionOne : String
    let optionTwo : String
    
    init(text: String, correctAnswer: Bool, person: String, optionO: String, optionT: String) {
        questionText = text
        answer = correctAnswer
        personality = person
        optionOne = optionO
        optionTwo = optionT
    }
}
