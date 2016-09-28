//
//  ViewController.swift
//  GoFramework
//
//  Created by Ondrej Rafaj on 27/09/2016.
//  Copyright © 2016 Ondrej Rafaj. All rights reserved.
//

import UIKit


open class GoViewController: UIViewController {
    
    
    // MARK: Layout
    
    open func layoutElements() {
        
    }
    
    // MARK: Configuration
    
    open func configure() {
        
    }
    
    // MARK: Creating elements
    
    open func configureElements() {
        
    }
    
    // MARK: View lifecycle
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureElements()
        self.layoutElements()
    }
    
    // MARK: Initialization
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.configure()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: Memory managemnet
    
    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}