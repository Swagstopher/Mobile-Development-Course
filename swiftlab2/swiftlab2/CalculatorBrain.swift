//
//  CalculatorBrain.swift
//  swiftlab2
//
//  Created by Chris Navy on 11/12/16.
//  Copyright © 2016 Chris Navy. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    private var memory  = 0.0
    private var holding = 0.0
    private var operand = ""
    
    
    
    func unaryOperation(argument: String, operation: String) {
        
        switch operation {
        case "sqrt":
            let sqaureroot = sqrt(Double(argument)!)
            memory = sqaureroot
            break
        case "cos":
            memory = cos(Double(argument)!)
            break
        default:
            break
        }
        
        
    }
    
    func binaryOperation(argument: String, operation: String) {
        switch operation {
        case "+":
            memory = Double(argument)! + memory
            break
        case "-":
            memory = Double(argument)! - memory
            break
        case "X":
            memory = Double(argument)! * memory
            break
        case "/":
            memory = Double(argument)! / memory
            break
        default:
            break
        }
    }
    
    func equals() -> Double {
        return memory
    }
    
    func clear() {
        memory = 0.0
        holding = 0.0
    }
    
}
