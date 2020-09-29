//
//  MessageTool-Bridge.swift
//  ModuleDemo
//
//  Created by zph on 2020/9/29.
//  Copyright © 2020 zph. All rights reserved.
//

import UIKit
import SPToolModule
import MessageUI

class MessageTool_Bridge: NSObject {
    
    @objc public func messageTest() {
        MessageTool.messageTest()
    }
}
