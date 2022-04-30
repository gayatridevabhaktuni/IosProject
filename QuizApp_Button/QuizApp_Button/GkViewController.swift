//
//  GkViewController.swift
//  QuizApp_Button
//
//  Created by Student on 4/30/22.
//

import UIKit

class GkViewController: UIViewController {
    
    
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var prevbutton: UIButton!
    
    
    @IBOutlet weak var nextbutton: UIButton!
    
    
    @IBOutlet weak var opt1: UIButton!
    
    
    @IBOutlet weak var opt2: UIButton!
    
    
    @IBOutlet weak var opt3: UIButton!
    
   
    
    
    @IBOutlet weak var opt4: UIButton!
    
    
    var quizManager = QuizManager()
    
        var change = 1
        
    @IBAction func answerSelected(_ sender: UIButton) {
           
           let userAnswer = sender.currentTitle!
           let check = quizManager.checkAnswer(userAnswer)
           
           if check{
               sender.backgroundColor = UIColor.green;
           }
           else {
               sender.backgroundColor = UIColor.red;
           }
           
           quizManager.nextQuestion()
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI(){
        questionText.text = quizManager.checkQuestion()
                //Progress.progress = quizManager.checkProgress()
                //Score.text = "Score: \(quizManager.checkScore())"
                
               
                
                opt1.setTitle(quizManager.checkChoices()[0], for: .normal)
                opt2.setTitle(quizManager.checkChoices()[1], for: .normal)
                opt3.setTitle(quizManager.checkChoices()[2], for: .normal)
                opt4.setTitle(quizManager.checkChoices()[3], for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
