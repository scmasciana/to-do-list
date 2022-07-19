//
//  ToDoTableViewController.swift
//  to do list
//
//  Created by Sophia Masciana on 7/18/22.
//

import UIKit

var ToDos : [ToDo] = []

class ToDoTableViewController: UITableViewController {

    var ToDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
        
        

        //line to preserve selection between presentations
        //self.clearsSelectionOnViewWillAppear = false

        //line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    //MARK: - Table view data source



func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ToDos.count
    }

    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let toDo = ToDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = toDo.name
        }

        return cell
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddToDoViewController {
            addVC.previousVC = self
        }
        
        if let completeVC = segue.destination as? CompleteToDoViewController {
            if let toDo = sender as? ToDo {
                completeVC.selectedToDo = toDo
                completeVC.previousVC = self
            }
        }
    }
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let toDo = ToDos[indexPath.row]
    
    performSegue(withIdentifier: "moveToComplete", sender: toDo)
}


