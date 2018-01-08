//
//  ViewController.swift
//  CloudQL
//
//  Created by Madhu on 1/7/18.
//  Copyright © 2018 Madhu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var submitButtonOutlet: NSButtonCell!
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
        func setButtonView() {
            submitButtonOutlet.backgroundColor = NSColor.green
        }
        setScreenInitialDims()
        setButtonView()
    }
    
    
    @IBAction func submitButtonClicked(_ sender: Any) {
        print("World Peace")
        let task = Process()
        let pipe = Pipe()
        task.executableURL = URL(fileURLWithPath: "{Path to Scala executable}")
        task.arguments = ["{path to jar file}"]
        task.standardOutput = pipe
        do {
            try task.run()
        }
        catch {
           print(error)
        }
        let handle = pipe.fileHandleForReading
        let data = handle.readDataToEndOfFile()
        let printing = String (data: data, encoding: String.Encoding.utf8)
        print(printing!)
        
    }
    
}

