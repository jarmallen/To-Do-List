//
//  SecondViewController.swift
//  To Do List
//
//  Created by Jared Allen on 11/16/15.
//  Copyright © 2015 Jared Allen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var taskTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         self.taskTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addTaskButton(sender: AnyObject) {
        toDoList.append(taskTextField.text!)
        taskTextField.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }


}

