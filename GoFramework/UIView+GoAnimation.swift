//
//  UIView+GoAnimation.swift
//  GoFramework
//
//  Created by Ondrej Rafaj on 28/09/2016.
//  Copyright © 2016 Ondrej Rafaj. All rights reserved.
//

import UIKit


public extension UIView {
    
    
    // MARK: Generating objects
    
    public var go: GoUIView {
        get {
            return GoUIView(object: self)
        }
    }
    
}


public struct GoUIView {
    
    private var object: UIView
    
    init(object: UIView) {
        self.object = object
    }
    
    
    // MARK: Animations
    
    func scaleBounce(duration: CFTimeInterval = 1) {
        UIView.animate(withDuration: (duration / 2), delay: 0, options: .allowUserInteraction, animations: {
            let t: CGAffineTransform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            self.object.transform = t
        }) { (completed) in
            UIView.animate(withDuration: ((duration / 2) / 2), delay: 0, options: .allowUserInteraction, animations: {
                let t: CGAffineTransform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                self.object.transform = t
            }) { (completed) in
                UIView.animate(withDuration: ((duration / 2) / 2), delay: 0, options: .allowUserInteraction, animations: {
                    let t: CGAffineTransform = CGAffineTransform(scaleX: 1, y: 1)
                    self.object.transform = t
                }) { (completed) in
                    
                }
            }
        }
    }
    
    func startRotation(duration: CFTimeInterval = 1, repeatCount: Float = Float.infinity, clockwise: Bool = true) {
        if self.object.layer.animation(forKey: "transform.rotation.z") != nil {
            return
        }
        let animation = CABasicAnimation(keyPath: "transform.rotation.z")
        let direction = clockwise ? 1.0 : -1.0
        animation.toValue = NSNumber(value: M_PI * 2 * direction)
        animation.duration = duration
        animation.isCumulative = true
        animation.repeatCount = repeatCount
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        self.object.layer.add(animation, forKey:"transform.rotation.z")
    }
    
    func stopRotation() {
        self.object.layer.removeAnimation(forKey: "transform.rotation.z")
    }
    
}



