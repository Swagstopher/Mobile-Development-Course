//
//  HappinessViewController.swift
//  happiness
//
//  Created by Chris Navy on 9/30/16.
//  Copyright © 2016 Chris Navy. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController {
    
    var happiness: Int = 50{
        //0 = Very Sad, 100 = Ecstatic
        
        didSet {
            happiness = min(max(happiness, 0), 100)
            
        }
        
    }
    
}


