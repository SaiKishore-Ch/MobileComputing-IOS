//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Chowdam,Sai Kishore on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    var operand1 = -1.1
    var operand2 = -1.1
    var calcOperator = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button6(_ sender: UIButton) {
        displayLabel.text=displayLabel.text! + "6"
        if operand1 == -1.1
        {
            operand1 = 6
        }
        else{
            operand2=6
        }
    }
    
    @IBAction func button9(_ sender: UIButton) {
        displayLabel.text=displayLabel.text! + "9"
        if operand1 == -1.1
        {
            operand1 = 9
        }
        else{
            operand2=9
        }
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        displayLabel.text=displayLabel.text! + "+"
        if calcOperator==" "
        {
            calcOperator = "+"
        }
    }
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        displayLabel.text="="
        if calcOperator=="+"
        {
            displayLabel.text="\(operand1+operand2)"
        }
    }
}

