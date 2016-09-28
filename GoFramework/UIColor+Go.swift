//
//  UIColor+Go.swift
//  GoFramework
//
//  Created by Ondrej Rafaj on 27/09/2016.
//  Copyright © 2016 Ondrej Rafaj. All rights reserved.
//

import Foundation


public extension UIColor {
    
    
    // MARK: Generating colors
    
    public var go: GOColor {
        get {
            return GOColor(color: self)
        }
    }
    
    public static var go: GOColor {
        get {
            return GOColor()
        }
    }
    
}

public struct GOColor {
    
    private var color: UIColor?
    
    init(color: UIColor) {
        self.color = color
    }
    
    init() {
        
    }
    
    public static var random: UIColor {
        get {
            let randomRed: CGFloat = CGFloat(drand48())
            let randomGreen: CGFloat = CGFloat(drand48())
            let randomBlue: CGFloat = CGFloat(drand48())
            return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        }
    }
    
}
