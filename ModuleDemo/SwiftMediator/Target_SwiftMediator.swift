//
//  Target_SwiftMediator.swift
//  ModuleDemo
//
//  Created by zph on 2020/9/22.
//  Copyright © 2020 zph. All rights reserved.
//

import UIKit

class Target_SwiftMediator: NSObject {

    @objc func Action_Extension_ViewController(_ params: [String: Any]) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("success")
        }
        
        let viewController = SwiftMediatorViewController()
        viewController.userId = params["userId"] as! String
        return viewController
    }
}
