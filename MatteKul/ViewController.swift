//
//  ViewController.swift
//  MatteKul
//
//  Created by Lina Li on 2020-10-26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theProgressView: UIProgressView!
    @IBOutlet weak var theTextView: UITextField!
    @IBOutlet weak var theTrueButton: UIButton!
    @IBOutlet weak var theFalseButton: UIButton!
    @IBOutlet weak var theAnswerLabel: UILabel!
    
    
    let quiz = [Questions(question: "1 x 2 = 2", answer: "True"),
                Questions(question: "1 x 3 = 2", answer: "False"),
                Questions(question: "1 x 4 = 4", answer: "True"),
                Questions(question: "1 x 5 = 7", answer: "False"),
                Questions(question: "1 x 6 = 5", answer: "False"),
                Questions(question: "1 x 7 = 7", answer: "True"),
                Questions(question: "1 x 8 = 8", answer: "True"),
                Questions(question: "2 x 2 = 4", answer: "True"),
                Questions(question: "2 x 3 = 4", answer: "False"),
                Questions(question: "2 x 4 = 8", answer: "True"),
                Questions(question: "2 x 5 = 10", answer: "True"),
                Questions(question: "2 x 6 = 10", answer: "False"),
                Questions(question: "2 x 7 = 14", answer: "True"),
                Questions(question: "2 x 8 = 16", answer: "True"),
                Questions(question: "2 x 9 = 12", answer: "False"),
                Questions(question: "3 x 3 = 9", answer: "True"),
                Questions(question: "3 x 4 = 10", answer: "False"),
                Questions(question: "3 x 5 = 15", answer: "True"),
                Questions(question: "3 x 6 = 13", answer: "False"),
                Questions(question: "3 x 7 = 21", answer: "True"),
                Questions(question: "3 x 8 = 24", answer: "True"),
                Questions(question: "3 x 9 = 25", answer: "False"),
    
    
    ]
//     quiz är en array med quiz = [Questions]
    
    var questionNumber = 0
//    mattequestion är Questions() eftersom index=0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateQuestions()
       
       }

    @IBAction func theAnswerButton(_ sender: UIButton) {
        
        let theUserAnswer = sender.currentTitle!
//  sender.currentTitle hämtar users answer
        let theActualAnswer = quiz[questionNumber].answer
        
        if  theUserAnswer == theActualAnswer{
            theAnswerLabel.text = "Right!"
        } else{
            theAnswerLabel.text = "Wrong!"
        }
        
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
        }
        
        updateQuestions()
      }
     
         func updateQuestions() {
            
            theTextView.text = quiz[questionNumber].question
            theProgressView.progress = Float(questionNumber + 1) / Float(quiz.count)
        
        
       }
}


