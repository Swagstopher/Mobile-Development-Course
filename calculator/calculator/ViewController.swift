//
//  ViewController.swift
//  calculator
//
//  Created by Chris Navy on 9/2/16.
//  Copyright © 2016 Chris Navy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var holder = [String]()
    var rightOperand = "0"
    var leftOperand = "0"
    
    @IBOutlet weak var answer: UITextView!
    @IBOutlet weak var tots: UILabel!
    
    var operation = "0"
    var equationSide = "0"
    
 
    
    @IBAction func zero(_ sender: AnyObject) {
        holder.append("0")
        answer.text = holder.joined(separator:"")
    }
    @IBAction func one(_ sender: AnyObject) {
        holder.append("1")
        answer.text = holder.joined(separator:"")

    }
    @IBAction func two(_ sender: AnyObject) {
        holder.append("2")
        answer.text = holder.joined(separator:"")

    }
    @IBAction func three(_ sender: AnyObject) {
        holder.append("3")
        answer.text = holder.joined(separator:"")

    }
    @IBAction func four(_ sender: AnyObject) {
        holder.append("4")
        answer.text = holder.joined(separator:"")

    }
    @IBAction func five(_ sender: AnyObject) {
        holder.append("5")
        answer.text = holder.joined(separator:"")

    }
    @IBAction func six(_ sender: AnyObject) {
        holder.append("6")
        answer.text = holder.joined(separator:"")
    }
    @IBAction func seven(_ sender: AnyObject) {
        holder.append("7")
        answer.text = holder.joined(separator:"")
    }
    @IBAction func eight(_ sender: AnyObject) {
        holder.append("8")
        answer.text = holder.joined(separator:"")
    }
    @IBAction func nine(_ sender: AnyObject) {
        holder.append("9")
        answer.text = holder.joined(separator:"")
    }
    
    @IBAction func clear(_ sender: AnyObject) {
        holder.removeAll()
        leftOperand = "0"
        answer.text = ""
        tots.text = ""
    }
    
    @IBAction func oneFourth(_ sender: AnyObject) {
    }
  
    
    @IBAction func oneHalf(_ sender: AnyObject) {
    }
    @IBAction func threeFourth(_ sender: AnyObject) {
    }
    @IBAction func plus(_ sender: AnyObject) {
        operation = "+"
        leftOperand = holder.joined(separator:"")
        holder.removeAll()
    }
    @IBAction func minus(_ sender: AnyObject) {
        operation = "-"
        leftOperand = holder.joined(separator:"")
        holder.removeAll()
    }
    @IBAction func multiply(_ sender: AnyObject) {
        operation = "*"
        leftOperand = holder.joined(separator:"")
        holder.removeAll()
    }
    @IBAction func divide(_ sender: AnyObject) {
        operation = "/"
        leftOperand = holder.joined(separator:"")
        holder.removeAll()
    }
    @IBAction func percent(_ sender: AnyObject) {
    }
    @IBAction func MR(_ sender: AnyObject) {
    }
    @IBAction func MC(_ sender: AnyObject) {
    }
    @IBAction func mPlus(_ sender: AnyObject) {
    }
    @IBAction func MS(_ sender: AnyObject) {
    }
    @IBAction func equal(_ sender: AnyObject) {
        let solve = operation
        
        switch solve {
            
        case "+":
            let answer = Int(leftOperand)! + Int(holder.joined(separator:""))!
            holder.removeAll()
            tots.text = String(answer)
        case "-":
            let answer = Int(leftOperand)! - Int(holder.joined(separator:""))!
            holder.removeAll()
            tots.text = String(answer)
        case "*":
            let answer = Int(leftOperand)! * Int(holder.joined(separator:""))!
            holder.removeAll()
            tots.text = String(answer)
        case "/":
            let answer = Int(leftOperand)! / Int(holder.joined(separator:""))!
            holder.removeAll()
            tots.text = String(answer)
        default:
            print("No Operation Specified")
        
        }
        
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        tots.text = "0"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

