//
//  Topic1ViewController.swift
//  quiz_App
//
//  Created by Student on 4/29/22.
//

import UIKit

class GKViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = gkoptionstable.dequeueReusableCell(withIdentifier: "optionsCell", for: indexPath)
        cell.textLabel?.text = gkq[indexPath.row].ques
        return cell
    }
    

    @IBOutlet weak var gkoptionstable: UITableView!
    
    
    @IBOutlet weak var quesLabel: UILabel!
    
    
    @IBOutlet weak var prevbutton: UIButton!
    
    
    @IBOutlet weak var nextbutton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gkoptionstable.delegate = self
        gkoptionstable.dataSource = self
        

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
