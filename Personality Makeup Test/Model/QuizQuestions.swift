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
        let item = Question(text: "Welcome!")
        questionBank.append(item)
        questionBank.append(Question(text: "Question 1"))
        questionBank.append(Question(text: "Question 2"))
    }

}
