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
                Questions(question: "1 x 3 = 3", answer: "True"),
                Questions(question: "1 x 4 = 4", answer: "True"),
                Questions(question: "1 x 5 = 7", answer: "False"),
                Questions(question: "1 x 5 = 5", answer: "True"),
                Questions(question: "1 x 6 = 5", answer: "False"),
                Questions(question: "1 x 6 = 6", answer: "True"),
                Questions(question: "1 x 7 = 7", answer: "True"),
                Questions(question: "1 x 8 = 8", answer: "True"),
                Questions(question: "2 x 2 = 4", answer: "True"),
                Questions(question: "2 x 3 = 4", answer: "False"),
                Questions(question: "2 x 3 = 6", answer: "True"),
                Questions(question: "2 x 4 = 8", answer: "True"),
                Questions(question: "2 x 5 = 10", answer: "True"),
                Questions(question: "2 x 6 = 10", answer: "False"),
                Questions(question: "2 x 6 = 12", answer: "True"),
                Questions(question: "2 x 7 = 14", answer: "True"),
                Questions(question: "2 x 8 = 16", answer: "True"),
                Questions(question: "2 x 9 = 12", answer: "False"),
                Questions(question: "2 x 9 = 18", answer: "True"),
                Questions(question: "3 x 3 = 9", answer: "True"),
                Questions(question: "3 x 4 = 12", answer: "True"),
                Questions(question: "3 x 5 = 15", answer: "True"),
                Questions(question: "3 x 6 = 13", answer: "False"),
                Questions(question: "3 x 6 = 18", answer: "True"),
                Questions(question: "3 x 7 = 21", answer: "True"),
                Questions(question: "3 x 8 = 24", answer: "True"),
                Questions(question: "3 x 9 = 25", answer: "False"),
                Questions(question: "3 x 9 = 27", answer: "True"),
                Questions(question: "4 x 4 = 16", answer: "True"),
                Questions(question: "4 x 5 = 23", answer: "False"),
                Questions(question: "4 x 5 = 20", answer: "True"),
                Questions(question: "4 x 6 = 24", answer: "True"),
                Questions(question: "4 x 7 = 28", answer: "True"),
                Questions(question: "4 x 8 = 30", answer: "False"),
                Questions(question: "4 x 8 = 32", answer: "True"),
                Questions(question: "4 x 9 = 36", answer: "True"),
                Questions(question: "5 x 5 = 25", answer: "True"),
                Questions(question: "5 x 6 = 35", answer: "False"),
                Questions(question: "5 x 6 = 30", answer: "True"),
                Questions(question: "5 x 7 = 35", answer: "True"),
                Questions(question: "5 x 8 = 40", answer: "True"),
                Questions(question: "5 x 9 = 50", answer: "False"),
                Questions(question: "5 x 9 = 45", answer: "True"),
                Questions(question: "6 x 6 = 36", answer: "True"),
                Questions(question: "6 x 7 = 40", answer: "False"),
                Questions(question: "6 x 7 = 42", answer: "True"),
                Questions(question: "7 x 7 = 49", answer: "True"),
                Questions(question: "7 x 8 = 52", answer: "False"),
                Questions(question: "7 x 8 = 52", answer: "True"),
                Questions(question: "7 x 9 = 62", answer: "False"),
                Questions(question: "7 x 9 = 63", answer: "True"),
                Questions(question: "8 x 8 = 64", answer: "True"),
                Questions(question: "8 x 9 = 70", answer: "False"),
                Questions(question: "8 x 9 = 72", answer: "True"),
                Questions(question: "9 x 9 = 81", answer: "True"),
    
    
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
            theAnswerLabel.text = "Your answer is right!"
            theAnswerLabel.backgroundColor = UIColor.green
        } else{
            theAnswerLabel.text = "Your answer is wrong!"
            theAnswerLabel.backgroundColor = UIColor.red
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
    
    
    



