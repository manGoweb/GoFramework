//
//  String+Go.swift
//  GoFramework
//
//  Created by Martin Vytrhlík on 11/10/2016.
//  Copyright © 2016 Ondrej Rafaj. All rights reserved.
//

import Foundation


public extension String {
    
    public var go: GoString {
        get {
            return GoString(string: self)
        }
    }
}

public struct GoString {
    
    private var string: String
    
    init(string: String) {
        self.string = string
    }
    
    public var localized: String {
        return NSLocalizedString(string, comment: "")
    }
    
}
