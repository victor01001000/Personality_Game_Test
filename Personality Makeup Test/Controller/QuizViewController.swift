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
    var pickedAnswer : Int = 0
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
            pickedAnswer = 1
        } else if sender.tag == 2 {
            pickedAnswer = 2
        } else if sender.tag == 3 {
            pickedAnswer = 3
        } else if sender.tag == 4 {
            pickedAnswer = 4
        } else if sender.tag == 5 {
            pickedAnswer = 5
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
            if extrovert > introvert {
                you = "extrovert"
            } else if introvert > extrovert {
                you = "introvert"
            } else {
                you = "ambivert"
            }
            let alert = UIAlertController(title: "You are an \(you)", message: "Restart the Quiz?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in self.startOver()})
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    func checkAnswer() {
        let pers = allQuestions.questionBank[questionNumber].personality
        if pers == "E" {
            extrovert += pickedAnswer
            print("extrovert: \(extrovert)")
        } else if pers == "I" {
            introvert += pickedAnswer
            print("intro: \(introvert)")
        }
    }
    func startOver() {
        questionNumber = 0
        extrovert = 0
        introvert = 0
        nextQuestion()
    }
}
