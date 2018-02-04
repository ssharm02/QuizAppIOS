//
//  ViewController.swift
//  Quizzler
//
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    //Place your instance variables here
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //first item in the question array
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject)
    {
        if sender.tag == 1
        {
            pickedAnswer = true;
        }
        else if sender.tag == 2 {
            pickedAnswer = false;
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        //call the next question
        nextQuestion()
        
    }
    
    
    func updateUI() {
        scoreLabel.text = "Your Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    
    }
    

    func nextQuestion()
    {
        if questionNumber <= 12
        {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }
        else
        {
            let alert = UIAlertController(title: "Game Over!", message: "You have finished the game, start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart game", style: .default, handler: { (UIAlertAction) in self.startOver()
                })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    func checkAnswer()
    {
        let correctAnswer = allQuestions.list[questionNumber].answer
    
        if correctAnswer == pickedAnswer {
            score = score + 1
            ProgressHUD.showSuccess("Correct")
        }
        else
        {
            score = score - 1
            ProgressHUD.showError("Wrong")
        }
    }
    func startOver() {
       score = 0
       questionNumber = 0
       nextQuestion()
        
    }
    

    
}
