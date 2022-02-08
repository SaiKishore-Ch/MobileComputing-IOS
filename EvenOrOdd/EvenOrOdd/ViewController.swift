//
//  ViewController.swift
//  EvenOrOdd
//
//  Created by Chowdam,Sai Kishore on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func submitButton(_ sender: UIButton) {
        
        var input = Int (inputTextField.text!)
                if(input!%2 == 0){
                    displayLabel.text = "\(input!) is even number"
                }
                else{
                    displayLabel.text = "\(input!) is odd number"
                }
        
       
    
        }
}

