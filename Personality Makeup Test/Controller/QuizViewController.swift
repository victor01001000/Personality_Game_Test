//
//  QuizViewController.swift
//  Personality Makeup Test
//
//  Created by Victor Huang on 2/7/18.
//  Copyright © 2018 Victor Huang. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    let allQuestions = QuizQuestions()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var introvert : Int = 0
    var extrovert : Int = 0
    var you : String = ""
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonChoiceOne: UIButton!
    @IBOutlet weak var buttonChoiceTwo: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
        questionLabel.text = allQuestions.questionBank[questionNumber].questionText  
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1{
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

    @IBAction func goBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func updateUI() {
        
    }
    
    func nextQuestion() {
        
        if questionNumber < allQuestions.questionBank.count {
            questionLabel.text = allQuestions.questionBank[questionNumber].questionText
        } else {
            startOver()
        }
    }
    
    func checkAnswer() {
        if pickedAnswer == true {
            introvert = introvert + 1
        } else {
            extrovert = extrovert + 1
        }
    }

    func startOver() {
        questionNumber = 0
        nextQuestion()
    }
}
