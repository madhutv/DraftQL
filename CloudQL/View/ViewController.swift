//
//  ViewController.swift
//  CloudQL
//
//  Created by Madhu on 1/7/18.
//  Copyright © 2018 Madhu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        buildUI()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func buildUI() {
        func setScreenInitialDims() {
            let origin = NSPoint(x: 20, y: 20)
            let size = NSSize(width: ScreenDim.sWidth, height: ScreenDim.sHeight)
            view.setFrameSize(size)
            view.setFrameOrigin(origin)
        }
        
        setScreenInitialDims()
    }

}

