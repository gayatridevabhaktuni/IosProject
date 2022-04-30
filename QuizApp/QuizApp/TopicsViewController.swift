//
//  TopicsViewController.swift
//  QuizApp
//
//  Created by Student on 4/7/22.
//

import UIKit

class TopicsViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var topicoutlet: UITextField!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startButtonClicked(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "questionSegue"{
            let destination =  segue.destination as! QuestionViewController
            if topicoutlet.text! == "GK"{
                destination.optionsView
                
            }
            
        }
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
