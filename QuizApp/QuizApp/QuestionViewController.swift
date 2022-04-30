//
//  QuestionViewController.swift
//  QuizApp
//
//  Created by Student on 4/7/22.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = optionsView.dequeueReusableCell(withIdentifier: "optionsCell", for: indexPath)
        return cell
    }
    
    var ques :[gk] = []
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var optionsView: UITableView!
    
    @IBOutlet weak var prevButton: UIButton!
    
    
    @IBOutlet weak var getScoreButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        optionsView.delegate = self
        optionsView.dataSource = self
        

        // Do any additional setup after loading the view.
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
