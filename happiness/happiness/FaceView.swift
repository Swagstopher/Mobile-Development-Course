//
//  FaceView.swift
//  happiness
//
//  Created by Chris Navy on 9/30/16.
//  Copyright © 2016 Chris Navy. All rights reserved.
//

import UIKit

class FaceView:UIView {
    
    var lineWidth: CGFloat = 3 {
        didSet{setNeedsDisplay()}
    }
    var color: UIColor = UIColor.blue {
        didSet {setNeedsDisplay()}
    }
    var faceCenter: CGPoint {
        return convert(center, to: superview)
    }
    var faceRadius: CGFloat {
        return min(bounds.size.width, bounds.size.height) / 2
    }
    private struct Scaling {
        static let FaceRadiusToEyeRadiusRatio: CGFloat = 10
        static let FaceRadiusToEyeOffsetRatio: CGFloat = 3
        static let FaceRadiusToEyeSeparationRatio: CGFloat = 1.5
        static let FaceRadiusToMouthWidthRatio: CGFloat = 1
        static let Face
    }
    
    
    
    override func draw(_ rect: CGRect) {
        let facePath = UIBezierPath(arcCenter: faceCenter, radius: faceRadius, startAngle: 0, endAngle: CGFloat(2*M_PI), clockwise: true)
    }
    
    
}
