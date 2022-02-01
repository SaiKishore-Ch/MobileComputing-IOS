//
//  ViewController.swift
//  Chowdam_FormatName
//
//  Created by Chowdam,Sai Kishore on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
  
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    
    @IBOutlet weak var displayDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        
        var fName=firstNameTextField.text!
        var lName=lastNameTextField.text!
        displayDetail.text="Details"
        fullNameLabel.text = "Full Name: \(fName), \(lName)"
        var fNameInitials=fName[fName.startIndex]
        var lNameInitials=lName[lName.startIndex]
        initialsLabel.text="Initials: \(fNameInitials)\(lNameInitials)"
    }
    
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text=""
        lastNameTextField.text=""
        displayDetail.text=""
        fullNameLabel.text=""
        initialsLabel.text=""
        firstNameTextField.becomeFirstResponder()
    }
    
    
}

