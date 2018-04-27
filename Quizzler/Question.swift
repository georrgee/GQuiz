//  Question.swift
//  Quizzler
//  Created by George Garcia on 4/19/18.
//  Copyright © 2018 London App Brewery. All rights reserved.

import Foundation

class Question {
    
    //properties or variables // question class has no initializers... meaning that you need to assign those variables a value. So make an initializer
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) { // Initializer is like a Constructor in other langauges
        self.questionText = text
        self.answer = correctAnswer
    }
}

