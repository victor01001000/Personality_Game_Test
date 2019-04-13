//
//  StoryOneScenes.swift
//  Personality Makeup Test
//
//  Created by Victor Huang on 3/12/19.
//  Copyright © 2019 Victor Huang. All rights reserved.
//

import Foundation

class StoryOneScenes {
    
    var sceneBank = [StoryOneQuestion]() 
    
    init() {
        let scenePart = StoryOneQuestion(text: "Opening Scene")
        sceneBank.append(scenePart)
        sceneBank.append(StoryOneQuestion(text: "Scene 1-1"))
        sceneBank.append(StoryOneQuestion(text: "Scene 1-2"))
        sceneBank.append(StoryOneQuestion(text: "Scene 2-1"))
        sceneBank.append(StoryOneQuestion(text: "Scene 2-2"))
    }
}
