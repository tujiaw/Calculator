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
    var sumInMemory: Double = 0
    var factorSoFar: Double = 0
    var pendingAdditiveOperator = ""
    var pendingMultiplicativeOperator = ""
    var waitingForOperand = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func digitClicked(sender: UIButton) {
    }

    @IBAction func changeSignClicked() {
    }
    
    @IBAction func backspaceClicked() {
    }
    
    @IBAction func clear() {
    }
    
    @IBAction func clearAll() {
    }
    
    @IBAction func clearMemory() {
    }
    
    @IBAction func readMemory() {
    }
    
    @IBAction func setMemory() {
    }
    
    @IBAction func addToMemory() {
    }
    
}

