//
//  CompleteToDoViewController.swift
//  to do list
//
//  Created by Sophia Masciana on 7/19/22.
//

import UIKit

var previousVC = ToDoTableViewController()
var selectedToDO = ToDo()

class CompleteToDoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo.name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_sender: Any) {
        
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
