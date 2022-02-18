//
//  ViewController.swift
//  Chowdam_Calculator
//
//  Created by Chowdam,Sai Kishore on 2/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var numberOne = ""
    var numberTwo = ""
    var res = ""
    var oper = ""
    var currentNumber = ""
    var operChange = false
    //inChainMode is inChainingMode
    var inChainingMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func AC(_ sender: UIButton) {
        clearAll()
    }
    
    func clearAll(){
        numberOne = ""
        numberTwo = ""
        operChange = false
        oper = ""
        currentNumber = ""
        displayLabel.text = ""
        inChainingMode = false
    }
    
    func setData(_ number: String){
        if displayLabel.text == "0"{
            displayLabel.text = ""
        }
        else{
            if !operChange{
                displayLabel.text! += number
                numberOne += number
            }
            else{
                if !inChainingMode{
                    displayLabel.text! += number
                    numberTwo += number
                }
                else{
                    displayLabel.text = ""
                    displayLabel.text! += number
                    numberTwo += number
                }
            }
        }
    }
    
    func calTemp(_ oper:String)->String {
        if numberOne != "" && numberTwo != ""{
            if oper == "+"{
                numberOne = String(Double(numberOne)! + Double(numberTwo)!)
                currentNumber = numberTwo
                numberTwo = ""
                return String(numberOne)
            }
            if oper == "-"{
                numberOne = String(Double(numberOne)! - Double(numberTwo)!)
                currentNumber = numberTwo
                numberTwo = ""
                return String(numberOne)
            }
            if oper == "*"{
                numberOne = String(Double(numberOne)! * Double(numberTwo)!)
                currentNumber = numberTwo
                numberTwo = ""
                return String(numberOne)
            }
            if oper == "/"{
                numberOne = String(Double(numberOne)! / Double(numberTwo)!)
                currentNumber = numberTwo
                numberTwo = ""
                return String(numberOne)
            }
            if oper == "%" {
                let s1 = Double(numberOne)!
                let s2 = Double(numberTwo)!
                var r = s1.remainder(dividingBy: s2)
                numberOne = String(r)
                currentNumber = numberTwo
                numberTwo = ""
                return String(numberOne)
            }
        }
        return ""
    }
    
    func resFormatter(_ res:String)->String {
        let value = Double(res)!
        var resStr = String(round(value * 100000) / 100000.0)
        if resStr.contains(".0"){
            resStr.removeSubrange(resStr.index(resStr.endIndex, offsetBy: -2)..<resStr.endIndex)
        }
        return resStr
    }
    
    @IBAction func C(_ sender: UIButton) {
        numberTwo = ""
        displayLabel.text = ""
    }
    
    @IBAction func PlusorMinus(_ sender: UIButton) {
        if numberOne == ""{
            displayLabel.text = "-" + displayLabel.text!
            numberOne = "\(displayLabel.text!)"
        }
        else{
            displayLabel.text = "-" + displayLabel.text!
            numberTwo = "\(displayLabel.text!)"
        }
    }
    
    @IBAction func divide(_ sender: UIButton) {
        let temp = calTemp(oper)
        oper = "/"
        displayLabel.text = (temp != "") ? resFormatter(temp) : ""
        if temp != "" {
            // inChainingMode = true
            if numberTwo != ""{
                inChainingMode = true
                if operChange {
                    res = String(Double(temp)! / Double(numberTwo)!)
                    print(res)
                    if res == "inf"{
                        displayLabel.text! = "Error"
                    }
                    else{
                        displayLabel.text! = resFormatter(res)
                    }
                }
            }
        }
        operChange = true
    }
    
    @IBAction func multiplication(_ sender: UIButton) {
        let temp = calTemp(oper)
        print("temp is \(temp)")
        oper = "*"
        currentNumber=""
        displayLabel.text = (temp != "") ? resFormatter(temp) : ""
        operChange = true
    }
    
    @IBAction func minus(_ sender: UIButton) {
        if(numberOne == ""){
           numberOne = "0"
        }
        let temp = calTemp(oper)
        print("temp is \(temp)")
        oper = "-"
        currentNumber=""
        displayLabel.text = (temp != "") ? resFormatter(temp) : ""
        operChange = true
    }
    
    @IBAction func plus(_ sender: UIButton) {
        let temp = calTemp(oper)
        print("temp is \(temp)")
        oper = "+"
        currentNumber=""
        displayLabel.text = (temp != "") ? resFormatter(temp) : ""
        operChange = true
    }
    
    @IBAction func equals(_ sender: UIButton) {
        var res = ""
        switch oper {
            case "+":
            if currentNumber != "" {
                res = String(Double(numberOne)! + Double(currentNumber)!)
                displayLabel.text = resFormatter(res)
                numberTwo = currentNumber
            }
            else{
                res = String(Double(numberOne)! + Double(numberTwo)!)
                displayLabel.text = resFormatter(res)
            }
            numberOne = res
            break
            case "*":
            if currentNumber != "" {
                res = String(Double(numberOne)! * Double(currentNumber)!)
                displayLabel.text = resFormatter(res)
            }
            else{
                res = String(Double(numberOne)! * Double(numberTwo)!)
                displayLabel.text = resFormatter(res)
            }
            numberOne = res
            break
            case "-":
            if currentNumber != "" {
                res = String(Double(numberOne)! - Double(currentNumber)!)
                displayLabel.text = resFormatter(res)
            }
            else {
                res = String(Double(numberOne)! - Double(numberTwo)!)
                displayLabel.text = resFormatter(res)
            }
            numberOne = res
            break
            case "/":
            if displayLabel.text == "Error"{
                clearAll()
            }
            else {
                if currentNumber != "" {
                    res = String(Double(numberOne)! / Double(currentNumber)!)
                    if res == "inf"{
                        displayLabel.text! = "Error"
                        return
                    }
                    else {
                        displayLabel.text = resFormatter(res)
                    }
                }
                else {
                    res = String(Double(numberOne)! / Double(numberTwo)!)
                    if res == "inf"{
                        displayLabel.text! = "Error"
                        return
                    }
                    else {
                        displayLabel.text = resFormatter(res)
                    }
                }
                numberOne = res
            }
            break
            case "%":
            if currentNumber != "" {
                displayLabel.text = resFormatter(res)
                let s1 = Double(numberOne)!
                let s2 = Double(currentNumber)!
                var r = s1.remainder(dividingBy: s2)
                res = String(r)
                numberTwo = currentNumber
            }
            else {
                let s1 = Double(numberOne)!
                let s2 = Double(numberTwo)!
                var r = s1.remainder(dividingBy: s2)
                res = String(r)
                displayLabel.text = resFormatter(res)
            }
            numberOne = res
            break
        default:
            print("IOS")
        }
    }
    
    @IBAction func reminder(_ sender: UIButton) {
        let temp = calTemp(oper)
        print("temp is \(temp)")
        oper = "%"
        currentNumber=""
        displayLabel.text = (temp != "") ? resFormatter(temp) : ""
        operChange = true
    }
    
    @IBAction func dot(_ sender: UIButton) {
        setData(".")
    }
    
    @IBAction func zero(_ sender: UIButton) {
        setData("0")
    }
    
    @IBAction func one(_ sender: UIButton) {
        setData("1")
    }
    
    @IBAction func two(_ sender: UIButton) {
        setData("2")
    }
    
    @IBAction func three(_ sender: UIButton) {
        setData("3")
    }
    
    @IBAction func four(_ sender: UIButton) {
        setData("4")
    }
    
    @IBAction func five(_ sender: UIButton) {
        setData("5")
    }
    
    @IBAction func six(_ sender: UIButton) {
        setData("6")
    }
    
    @IBAction func seven(_ sender: UIButton) {
        setData("7")
    }
    
    @IBAction func eight(_ sender: UIButton) {
        setData("8")
    }
    
    @IBAction func nine(_ sender: UIButton) {
        setData("9")
    }
    
}


