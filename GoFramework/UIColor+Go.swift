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
    
    public var go: GoUIColor {
        get {
            return GoUIColor(color: self)
        }
    }
    
    public static var go: GoUIColor {
        get {
            return GoUIColor()
        }
    }
    
}

public struct GoUIColor {
    
    private var color: UIColor?
    
    init(color: UIColor) {
        self.color = color
    }
    
    init() {
        
    }
    
    public var random: UIColor {
        get {
            let randomRed: CGFloat = CGFloat(drand48())
            let randomGreen: CGFloat = CGFloat(drand48())
            let randomBlue: CGFloat = CGFloat(drand48())
            return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        }
    }
    
    public func hex(_ hexString: String) -> UIColor? {
        let r, g, b, a: CGFloat
        // TODO: Make it take color code without the #
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = hexString.substring(from: start)
            
            if hexColor.characters.count >= 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    if hexColor.characters.count >= 6 {
                        a = CGFloat(hexNumber & 0x000000ff) / 255
                    }
                    else {
                        a = 1
                    }
                    
                    return UIColor.init(red: r, green: g, blue: b, alpha: a)
                }
            }
        }
        return nil
    }
    
}
