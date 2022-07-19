//
//  ToDo.swift
//  to do list
//
//  Created by Sophia Masciana on 7/18/22.
//

import UIKit

class ToDo {
    var name = ""
    var important = false
    
    init(ToDoname : String) {
        name = ToDoname
    }
    init(ToDoimportant : Bool) {
        important = ToDoimportant
    }
}
