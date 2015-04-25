//
//  ViewController.swift
//  Calculator
//
//  Created by tutujiaw on 15/4/25.
//  Copyright (c) 2015年 tutujiaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var sumInMemory: Double = 0.0
    var sumSoFar: Double = 0.0
    var factorSoFar: Double = 0.0
    var pendingAdditiveOperator = ""
    var pendingMultiplicativeOperator = ""
    var waitingForOperand = true
    
    var displayValue: Double {
        set {
            display.text = "\(newValue)"
        }
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func calculate(rightOperand: Double, pendingOperator: String) -> Bool {
        var result = false
        switch pendingOperator {
            case "+":
            sumSoFar += rightOperand
            result = true
            case "-":
            sumSoFar -= rightOperand
            result = true
            case "*":
            factorSoFar *= rightOperand
            result = true
            case "/":
            if rightOperand != 0.0 {
                factorSoFar /= rightOperand
                result = true
            }
        default:
            break
        }
        return result
     }
    
    func abortOperation() {
        clearAll()
        display.text = "####"
    }
    
    @IBAction func digitClicked(sender: UIButton) {
        let digitValue = sender.currentTitle?.toInt()
        if display.text!.toInt() == 0 && digitValue == 0 {
            return
        }
        
        if waitingForOperand {
            display.text = ""
            waitingForOperand = false
        }
        display.text = display.text! + sender.currentTitle!
    }

    @IBAction func changeSignClicked() {
    }
    
    @IBAction func backspaceClicked() {
    }
    
    @IBAction func clear() {
    }
    
    @IBAction func clearAll() {
        sumSoFar = 0.0
        factorSoFar = 0.0
        pendingAdditiveOperator = ""
        pendingMultiplicativeOperator = ""
        displayValue = 0.0
        waitingForOperand = true
    }
    
    @IBAction func clearMemory() {
        sumInMemory = 0.0
    }
    
    @IBAction func readMemory() {
        displayValue = sumInMemory
        waitingForOperand = true
    }
    
    @IBAction func setMemory() {
        equalClicked()
        sumInMemory = displayValue
    }
    
    @IBAction func addToMemory() {
        equalClicked()
        sumInMemory += displayValue
    }
    
    @IBAction func multiplicativeOperatorClicked(sender: UIButton) {
    }
    
    @IBAction func additiveOperatorClicked(sender: UIButton) {
        let clickedOperator = sender.currentTitle!
        var operand = displayValue
        if !pendingMultiplicativeOperator.isEmpty {
            if calculate(operand, pendingOperator: pendingMultiplicativeOperator) {
                
            }
        }
    }
    
    @IBAction func unaryOperatorClicked(sender: UIButton) {
    }
    
    @IBAction func equalClicked() {
    }
}

