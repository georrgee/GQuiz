//
//  QuestionBank.swift
//  Quizzler
//
//  Created by George Garcia on 4/19/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var list = [Question]() // list array of Questions
    
    init(){
        
        //Creating a quiz item and appending it to the list
        let item = Question(text: "It is legal to drink and drive", correctAnswer: false) //0
        
        // Add the question to list of questions
        list.append(item)
        
        // don't need to create a var
        list.append(Question(text: "George is Mexican", correctAnswer: false)) //1
        list.append(Question(text: "The capital of Texas is Bunkston", correctAnswer: false))//2
        list.append(Question(text: "Dherbsta has the best mixtape of all time", correctAnswer: true)) //3
        list.append(Question(text: "Lakers won THREE championships in a row", correctAnswer: true)) //4
        list.append(Question(text: "George graduated with a B.A. in Computer Science", correctAnswer: true))//5
        list.append(Question(text: "Tennis was George's first sport", correctAnswer: false))//6
        list.append(Question(text: "Greg thinks Lil Pump is better than J Cole", correctAnswer: true))//7
        list.append(Question(text: "The color orange is named after the fruit", correctAnswer: true))//8
        list.append(Question(text: "You can lead a cow down stairs but not upstairs", correctAnswer: false)) //9
        list.append(Question(text: "South Africa has 25 official languages", correctAnswer: false))//10
        list.append(Question(text: "Video games are awesome", correctAnswer: true)) //11
        
        
    }
    
}
