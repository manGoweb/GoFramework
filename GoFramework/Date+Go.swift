//
//  Date+Go.swift
//  GoFramework
//
//  Created by Ondrej Rafaj on 28/09/2016.
//  Copyright © 2016 Ondrej Rafaj. All rights reserved.
//

import Foundation


public enum GoDateFormat: String {
    case yearFull = "YYYY"
}


public extension Date {
    
    
    // MARK: Formatting
    
    public func toString(withFormat format: String) -> String {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    public func toString(withGoFormat format: GoDateFormat) -> String {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = format.rawValue
        return formatter.string(from: self)
    }
    
}
