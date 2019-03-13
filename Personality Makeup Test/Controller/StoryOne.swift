//
//  StoryOne.swift
//  Personality Makeup Test
//
//  Created by Victor Huang on 2/16/19.
//  Copyright © 2019 Victor Huang. All rights reserved.
//

import UIKit

class StoryOne: UIViewController {
    
    let allQuestions = QuizQuestions()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var introvert : Int = 0
    var extrovert : Int = 0
    var you : String = "" 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func actionOne(_ sender: UIButton) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
