//
//  Calculator.swift
//  swiftlab2
//
//  Created by Chris Navy on 10/7/16.
//  Copyright © 2016 Chris Navy. All rights reserved.
//

import Foundation

class Calculator {
    
    //buffer for holding numbers and operations
    var buffer = [String]()
    
    //stack for current input
    var stack = [String]()
    
    //holds numbers
    
    
    func pushInput(value: String){
        stack.append(value)
    }
    
    func setOperation(op: String){
        operation = op
    }
    
    //get input
    
    func getCurrentInput() -> String{
        return "1"
    }
    
    
    
    //Binary Operations
    var third: Double
    var first: Double
    var second: Double
    
    
    //Unary Operations
    
    var operation: String?
    
    init(){
    third = 0
    first = 0
    second = 0
        
    }
    
    //Clears everything
    func clear(){
        
    }
    
    
    func unaryOperation(Operand: Double) -> Double{
        
        if(operation == "cosine"){
            return Operand
        } else if(operation == "squareroot"){
            return Operand
        }else{
            return 0
        }
        
        
    }
    
    
    
    func binaryOperation(firstElement: Double, secondElement: Double) -> Double{

        if(operation == "+"){
            
            return firstElement
            
        } else if(operation == "-"){
            return firstElement
        } else if(operation == "*"){
            return firstElement
        } else if(operation == "/"){
            return firstElement
        } else{
            return 0
        }
    
    }
    
    
    
    
}
