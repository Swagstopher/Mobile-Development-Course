//
//  CalculatorViewController.swift
//  swiftlab4
//
//  Created by Chris Navy on 10/24/16.
//  Copyright © 2016 Chris Navy. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var currentDisplay: UILabel!
    
    
    var typedDecimal = false
    
    @IBAction func numberButton(_ sender: UIButton) {
        let number = sender.currentTitle
        let currentNumber = currentDisplay.text
        
        currentDisplay.text = currentNumber! + number!
        
        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
