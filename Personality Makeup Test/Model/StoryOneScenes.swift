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
        let scenePart = StoryOneQuestion(text: "Basic Personality Test")
        sceneBank.append(scenePart)
    }
}
