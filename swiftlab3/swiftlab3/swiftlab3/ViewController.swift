//
//  ViewController.swift
//  swiftlab3
//
//  Created by Chris Navy on 10/14/16.
//  Copyright © 2016 Chris Navy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var faceView: FaceView! {
        didSet{
            faceView.addGestureRecognizer(
            //Pitch and Panning
                UIPinchGestureRecognizer(
                    target: faceView,
                    action: #selector(FaceView.changeScale(_:)
                    )))
            //Double Tap Recogizer
            let originChangeGestureRecognizer = UITapGestureRecognizer()
            
            originChangeGestureRecognizer.numberOfTapsRequired = 2
            originChangeGestureRecognizer.addTarget(faceView, action: #selector(FaceView.changeOrigin(_:))  )
            
            
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


}

