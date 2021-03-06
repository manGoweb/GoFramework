//
//  NSObject+Go.swift
//  GoFramework
//
//  Created by Martin Vytrhlík on 25/10/2016.
//  Copyright © 2016 manGoweb UK Ltd. All rights reserved.
//

import Foundation

extension NSObject {
    public class var className: String {
        return NSStringFromClass(self)
    }
}
