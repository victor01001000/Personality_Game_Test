//
//  QuizQuestions.swift
//  Personality Makeup Test
//
//  Created by Victor Huang on 2/7/18.
//  Copyright © 2018 Victor Huang. All rights reserved.
//

import Foundation

class QuizQuestions {

    var questionBank = [Question]()
    
    init() {
        let item = Question(text: "Basic Personality Test")
        questionBank.append(item)
        questionBank.append(Question(text: "I prefer intimate conversations between two people."))
        questionBank.append(Question(text: "I prefer phone conversations over texting."))
        questionBank.append(Question(text: "I feel extremely drained after a party."))
        questionBank.append(Question(text: "Question 4"))
        questionBank.append(Question(text: "Question 5"))
        questionBank.append(Question(text: "Question 6"))
        questionBank.append(Question(text: "Question 7"))
        questionBank.append(Question(text: "Question 8"))
        questionBank.append(Question(text: "Question 9"))
        questionBank.append(Question(text: "Question 10"))
    }

}
