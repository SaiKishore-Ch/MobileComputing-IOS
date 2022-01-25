//
//  ViewController.swift
//  VowelsApp
//
//  Created by Chowdam,Sai Kishore on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        
        //read the text
        var enteredText=textOutlet.text!
        //check the text has a vowel or not
        if(enteredText.contains("a") || enteredText.contains("e"))
        {
            displayLabel.text="The text has vowel"
        }
        else
        {
            displayLabel.text="No vowels found!"
        }
    }
    
}

