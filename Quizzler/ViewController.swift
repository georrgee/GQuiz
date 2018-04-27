//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank() // initiliaze a new question bank object
    var pickedAnswer : Bool = false // intitial value of false
    var questionNumber : Int = 0 // intitialize the state
    var score : Int = 0 // initialize
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    // instance variables here
    
    // this gets called when the UIViewController is loaded into memory when the app starts
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()

    }

    // 
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1{
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    // this method will update all the views on the screen (progress bar, score label, etc)
    func updateUI() {
        
        scoreLabel.text? = "Score: \(score)"
        progressLabel.text? = "\(questionNumber + 1) / 12"
        progressBar.frame.size.width = (view.frame.size.width / 12) * CGFloat(questionNumber + 1)
    }
    
    // this method will udpate the question text and check if we reached the end
    func nextQuestion() {
        
        if questionNumber <= 11{
            
            questionLabel.text? = allQuestions.list[questionNumber].questionText
            updateUI()
        
        } else {
            
            let alert = UIAlertController(title: "Start Over?", message: "You have completed the quiz. Would you like to restart the quiz? ", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
            
            print("end of quiz")
        }
    }
    
    // this method will check the user's answer if it is right or wrong
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("You got it!")
            print("Correct!")
            score += 1
        } else {
            ProgressHUD.showError("Wrong!")
            print("Incorrect!")
        }
        
    }
    
    // this method will restart the board. That way users can retake the quiz
    func startOver() {
        
        questionNumber = 0
        nextQuestion()
        score = 0
        scoreLabel.text? = "Score: \(score)"
        print("quiz restarted!!")
    }
}
