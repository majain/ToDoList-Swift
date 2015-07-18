//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Jain, Mohit on 7/18/15.
//  Copyright © 2015 Mohit. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var addItem: UIButton!
    
    @IBAction func addItemToList(sender: AnyObject) {
        
        toDoList.append(textField.text!)
        NSUserDefaults .standardUserDefaults() .setObject(toDoList, forKey: "toDoList")
        
        textField.text = ""
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
}

