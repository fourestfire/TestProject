//
//  ViewController.swift
//  TestProject
//
//  Created by Dean Guo on 10/17/16.
//  Copyright © 2016 fourestfire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var coolLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    var item : Item?
    @IBOutlet weak var cancel: UIBarButtonItem!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if sender as AnyObject? === saveButton {
            let name = textField.text ?? ""
            item = Item(name:name)
        }
    }

  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let item = item {
            textField.text = item.name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    
    @IBAction func setLabelText(_ sender: UIButton) {
        coolLabel.text = textField.text
    }
   
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        
      //  dismiss(animated:true, completion:nil)
        
        // /*
       let isInAddMode = presentingViewController is UINavigationController
        
        if isInAddMode {
            dismiss(animated:true, completion:nil)
        } else {
            navigationController!.popViewController(animated: true)
        }
       
        // */
    }
         //  dismiss(animated:true, completion:nil)
    
}
