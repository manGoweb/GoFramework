//
//  Date+Go.swift
//  GoFramework
//
//  Created by Ondrej Rafaj on 28/09/2016.
//  Copyright © 2016 manGoweb UK Ltd. All rights reserved.
//

import Foundation


public enum GoDateFormat: String {
    case yearFull = "YYYY"
}


public extension Date {
    
    
    // MARK: Generating objects
    
    public var go: GoDate {
        get {
            return GoDate(object: self)
        }
    }
    
}

public class GoDate {
    
    
    private var object: Date
    
    init(object: Date) {
        self.object = object
    }
    
    
    // MARK: Formatting
    
    public func toString(withFormat format: String) -> String {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self.object)
    }
    
    public func toString(withGoFormat format: GoDateFormat) -> String {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = format.rawValue
        return formatter.string(from: self.object)
    }
    
}
