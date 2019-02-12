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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = allQuestions.questionBank[questionNumber].questionText  
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func goBack(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
