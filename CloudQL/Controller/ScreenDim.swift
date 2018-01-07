//
//  ScreenDim.swift
//  CloudQL
//
//  Created by Madhu on 1/7/18.
//  Copyright © 2018 Madhu. All rights reserved.
//

import Cocoa

class ScreenDim: NSObject {

    static let screenDim = NSScreen.main?.frame
    static let sWidth: Double = Double(screenDim?.width ?? 400)
    static let sHeight: Double = Double(screenDim?.height ?? 300)
}
