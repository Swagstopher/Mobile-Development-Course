//
//  FaceView.swift
//  swiftlab3
//
//  Created by Chris Navy on 10/14/16.
//  Copyright © 2016 Chris Navy. All rights reserved.
//

import UIKit

@IBDesignable
class FaceView: UIView {

    
    @IBInspectable
    var scale: CGFloat = 0.90 { didSet { setNeedsDisplay() }}
    @IBInspectable
    var mouthCurvature: Double = 0.0
    
    private var faceRadius: CGFloat {
        return min(bounds.size.width, bounds.size.height) / 2 * scale
    }
    
    private var faceCenter: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    private struct Ratios {
        
        static let FaceRadiusToEyeOffset: CGFloat = 3
        static let FaceRadiusToEyeRadius: CGFloat = 10
        static let FaceRadiusToMouthWidth: CGFloat = 1
        static let FaceRadiusToMouthHeight: CGFloat = 3
        static let FaceRadiusToMouthOffset: CGFloat = 3
        
    }

    func changeScale(_ recognizer: UIPinchGestureRecognizer) {
        switch recognizer.state {
        case .changed,.ended:
            scale *= recognizer.scale
            recognizer.scale = 1.0
        default:
            break
            
        }
        
        
    }
    
    func changeOrigin(_ recogizer: UITapGestureRecognizer){
        //let coords = recogizer.location(in: FaceView)
        //let x = coords.x
        //let y = coords.y
        
        
    }
    
    
    private enum Eye{
        case left
        case right
    }
    
    private func pathForCircleCenteredAtPoint(midPoint: CGPoint, withRadius: CGFloat) -> UIBezierPath {
        let path = UIBezierPath(
            arcCenter: midPoint,
            radius: withRadius,
            startAngle: 0.0,
            endAngle: CGFloat(2*M_PI),
            clockwise: false)
        
        path.lineWidth = 5.0
        return path
    }
    
    private func getEyeCenter(eye: Eye) -> CGPoint {
        let eyeOffset = faceRadius / Ratios.FaceRadiusToEyeOffset
        var eyeCenter = faceCenter
        eyeCenter.y -= eyeOffset
        switch eye {
        case .left: eyeCenter.x -= eyeOffset
        case .right: eyeCenter.x += eyeOffset
        }
        return eyeCenter
    }
    
    private func pathForEye(eye: Eye) -> UIBezierPath {
        let eyeRadius = faceRadius / Ratios.FaceRadiusToEyeRadius
        let eyeCenter = getEyeCenter(eye: eye)
        return pathForCircleCenteredAtPoint(midPoint: eyeCenter, withRadius: eyeRadius)
    }
    
    private func pathForMouth() -> UIBezierPath {
        let mouthWidth = faceRadius / Ratios.FaceRadiusToMouthWidth
        let mouthHeight = faceRadius / Ratios.FaceRadiusToMouthHeight
        let mouthOffset = faceRadius / Ratios.FaceRadiusToMouthOffset
        
        let mouthRect = CGRect(x: faceCenter.x - mouthWidth/2, y: faceCenter.y + mouthOffset, width: mouthWidth, height: mouthHeight)
        
        
        let smileOffset = CGFloat(max(-1, min(mouthCurvature, 1))) * mouthRect.height
        let start = CGPoint(x: mouthRect.minX, y: mouthRect.minY)
        let end = CGPoint(x: mouthRect.maxX, y: mouthRect.minY  )
        let point1 = CGPoint(x: mouthRect.minX + mouthRect.width / 3, y: mouthRect.minY + smileOffset)
        let point2 = CGPoint(x: mouthRect.maxX - mouthRect.width / 3, y: mouthRect.minY + smileOffset)
        
        let path = UIBezierPath()
        path.move(to: start)
        path.addCurve(to: end, controlPoint1: point1, controlPoint2: point2)
        path.lineWidth = 5.0
        
        return path
    }
    
    
    override func draw(_ rect: CGRect) {
        

        UIColor.blue.set()
        pathForCircleCenteredAtPoint(midPoint: faceCenter, withRadius: faceRadius).stroke()
        pathForEye(eye: .left).stroke()
        pathForEye(eye: .right).stroke()
        pathForMouth().stroke()

    }
 

}
