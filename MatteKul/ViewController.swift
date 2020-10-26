//
//  ViewController.swift
//  MatteKul
//
//  Created by Lina Li on 2020-10-26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theProgressView: UIProgressView!
    @IBOutlet weak var theTextView: UITextView!
    @IBOutlet weak var theTrueButton: UIButton!
    @IBOutlet weak var theFalseButton: UIButton!
    @IBOutlet weak var theTextField: UITextField!
    
    
    var mattequestion = ["1 * 2 = 2", "True"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        theTextView.text = mattequestion[0]
    }

    @IBAction func theAnswerButton(_ sender: UIButton) {
        let theUserAnswer = sender.currentTitle!
//  sender.currentTitle hämtar users answer
        let theActualAnswer = mattequestion [1]
        if  theUserAnswer == theActualAnswer{
            theTextField.text = "Yeah! You are right!"
        } else{
            theTextField.text = "No...You are Wrong...Sorry"
    }
    
}

}
