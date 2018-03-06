//
//  ViewController.swift
//  swiftlab2
//
//  Created by Chris Navy on 10/7/16.
//  Copyright © 2016 Chris Navy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    private var brain = CalculatorBrain()
    private var typing = false
    
    
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func numberButton(_ sender: UIButton) {
        let temp = sender.currentTitle
        let currentNumber = display.text
        
        if(typing == false){
            display.text = ""
        } else if(typing == true){
        }
        
        
        display.text = currentNumber! + temp!
        typing = true
    }
    
    @IBAction func piButton(_ sender: UIButton) {
        display.text = "π"
    }
    
    @IBAction func binaryOperation(_ sender: UIButton) {
        if(typing == true){
            var perform = brain.binaryOperation(argument: display.text!, operation: sender.currentTitle!)
            display.text = ""
        }
    }
    
    @IBAction func unaryOperation(_ sender: UIButton) {

        if(typing == true){
        var perform = brain.unaryOperation(argument: display.text!, operation: sender.currentTitle!)
        display.text = ""
        }
        
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        
        var temp = String(brain.equals())
        
        display.text = temp
        typing = false
    }
    
    
    @IBAction func clearButton(_ sender: UIButton) {
        display.text = ""
        brain.clear()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

