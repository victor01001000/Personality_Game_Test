//
//  StoryOne.swift
//  Personality Makeup Test
//
//  Created by Victor Huang on 2/16/19.
//  Copyright © 2019 Victor Huang. All rights reserved.
//

import UIKit

class StoryOne: UIViewController {
    
    let allScenes = StoryOneScenes() 
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var introvert : Int = 0
    var extrovert : Int = 0
    var you : String = ""
    var sceneNumber = 0
    
    @IBOutlet weak var SceneText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SceneText.text = allScenes.sceneBank[sceneNumber].sceneText
    }
    
    @IBAction func actionOne(_ sender: UIButton) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
