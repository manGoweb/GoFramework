//
//  GoCollectionReusableView.swift
//  GoFramework
//
//  Created by Ondrej Rafaj on 11/10/2016.
//  Copyright © 2016 Ondrej Rafaj. All rights reserved.
//

import UIKit


open class GoCollectionReusableView: UICollectionReusableView {
    
    
    // MARK: Layout
    
    open func layoutElements() {
        
    }
    
    // MARK: Creating elements
    
    open func configureElements() {
        
    }
    
    // MARK: Initialization
    
    open func configure() {
        
    }
    
    convenience public init() {
        self.init(frame:CGRect.zero)
    }
    
    required override public init (frame: CGRect) {
        super.init(frame: frame)
        
        self.configure()
        self.configureElements()
        self.layoutElements()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
